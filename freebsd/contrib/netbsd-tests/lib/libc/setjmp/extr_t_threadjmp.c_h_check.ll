; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/setjmp/extr_t_threadjmp.c_h_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/setjmp/extr_t_threadjmp.c_h_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@myself = common dso_local global i64 0, align 8
@TEST_SETJMP = common dso_local global i32 0, align 4
@TEST_SIGSETJMP_SAVE = common dso_local global i32 0, align 4
@expectsignal = common dso_local global i32 0, align 4
@TEST_U_SETJMP = common dso_local global i32 0, align 4
@TEST_SIGSETJMP_NOSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unknown test\00", align 1
@aborthandler = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"setjmp returned wrong value\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"kill(SIGABRT) failed\00", align 1
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @h_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i64 (...) @pthread_self()
  store i64 %9, i64* @myself, align 8
  %10 = call i32 (...) @getpid()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TEST_SETJMP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @TEST_SIGSETJMP_SAVE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  store i32 0, i32* @expectsignal, align 4
  br label %31

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @TEST_U_SETJMP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @TEST_SIGSETJMP_NOSAVE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 1, i32* @expectsignal, align 4
  br label %30

28:                                               ; preds = %23
  %29 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* @aborthandler, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %35 = call i32 @sigemptyset(i32* %34)
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @SIGABRT, align 4
  %38 = call i32 @sigaction(i32 %37, %struct.sigaction* %3, i32* null)
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  %41 = call i32 @REQUIRE_ERRNO(i32 %40)
  %42 = call i32 @sigemptyset(i32* %6)
  %43 = icmp ne i32 %42, -1
  %44 = zext i1 %43 to i32
  %45 = call i32 @REQUIRE_ERRNO(i32 %44)
  %46 = load i32, i32* @SIGABRT, align 4
  %47 = call i32 @sigaddset(i32* %6, i32 %46)
  %48 = icmp ne i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 @REQUIRE_ERRNO(i32 %49)
  %51 = load i32, i32* @SIG_BLOCK, align 4
  %52 = call i32 @sigprocmask(i32 %51, i32* %6, i32* null)
  %53 = icmp ne i32 %52, -1
  %54 = zext i1 %53 to i32
  %55 = call i32 @REQUIRE_ERRNO(i32 %54)
  %56 = load i64, i64* @myself, align 8
  %57 = call i64 (...) @pthread_self()
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ATF_REQUIRE(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @TEST_SETJMP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %31
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @setjmp(i32 %65) #4
  store i32 %66, i32* %8, align 4
  br label %82

67:                                               ; preds = %31
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @TEST_U_SETJMP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @_setjmp(i32 %72) #4
  store i32 %73, i32* %8, align 4
  br label %81

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @expectsignal, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @sigsetjmp(i32 %75, i32 %79) #4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %74, %71
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load i64, i64* @myself, align 8
  %87 = call i64 (...) @pthread_self()
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ATF_REQUIRE(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ATF_REQUIRE_MSG(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SIGABRT, align 4
  %98 = call i32 @kill(i32 %96, i32 %97)
  %99 = load i32, i32* @expectsignal, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @ATF_REQUIRE_MSG(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i64, i64* @myself, align 8
  %105 = call i64 (...) @pthread_self()
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ATF_REQUIRE(i32 %107)
  %109 = call i32 (...) @atf_tc_pass()
  br label %110

110:                                              ; preds = %85, %82
  %111 = load i64, i64* @myself, align 8
  %112 = call i64 (...) @pthread_self()
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @ATF_REQUIRE(i32 %114)
  %116 = load i32, i32* @SIG_UNBLOCK, align 4
  %117 = call i32 @sigprocmask(i32 %116, i32* %6, i32* null)
  %118 = icmp ne i32 %117, -1
  %119 = zext i1 %118 to i32
  %120 = call i32 @REQUIRE_ERRNO(i32 %119)
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @TEST_SETJMP, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @longjmp(i32 %125, i32 %126) #5
  unreachable

128:                                              ; preds = %110
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @TEST_U_SETJMP, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @_longjmp(i32 %133, i32 %134) #5
  unreachable

136:                                              ; preds = %128
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @siglongjmp(i32 %137, i32 %138) #5
  unreachable
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @REQUIRE_ERRNO(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

; Function Attrs: returns_twice
declare dso_local i32 @_setjmp(i32) #2

; Function Attrs: returns_twice
declare dso_local i32 @sigsetjmp(i32, i32) #2

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @atf_tc_pass(...) #1

; Function Attrs: noreturn
declare dso_local i32 @longjmp(i32, i32) #3

; Function Attrs: noreturn
declare dso_local i32 @_longjmp(i32, i32) #3

; Function Attrs: noreturn
declare dso_local i32 @siglongjmp(i32, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
