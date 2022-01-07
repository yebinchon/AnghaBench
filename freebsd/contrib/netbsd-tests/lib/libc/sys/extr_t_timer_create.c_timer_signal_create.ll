; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_timer_create.c_timer_signal_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_timer_create.c_timer_signal_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64* }
%struct.sigaction = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.sigevent = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32 }

@t = common dso_local global i64 0, align 8
@fail = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@timer_signal_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"timer fired too soon\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"timer failed to fire\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @timer_signal_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_signal_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.itimerspec, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigevent, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 0, i64* @t, align 8
  store i32 1, i32* @fail, align 4
  %9 = call i32 @memset(%struct.sigevent* %7, i32 0, i32 48)
  %10 = bitcast %struct.sigaction* %6 to %struct.sigevent*
  %11 = call i32 @memset(%struct.sigevent* %10, i32 0, i32 48)
  %12 = bitcast %struct.itimerspec* %5 to %struct.sigevent*
  %13 = call i32 @memset(%struct.sigevent* %12, i32 0, i32 48)
  %14 = load i32, i32* @SA_SIGINFO, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 6
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @timer_signal_handler, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = call i64 @sigemptyset(i32* %8)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_REQUIRE(i32 %20)
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 4
  %23 = call i64 @sigemptyset(i32* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  %27 = load i32, i32* @SIGALRM, align 4
  %28 = bitcast %struct.sigaction* %6 to %struct.sigevent*
  %29 = call i64 @sigaction(i32 %27, %struct.sigevent* %28, i32* null)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_REQUIRE(i32 %31)
  %33 = load i32, i32* @SIGALRM, align 4
  %34 = call i64 @sigaddset(i32* %8, i32 %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ATF_REQUIRE(i32 %36)
  %38 = load i32, i32* @SIG_SETMASK, align 4
  %39 = call i64 @sigprocmask(i32 %38, i32* %8, i32* null)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ATF_REQUIRE(i32 %41)
  %43 = load i32, i32* @SIGALRM, align 4
  %44 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %7, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %7, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64* @t, i64** %46, align 8
  %47 = load i32, i32* @SIGEV_SIGNAL, align 4
  %48 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %7, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @timer_create(i32 %49, %struct.sigevent* %7, i64* @t)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ATF_REQUIRE(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 5, i32 1
  %58 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* @t, align 8
  %63 = bitcast %struct.itimerspec* %5 to %struct.sigevent*
  %64 = call i64 @timer_settime(i64 %62, i32 0, %struct.sigevent* %63, i32* null)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ATF_REQUIRE(i32 %66)
  %68 = load i32, i32* @SIG_UNBLOCK, align 4
  %69 = call i64 @sigprocmask(i32 %68, i32* %8, i32* null)
  %70 = call i32 @sleep(i32 2)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %2
  %74 = load i32, i32* @fail, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  br label %85

79:                                               ; preds = %2
  %80 = load i32, i32* @fail, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i64, i64* @t, align 8
  %87 = call i64 @timer_delete(i64 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ATF_REQUIRE(i32 %89)
  ret void
}

declare dso_local i32 @memset(%struct.sigevent*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigevent*, i32*) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @timer_create(i32, %struct.sigevent*, i64*) #1

declare dso_local i64 @timer_settime(i64, i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i64 @timer_delete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
