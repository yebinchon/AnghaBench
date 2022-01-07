; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_sem.c_before_start_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_sem.c_before_start_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sem = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @before_start_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @before_start_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @sem_init(i32* @sem, i32 0, i32 0)
  %5 = call i32 @SEM_REQUIRE(i32 %4)
  %6 = load i64, i64* @SIG_ERR, align 8
  %7 = load i32, i32* @SIGALRM, align 4
  %8 = load i32, i32* @sighandler, align 4
  %9 = call i64 @signal(i32 %7, i32 %8)
  %10 = icmp ne i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  %13 = call i32 @alarm_ms(i32 5)
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = call i32 @pthread_create(i32* %3, i32* null, i32 (i32*)* @threadfunc, i32* null)
  %18 = call i32 @PTHREAD_REQUIRE(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pthread_join(i32 %19, i32* null)
  %21 = call i32 @PTHREAD_REQUIRE(i32 %20)
  br label %24

22:                                               ; preds = %1
  %23 = call i32 @threadfunc(i32* null)
  br label %24

24:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @SEM_REQUIRE(i32) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @alarm_ms(i32) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32 (i32*)*, i32*) #1

declare dso_local i32 @threadfunc(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
