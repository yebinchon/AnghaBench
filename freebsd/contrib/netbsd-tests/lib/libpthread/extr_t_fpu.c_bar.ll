; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_fpu.c_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_fpu.c_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@recursion_depth_lock = common dso_local global i32 0, align 4
@recursion_depth = common dso_local global i32 0, align 4
@N_RECURSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bar(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @mul3(i32 2, i32 3, i32 5)
  %6 = call i32 @mul3(i32 7, i32 11, i32 13)
  %7 = call i32 @mul3(i32 17, i32 19, i32 23)
  %8 = call i32 @mul3(i32 %5, i32 %6, i32 %7)
  %9 = sitofp i32 %8 to double
  store double %9, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = call i32 @ATF_REQUIRE_EQ(double %10, i32 223092870)
  %12 = call i32 @pthread_mutex_lock(i32* @recursion_depth_lock)
  %13 = call i32 @PTHREAD_REQUIRE(i32 %12)
  %14 = load i32, i32* @recursion_depth, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @recursion_depth, align 4
  store i32 %14, i32* %4, align 4
  %16 = call i32 @pthread_mutex_unlock(i32* @recursion_depth_lock)
  %17 = call i32 @PTHREAD_REQUIRE(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @N_RECURSE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @recurse()
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @atf_tc_pass()
  br label %25

25:                                               ; preds = %23, %21
  ret i8* null
}

declare dso_local i32 @mul3(i32, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ(double, i32) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @recurse(...) #1

declare dso_local i32 @atf_tc_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
