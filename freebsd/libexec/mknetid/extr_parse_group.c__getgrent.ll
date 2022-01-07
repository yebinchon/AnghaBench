; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_parse_group.c__getgrent.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_parse_group.c__getgrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@_gr_fp = common dso_local global i32 0, align 4
@_gr_group = common dso_local global %struct.group zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.group* @_getgrent() #0 {
  %1 = alloca %struct.group*, align 8
  %2 = load i32, i32* @_gr_fp, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @start_gr()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store %struct.group* null, %struct.group** %1, align 8
  br label %13

8:                                                ; preds = %4, %0
  %9 = call i32 @grscan(i32 0, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store %struct.group* null, %struct.group** %1, align 8
  br label %13

12:                                               ; preds = %8
  store %struct.group* @_gr_group, %struct.group** %1, align 8
  br label %13

13:                                               ; preds = %12, %11, %7
  %14 = load %struct.group*, %struct.group** %1, align 8
  ret %struct.group* %14
}

declare dso_local i32 @start_gr(...) #1

declare dso_local i32 @grscan(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
