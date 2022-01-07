; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fmt_scaled.c_fmt_scaled.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fmt_scaled.c_fmt_scaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NONE = common dso_local global i64 0, align 8
@scale_factors = common dso_local global i64* null, align 8
@SCALE_LENGTH = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@units = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"0B\00", align 1
@FMT_SCALED_STRSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@scale_chars = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%lld.%1lld%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmt_scaled(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* @NONE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @llabs(i64 %11) #3
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = sdiv i64 %16, 1024
  %18 = load i64*, i64** @scale_factors, align 8
  %19 = load i32, i32* @SCALE_LENGTH, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %17, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15, %2
  %26 = load i32, i32* @ERANGE, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %157

27:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %80, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SCALE_LENGTH, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = sdiv i64 %33, 1024
  %35 = load i64*, i64** @scale_factors, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %32
  %42 = load i64*, i64** @units, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %58

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = load i64*, i64** @scale_factors, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = srem i64 %51, %56
  br label %58

58:                                               ; preds = %50, %49
  %59 = phi i64 [ 0, %49 ], [ %57, %50 ]
  store i64 %59, i64* %7, align 8
  %60 = load i64*, i64** @scale_factors, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = sdiv i64 %65, %64
  store i64 %66, i64* %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp ugt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load i64*, i64** @scale_factors, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sdiv i64 %76, %75
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %69, %58
  br label %83

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %28

83:                                               ; preds = %78, %28
  %84 = load i64, i64* %7, align 8
  %85 = mul nsw i64 10, %84
  %86 = add nsw i64 %85, 512
  %87 = sdiv i64 %86, 1024
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp sge i64 %88, 10
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load i64, i64* %4, align 8
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %4, align 8
  br label %99

96:                                               ; preds = %90
  %97 = load i64, i64* %4, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %96, %93
  store i64 0, i64* %7, align 8
  br label %105

100:                                              ; preds = %83
  %101 = load i64, i64* %7, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i64 0, i64* %7, align 8
  br label %104

104:                                              ; preds = %103, %100
  br label %105

105:                                              ; preds = %104, %99
  %106 = load i64, i64* %4, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %111 = call i32 @strlcpy(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %156

112:                                              ; preds = %105
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @NONE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %4, align 8
  %118 = icmp sge i64 %117, 100
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %4, align 8
  %121 = icmp sle i64 %120, -100
  br i1 %121, label %122, label %145

122:                                              ; preds = %119, %116, %112
  %123 = load i64, i64* %7, align 8
  %124 = icmp sge i64 %123, 5
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i64, i64* %4, align 8
  %127 = icmp sge i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i64, i64* %4, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %4, align 8
  br label %134

131:                                              ; preds = %125
  %132 = load i64, i64* %4, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %4, align 8
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %138 = load i64, i64* %4, align 8
  %139 = load i32*, i32** @scale_chars, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = call i32 (i8*, i32, i8*, i64, i64, ...) @snprintf(i8* %136, i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %138, i64 %143)
  br label %155

145:                                              ; preds = %119
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i32*, i32** @scale_chars, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, i32, i8*, i64, i64, ...) @snprintf(i8* %146, i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %148, i64 %149, i32 %153)
  br label %155

155:                                              ; preds = %145, %135
  br label %156

156:                                              ; preds = %155, %108
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %25
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: nounwind readnone
declare dso_local i64 @llabs(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
