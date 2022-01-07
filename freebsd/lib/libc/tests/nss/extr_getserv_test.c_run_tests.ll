; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent_test_data = type { i32 }

@servent = common dso_local global i32 0, align 4
@clone_servent = common dso_local global i32 0, align 4
@free_servent = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"can't access the file %s\0A\00", align 1
@servent_read_snapshot_func = common dso_local global i32 0, align 4
@servent_test_getservbyname = common dso_local global i32 0, align 4
@servent_test_getservbyport = common dso_local global i32 0, align 4
@servent_test_getservent = common dso_local global i32 0, align 4
@compare_servent = common dso_local global i32 0, align 4
@sdump_servent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.servent_test_data, align 4
  %7 = alloca %struct.servent_test_data, align 4
  %8 = alloca %struct.servent_test_data, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @servent, align 4
  %11 = load i32, i32* @clone_servent, align 4
  %12 = load i32, i32* @free_servent, align 4
  %13 = call i32 @TEST_DATA_INIT(i32 %10, %struct.servent_test_data* %6, i32 %11, i32 %12)
  %14 = load i32, i32* @servent, align 4
  %15 = load i32, i32* @clone_servent, align 4
  %16 = load i32, i32* @free_servent, align 4
  %17 = call i32 @TEST_DATA_INIT(i32 %14, %struct.servent_test_data* %7, i32 %15, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @W_OK, align 4
  %23 = load i32, i32* @R_OK, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @access(i8* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 132, i32* %5, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %9, align 4
  br label %120

35:                                               ; preds = %31
  br label %45

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 132
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %120

40:                                               ; preds = %36
  %41 = load i32, i32* @servent, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @servent_read_snapshot_func, align 4
  %44 = call i32 @TEST_SNAPSHOT_FILE_READ(i32 %41, i8* %42, %struct.servent_test_data* %7, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %2
  %47 = call i32 @servent_fill_test_data(%struct.servent_test_data* %6)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %126

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %118 [
    i32 131, label %53
    i32 130, label %67
    i32 129, label %81
    i32 128, label %94
    i32 132, label %109
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @servent, align 4
  %58 = load i32, i32* @servent_test_getservbyname, align 4
  %59 = bitcast %struct.servent_test_data* %6 to i8*
  %60 = call i32 @DO_1PASS_TEST(i32 %57, %struct.servent_test_data* %6, i32 %58, i8* %59)
  store i32 %60, i32* %9, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @servent, align 4
  %63 = load i32, i32* @servent_test_getservbyname, align 4
  %64 = bitcast %struct.servent_test_data* %7 to i8*
  %65 = call i32 @DO_1PASS_TEST(i32 %62, %struct.servent_test_data* %7, i32 %63, i8* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %61, %56
  br label %119

67:                                               ; preds = %51
  %68 = load i8*, i8** %4, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @servent, align 4
  %72 = load i32, i32* @servent_test_getservbyport, align 4
  %73 = bitcast %struct.servent_test_data* %6 to i8*
  %74 = call i32 @DO_1PASS_TEST(i32 %71, %struct.servent_test_data* %6, i32 %72, i8* %73)
  store i32 %74, i32* %9, align 4
  br label %80

75:                                               ; preds = %67
  %76 = load i32, i32* @servent, align 4
  %77 = load i32, i32* @servent_test_getservbyport, align 4
  %78 = bitcast %struct.servent_test_data* %7 to i8*
  %79 = call i32 @DO_1PASS_TEST(i32 %76, %struct.servent_test_data* %7, i32 %77, i8* %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %119

81:                                               ; preds = %51
  %82 = load i8*, i8** %4, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @servent, align 4
  %86 = load i32, i32* @servent_test_getservent, align 4
  %87 = bitcast %struct.servent_test_data* %6 to i8*
  %88 = call i32 @DO_1PASS_TEST(i32 %85, %struct.servent_test_data* %6, i32 %86, i8* %87)
  store i32 %88, i32* %9, align 4
  br label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @servent, align 4
  %91 = load i32, i32* @compare_servent, align 4
  %92 = call i32 @DO_2PASS_TEST(i32 %90, %struct.servent_test_data* %6, %struct.servent_test_data* %7, i32 %91, i32* null)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %84
  br label %119

94:                                               ; preds = %51
  %95 = load i32, i32* @servent, align 4
  %96 = load i32, i32* @clone_servent, align 4
  %97 = load i32, i32* @free_servent, align 4
  %98 = call i32 @TEST_DATA_INIT(i32 %95, %struct.servent_test_data* %8, i32 %96, i32 %97)
  %99 = call i32 @servent_fill_test_data(%struct.servent_test_data* %8)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* @servent, align 4
  %104 = load i32, i32* @compare_servent, align 4
  %105 = call i32 @DO_2PASS_TEST(i32 %103, %struct.servent_test_data* %6, %struct.servent_test_data* %8, i32 %104, i32* null)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i32, i32* @servent, align 4
  %108 = call i32 @TEST_DATA_DESTROY(i32 %107, %struct.servent_test_data* %8)
  br label %119

109:                                              ; preds = %51
  %110 = load i8*, i8** %4, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @servent, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* @sdump_servent, align 4
  %116 = call i32 @TEST_SNAPSHOT_FILE_WRITE(i32 %113, i8* %114, %struct.servent_test_data* %6, i32 %115)
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %112, %109
  br label %119

118:                                              ; preds = %51
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %118, %117, %106, %93, %80, %66
  br label %120

120:                                              ; preds = %119, %39, %32
  %121 = load i32, i32* @servent, align 4
  %122 = call i32 @TEST_DATA_DESTROY(i32 %121, %struct.servent_test_data* %7)
  %123 = load i32, i32* @servent, align 4
  %124 = call i32 @TEST_DATA_DESTROY(i32 %123, %struct.servent_test_data* %6)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %50
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @TEST_DATA_INIT(i32, %struct.servent_test_data*, i32, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_READ(i32, i8*, %struct.servent_test_data*, i32) #1

declare dso_local i32 @servent_fill_test_data(%struct.servent_test_data*) #1

declare dso_local i32 @DO_1PASS_TEST(i32, %struct.servent_test_data*, i32, i8*) #1

declare dso_local i32 @DO_2PASS_TEST(i32, %struct.servent_test_data*, %struct.servent_test_data*, i32, i32*) #1

declare dso_local i32 @TEST_DATA_DESTROY(i32, %struct.servent_test_data*) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_WRITE(i32, i8*, %struct.servent_test_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
