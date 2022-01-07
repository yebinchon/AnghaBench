; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_clocktime.c_clocktime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_clocktime.c_clocktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHR = common dso_local global i32 0, align 4
@HRSPERDAY = common dso_local global i32 0, align 4
@NEARTIME = common dso_local global i32 0, align 4
@CLOSETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clocktime(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [3 x i32], align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca [3 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @SECSPERMIN, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @MINSPERHR, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @HRSPERDAY, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 1
  %35 = mul nsw i32 %32, %34
  %36 = add nsw i32 %31, %35
  %37 = mul nsw i32 %28, %36
  %38 = add nsw i32 %27, %37
  %39 = mul nsw i32 %26, %38
  %40 = add nsw i32 %25, %39
  store i32 %40, i32* %22, align 4
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %8
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %22, align 4
  %48 = add nsw i32 %46, %47
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sub nsw i32 %51, %52
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp uge i32 %56, -2147483648
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, -1
  %62 = add nsw i32 %61, 1
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %44
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NEARTIME, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %17, align 8
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CLOSETIME, align 4
  %76 = icmp slt i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %9, align 4
  br label %171

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %22, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @ntp_to_year(i32 %82)
  store i32 %83, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %84

84:                                               ; preds = %130, %79
  %85 = load i32, i32* %23, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %133

87:                                               ; preds = %84
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %23, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @year_to_ntp(i32 %91)
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %22, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %112
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp uge i32 %117, -2147483648
  br i1 %118, label %119, label %129

119:                                              ; preds = %87
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, -1
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %127
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %119, %87
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %23, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %23, align 4
  br label %84

133:                                              ; preds = %84
  store i32 1, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %134

134:                                              ; preds = %150, %133
  %135 = load i32, i32* %23, align 4
  %136 = icmp slt i32 %135, 3
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* %23, align 4
  store i32 %148, i32* %24, align 4
  br label %149

149:                                              ; preds = %147, %137
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %23, align 4
  br label %134

153:                                              ; preds = %134
  %154 = load i32, i32* %24, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %17, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %16, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %24, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CLOSETIME, align 4
  %169 = icmp slt i32 %167, %168
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %153, %69
  %172 = load i32, i32* %9, align 4
  ret i32 %172
}

declare dso_local i32 @ntp_to_year(i32) #1

declare dso_local i32 @year_to_ntp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
