; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_t_spawnattr.c_get_different_scheduler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_t_spawnattr.c_get_different_scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@schedulers = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown current scheduler %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_different_scheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_different_scheduler() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @sched_getscheduler(i32 0)
  store i32 %3, i32* %2, align 4
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i32*, i32** @schedulers, align 8
  %7 = call i64 @__arraycount(i32* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load i32*, i32** @schedulers, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %4

21:                                               ; preds = %16, %4
  %22 = load i64, i64* %1, align 8
  %23 = load i32*, i32** @schedulers, align 8
  %24 = call i64 @__arraycount(i32* %23)
  %25 = icmp ult i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ATF_REQUIRE_MSG(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* %1, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i32*, i32** @schedulers, align 8
  %33 = call i64 @__arraycount(i32* %32)
  %34 = icmp uge i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i64 0, i64* %1, align 8
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32*, i32** @schedulers, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @sched_getscheduler(i32) #1

declare dso_local i64 @__arraycount(i32*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
