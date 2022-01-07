; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_run_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_run_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_child = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"See stderr for details\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (i8*)*, i8*)* @run_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_child(void (i8*)* %0, i8* %1) #0 {
  %3 = alloca void (i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store void (i8*)* %0, void (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 (...) @fork()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i32 @ATF_REQUIRE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  store i32 1, i32* @in_child, align 4
  %15 = load void (i8*)*, void (i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  call void %15(i8* %16)
  %17 = call i32 @assert(i32 0)
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @waitpid(i32 %19, i32* %6, i32 0)
  %21 = icmp ne i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = call i32 @ATF_REQUIRE(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @WIFEXITED(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @WEXITSTATUS(i32 %28)
  %30 = load i64, i64* @EXIT_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %18
  %33 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
