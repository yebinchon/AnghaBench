; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.addrinfo_test_data = type { i32 }

@hints = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@method = common dso_local global i32 0, align 4
@addrinfo = common dso_local global i32 0, align 4
@clone_addrinfo = common dso_local global i32 0, align 4
@free_addrinfo = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't access the hostlist file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"building host lists from %s\0A\00", align 1
@addrinfo_read_hostlist_func = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"can't access the snapshot file %s\0A\00", align 1
@addrinfo_read_snapshot_func = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"error reading snapshot file: %s\0A\00", align 1
@compare_addrinfo = common dso_local global i32 0, align 4
@sdump_addrinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo_test_data, align 4
  %8 = alloca %struct.addrinfo_test_data, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  br label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ATF_REQUIRE(i32 %19)
  br label %21

21:                                               ; preds = %14, %13
  %22 = call i32 @memset(%struct.TYPE_3__* @hints, i32 0, i32 4)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hints, i32 0, i32 0), align 4
  %24 = load i32, i32* @AI_CANONNAME, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hints, i32 0, i32 1), align 4
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 129, i32* @method, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* @addrinfo, align 4
  %30 = load i32, i32* @clone_addrinfo, align 4
  %31 = load i32, i32* @free_addrinfo, align 4
  %32 = call i32 @TEST_DATA_INIT(i32 %29, %struct.addrinfo_test_data* %7, i32 %30, i32 %31)
  %33 = load i32, i32* @addrinfo, align 4
  %34 = load i32, i32* @clone_addrinfo, align 4
  %35 = load i32, i32* @free_addrinfo, align 4
  %36 = call i32 @TEST_DATA_INIT(i32 %33, %struct.addrinfo_test_data* %8, i32 %34, i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @R_OK, align 4
  %39 = call i64 @access(i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @ATF_REQUIRE_MSG(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @addrinfo, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @addrinfo_read_hostlist_func, align 4
  %49 = call i32 @TEST_SNAPSHOT_FILE_READ(i32 %46, i8* %47, %struct.addrinfo_test_data* %7, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %28
  br label %112

53:                                               ; preds = %28
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @W_OK, align 4
  %59 = load i32, i32* @R_OK, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @access(i8* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @ENOENT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 129, i32* @method, align 4
  br label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  store i32 -1, i32* %10, align 4
  br label %112

71:                                               ; preds = %67
  br label %84

72:                                               ; preds = %56
  %73 = load i32, i32* @addrinfo, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @addrinfo_read_snapshot_func, align 4
  %76 = call i32 @TEST_SNAPSHOT_FILE_READ(i32 %73, i8* %74, %struct.addrinfo_test_data* %8, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i64, i64* @errno, align 8
  %81 = call i8* @strerror(i64 %80)
  %82 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %112

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* @method, align 4
  switch i32 %86, label %110 [
    i32 128, label %87
    i32 129, label %98
  ]

87:                                               ; preds = %85
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @addrinfo, align 4
  %92 = load i32, i32* @compare_addrinfo, align 4
  %93 = call i32 @DO_2PASS_TEST(i32 %91, %struct.addrinfo_test_data* %7, %struct.addrinfo_test_data* %8, i32 %92, i32* null)
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ATF_CHECK(i32 %95)
  br label %97

97:                                               ; preds = %90, %87
  br label %111

98:                                               ; preds = %85
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* @addrinfo, align 4
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* @sdump_addrinfo, align 4
  %105 = call i32 @TEST_SNAPSHOT_FILE_WRITE(i32 %102, i8* %103, %struct.addrinfo_test_data* %7, i32 %104)
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @ATF_CHECK(i32 %107)
  br label %109

109:                                              ; preds = %101, %98
  br label %111

110:                                              ; preds = %85
  br label %111

111:                                              ; preds = %110, %109, %97
  br label %112

112:                                              ; preds = %111, %79, %68, %52
  %113 = load i32, i32* @addrinfo, align 4
  %114 = call i32 @TEST_DATA_DESTROY(i32 %113, %struct.addrinfo_test_data* %8)
  %115 = load i32, i32* @addrinfo, align 4
  %116 = call i32 @TEST_DATA_DESTROY(i32 %115, %struct.addrinfo_test_data* %7)
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @free(i8* %117)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @TEST_DATA_INIT(i32, %struct.addrinfo_test_data*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_READ(i32, i8*, %struct.addrinfo_test_data*, i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @DO_2PASS_TEST(i32, %struct.addrinfo_test_data*, %struct.addrinfo_test_data*, i32, i32*) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_WRITE(i32, i8*, %struct.addrinfo_test_data*, i32) #1

declare dso_local i32 @TEST_DATA_DESTROY(i32, %struct.addrinfo_test_data*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
