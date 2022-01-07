; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usershell_test_data = type { i32 }
%struct.usershell = type { i32* }

@usershell = common dso_local global i32 0, align 4
@clone_usershell = common dso_local global i32 0, align 4
@free_usershell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"usershell found:\0A\00", align 1
@W_OK = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"can't access the snapshot file %s\0A\00", align 1
@usershell_read_snapshot_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error reading snapshot file\0A\00", align 1
@compare_usershell = common dso_local global i32 0, align 4
@sdump_usershell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usershell_test_data, align 4
  %6 = alloca %struct.usershell_test_data, align 4
  %7 = alloca %struct.usershell, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @usershell, align 4
  %10 = load i32, i32* @clone_usershell, align 4
  %11 = load i32, i32* @free_usershell, align 4
  %12 = call i32 @TEST_DATA_INIT(i32 %9, %struct.usershell_test_data* %5, i32 %10, i32 %11)
  %13 = load i32, i32* @usershell, align 4
  %14 = load i32, i32* @clone_usershell, align 4
  %15 = load i32, i32* @free_usershell, align 4
  %16 = call i32 @TEST_DATA_INIT(i32 %13, %struct.usershell_test_data* %6, i32 %14, i32 %15)
  %17 = call i32 (...) @setusershell()
  br label %18

18:                                               ; preds = %22, %2
  %19 = call i32* (...) @getusershell()
  %20 = getelementptr inbounds %struct.usershell, %struct.usershell* %7, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = icmp ne i32* %19, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @dump_usershell(%struct.usershell* %7)
  %25 = load i32, i32* @usershell, align 4
  %26 = call i32 @TEST_DATA_APPEND(i32 %25, %struct.usershell_test_data* %5, %struct.usershell* %7)
  br label %18

27:                                               ; preds = %18
  %28 = call i32 (...) @endusershell()
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @W_OK, align 4
  %34 = load i32, i32* @R_OK, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @access(i8* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 129, i32* %4, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %8, align 4
  br label %75

46:                                               ; preds = %42
  br label %57

47:                                               ; preds = %31
  %48 = load i32, i32* @usershell, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @usershell_read_snapshot_func, align 4
  %51 = call i32 @TEST_SNAPSHOT_FILE_READ(i32 %48, i8* %49, %struct.usershell_test_data* %6, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %75

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %73 [
    i32 128, label %60
    i32 129, label %64
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @usershell, align 4
  %62 = load i32, i32* @compare_usershell, align 4
  %63 = call i32 @DO_2PASS_TEST(i32 %61, %struct.usershell_test_data* %5, %struct.usershell_test_data* %6, i32 %62, i32* null)
  store i32 %63, i32* %8, align 4
  br label %74

64:                                               ; preds = %58
  %65 = load i8*, i8** %3, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @usershell, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* @sdump_usershell, align 4
  %71 = call i32 @TEST_SNAPSHOT_FILE_WRITE(i32 %68, i8* %69, %struct.usershell_test_data* %5, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %64
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %72, %60
  br label %75

75:                                               ; preds = %74, %54, %43
  %76 = load i32, i32* @usershell, align 4
  %77 = call i32 @TEST_DATA_DESTROY(i32 %76, %struct.usershell_test_data* %6)
  %78 = load i32, i32* @usershell, align 4
  %79 = call i32 @TEST_DATA_DESTROY(i32 %78, %struct.usershell_test_data* %5)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @TEST_DATA_INIT(i32, %struct.usershell_test_data*, i32, i32) #1

declare dso_local i32 @setusershell(...) #1

declare dso_local i32* @getusershell(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_usershell(%struct.usershell*) #1

declare dso_local i32 @TEST_DATA_APPEND(i32, %struct.usershell_test_data*, %struct.usershell*) #1

declare dso_local i32 @endusershell(...) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_READ(i32, i8*, %struct.usershell_test_data*, i32) #1

declare dso_local i32 @DO_2PASS_TEST(i32, %struct.usershell_test_data*, %struct.usershell_test_data*, i32, i32*) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_WRITE(i32, i8*, %struct.usershell_test_data*, i32) #1

declare dso_local i32 @TEST_DATA_DESTROY(i32, %struct.usershell_test_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
