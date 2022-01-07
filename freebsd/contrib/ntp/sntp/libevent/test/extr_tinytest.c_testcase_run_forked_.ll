; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_tinytest.c_testcase_run_forked_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_tinytest.c_testcase_run_forked_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testgroup_t = type { i8* }
%struct.testcase_t = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"opening pipe\00", align 1
@opt_verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"[forking] \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NYS\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"write outcome to pipe\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"[Lost connection!] \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"read outcome from pipe\00", align 1
@OK = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@LONGEST_TEST_NAME = common dso_local global i32 0, align 4
@MAGIC_EXITCODE = common dso_local global i64 0, align 8
@commandname = common dso_local global i8* null, align 8
@in_tinytest_main = common dso_local global i32 0, align 4
@verbosity_flag = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testgroup_t*, %struct.testcase_t*)* @testcase_run_forked_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testcase_run_forked_(%struct.testgroup_t* %0, %struct.testcase_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.testgroup_t*, align 8
  %5 = alloca %struct.testcase_t*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i8], align 1
  store %struct.testgroup_t* %0, %struct.testgroup_t** %4, align 8
  store %struct.testcase_t* %1, %struct.testcase_t** %5, align 8
  %14 = load %struct.testgroup_t*, %struct.testgroup_t** %4, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %16 = call i64 @pipe(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i64, i64* @opt_verbosity, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 (...) @fork()
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load %struct.testcase_t*, %struct.testcase_t** %5, align 8
  %34 = call i32 @testcase_run_bare_(%struct.testcase_t* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 0, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 2
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i1 [ false, %29 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.2, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0
  %52 = call i64 @write(i32 %50, i8* %51, i32 1)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %40
  %60 = call i32 @exit(i32 0) #3
  unreachable

61:                                               ; preds = %25
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %68 = call i64 @read(i32 %66, i8* %67, i32 1)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %105

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @waitpid(i32 %81, i32* %11, i32 0)
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @close(i32 %84)
  %86 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 89
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @OK, align 4
  br label %103

92:                                               ; preds = %80
  %93 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 83
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @SKIP, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @FAIL, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  br label %103

103:                                              ; preds = %101, %90
  %104 = phi i32 [ %91, %90 ], [ %102, %101 ]
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %72
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @testcase_run_bare_(%struct.testcase_t*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
