; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_getid.c_gi_getpwnam.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_getid.c_gi_getpwnam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@_pw_stayopen = common dso_local global i32 0, align 4
@_pw_passwd = common dso_local global %struct.passwd zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (i8*)* @gi_getpwnam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @gi_getpwnam(i8* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @pwstart()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @pwscan(i32 1, i32 0, i8* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @_pw_stayopen, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 (...) @endpwent()
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, %struct.passwd* @_pw_passwd, %struct.passwd* null
  store %struct.passwd* %19, %struct.passwd** %2, align 8
  br label %20

20:                                               ; preds = %15, %7
  %21 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %21
}

declare dso_local i32 @pwstart(...) #1

declare dso_local i32 @pwscan(i32, i32, i8*) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
