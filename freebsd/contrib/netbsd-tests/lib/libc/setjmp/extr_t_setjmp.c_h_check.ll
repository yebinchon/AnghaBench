; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/setjmp/extr_t_setjmp.c_h_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/setjmp/extr_t_setjmp.c_h_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

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
  %9 = call i32 (...) @getpid()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TEST_SETJMP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TEST_SIGSETJMP_SAVE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  store i32 0, i32* @expectsignal, align 4
  br label %30

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TEST_U_SETJMP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @TEST_SIGSETJMP_NOSAVE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i32 1, i32* @expectsignal, align 4
  br label %29

27:                                               ; preds = %22
  %28 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %26
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* @aborthandler, align 4
  %32 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %34 = call i32 @sigemptyset(i32* %33)
  %35 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @SIGABRT, align 4
  %37 = call i32 @sigaction(i32 %36, %struct.sigaction* %3, i32* null)
  %38 = icmp ne i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 @REQUIRE_ERRNO(i32 %39)
  %41 = call i32 @sigemptyset(i32* %6)
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @REQUIRE_ERRNO(i32 %43)
  %45 = load i32, i32* @SIGABRT, align 4
  %46 = call i32 @sigaddset(i32* %6, i32 %45)
  %47 = icmp ne i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = call i32 @REQUIRE_ERRNO(i32 %48)
  %50 = load i32, i32* @SIG_BLOCK, align 4
  %51 = call i32 @sigprocmask(i32 %50, i32* %6, i32* null)
  %52 = icmp ne i32 %51, -1
  %53 = zext i1 %52 to i32
  %54 = call i32 @REQUIRE_ERRNO(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @TEST_SETJMP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %30
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @setjmp(i32 %59) #4
  store i32 %60, i32* %8, align 4
  br label %76

61:                                               ; preds = %30
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @TEST_U_SETJMP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @_setjmp(i32 %66) #4
  store i32 %67, i32* %8, align 4
  br label %75

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @expectsignal, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @sigsetjmp(i32 %69, i32 %73) #4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %68, %65
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ATF_REQUIRE_MSG(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @SIGABRT, align 4
  %87 = call i32 @kill(i32 %85, i32 %86)
  %88 = load i32, i32* @expectsignal, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @ATF_REQUIRE_MSG(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 (...) @atf_tc_pass()
  br label %94

94:                                               ; preds = %79, %76
  %95 = load i32, i32* @SIG_UNBLOCK, align 4
  %96 = call i32 @sigprocmask(i32 %95, i32* %6, i32* null)
  %97 = icmp ne i32 %96, -1
  %98 = zext i1 %97 to i32
  %99 = call i32 @REQUIRE_ERRNO(i32 %98)
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @TEST_SETJMP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @longjmp(i32 %104, i32 %105) #5
  unreachable

107:                                              ; preds = %94
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @TEST_U_SETJMP, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @_longjmp(i32 %112, i32 %113) #5
  unreachable

115:                                              ; preds = %107
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @siglongjmp(i32 %116, i32 %117) #5
  unreachable
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @REQUIRE_ERRNO(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

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
