; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_getid.c_gi_getgrgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_getid.c_gi_getgrgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@_gr_stayopen = common dso_local global i32 0, align 4
@_gr_group = common dso_local global %struct.group zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.group* (i32)* @gi_getgrgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.group* @gi_getgrgid(i32 %0) #0 {
  %2 = alloca %struct.group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @grstart()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.group* null, %struct.group** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @grscan(i32 1, i32 %9, i32* null)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @_gr_stayopen, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 (...) @endgrent()
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, %struct.group* @_gr_group, %struct.group* null
  store %struct.group* %19, %struct.group** %2, align 8
  br label %20

20:                                               ; preds = %15, %7
  %21 = load %struct.group*, %struct.group** %2, align 8
  ret %struct.group* %21
}

declare dso_local i32 @grstart(...) #1

declare dso_local i32 @grscan(i32, i32, i32*) #1

declare dso_local i32 @endgrent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
