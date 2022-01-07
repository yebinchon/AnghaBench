; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_tinytest.c_tinytest_set_flag_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_tinytest.c_tinytest_set_flag_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testgroup_t = type { i8*, %struct.testcase_t* }
%struct.testcase_t = type { i32, i64 }

@LONGEST_TEST_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@TT_OFF_BY_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"   (Off by default)\00", align 1
@TT_SKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"  (DISABLED)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tinytest_set_flag_(%struct.testgroup_t* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.testgroup_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.testcase_t*, align 8
  store %struct.testgroup_t* %0, %struct.testgroup_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* @LONGEST_TEST_NAME, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* @LONGEST_TEST_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %25, %4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %134, %32
  %34 = load %struct.testgroup_t*, %struct.testgroup_t** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %34, i64 %36
  %38 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %137

41:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %130, %41
  %43 = load %struct.testgroup_t*, %struct.testgroup_t** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %43, i64 %45
  %47 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %46, i32 0, i32 1
  %48 = load %struct.testcase_t*, %struct.testcase_t** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %133

55:                                               ; preds = %42
  %56 = load %struct.testgroup_t*, %struct.testgroup_t** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %56, i64 %58
  %60 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %59, i32 0, i32 1
  %61 = load %struct.testcase_t*, %struct.testcase_t** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %61, i64 %63
  store %struct.testcase_t* %64, %struct.testcase_t** %15, align 8
  %65 = trunc i64 %19 to i32
  %66 = load %struct.testgroup_t*, %struct.testgroup_t** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %66, i64 %68
  %70 = getelementptr inbounds %struct.testgroup_t, %struct.testgroup_t* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.testcase_t*, %struct.testcase_t** %15, align 8
  %73 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @snprintf(i8* %21, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %71, i64 %74)
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %55
  %79 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %80 = load %struct.testcase_t*, %struct.testcase_t** %15, align 8
  %81 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @TT_OFF_BY_DEFAULT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %100

88:                                               ; preds = %78
  %89 = load %struct.testcase_t*, %struct.testcase_t** %15, align 8
  %90 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TT_SKIP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %99

97:                                               ; preds = %88
  %98 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %95
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %55
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @strncmp(i8* %21, i8* %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %129, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.testcase_t*, %struct.testcase_t** %15, align 8
  %112 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = or i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  br label %126

117:                                              ; preds = %106
  %118 = load i64, i64* %8, align 8
  %119 = xor i64 %118, -1
  %120 = load %struct.testcase_t*, %struct.testcase_t** %15, align 8
  %121 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = and i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  br label %126

126:                                              ; preds = %117, %109
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %126, %101
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %42

133:                                              ; preds = %42
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %33

137:                                              ; preds = %33
  %138 = load i32, i32* %14, align 4
  %139 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %139)
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
