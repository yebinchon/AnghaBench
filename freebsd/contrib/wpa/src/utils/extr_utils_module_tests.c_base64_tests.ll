; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_base64_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_base64_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"base64 tests\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"====\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PQ==\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"P.Q-=!=*\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"%d base64 test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @base64_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base64_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* @base64_encode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 -1, i64* %4)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @os_free(i8* %13)
  br label %15

15:                                               ; preds = %10, %0
  %16 = call i8* @base64_encode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i64* %4)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 5
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 80
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 81
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 61
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 61
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40, %34, %28, %22, %19, %15
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @os_free(i8* %56)
  %58 = call i8* @base64_encode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i64* null)
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %91

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 80
  br i1 %66, label %91, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 81
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 61
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 61
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %79, %73, %67, %61, %55
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @os_free(i8* %95)
  %97 = call i8* @base64_decode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i64* %4)
  store i8* %97, i8** %3, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @os_free(i8* %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = call i8* @base64_decode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i64* %4)
  store i8* %106, i8** %3, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @os_free(i8* %112)
  br label %114

114:                                              ; preds = %109, %105
  %115 = call i8* @base64_decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i64* %4)
  store i8* %115, i8** %3, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* %2, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %2, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @os_free(i8* %121)
  br label %123

123:                                              ; preds = %118, %114
  %124 = call i8* @base64_decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i64* %4)
  store i8* %124, i8** %3, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i64, i64* %4, align 8
  %129 = icmp ne i64 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %134, 61
  br i1 %135, label %136, label %139

136:                                              ; preds = %130, %127, %123
  %137 = load i32, i32* %2, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %136, %130
  %140 = load i8*, i8** %3, align 8
  %141 = call i32 @os_free(i8* %140)
  %142 = call i8* @base64_decode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8, i64* %4)
  store i8* %142, i8** %3, align 8
  %143 = load i8*, i8** %3, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load i64, i64* %4, align 8
  %147 = icmp ne i64 %146, 1
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %152, 61
  br i1 %153, label %154, label %157

154:                                              ; preds = %148, %145, %139
  %155 = load i32, i32* %2, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %148
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 @os_free(i8* %158)
  %160 = load i32, i32* %2, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @MSG_ERROR, align 4
  %164 = load i32, i32* %2, align 4
  %165 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  store i32 -1, i32* %1, align 4
  br label %167

166:                                              ; preds = %157
  store i32 0, i32* %1, align 4
  br label %167

167:                                              ; preds = %166, %162
  %168 = load i32, i32* %1, align 4
  ret i32 %168
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @base64_encode(i8*, i32, i64*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @base64_decode(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
