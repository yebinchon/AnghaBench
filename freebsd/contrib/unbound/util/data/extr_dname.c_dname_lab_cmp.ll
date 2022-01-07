; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_lab_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_lab_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dname_lab_cmp(i64* %0, i32 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %7, align 8
  %29 = load i64, i64* %27, align 8
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  store i64* %32, i64** %7, align 8
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %14, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @log_assert(i32 %39)
  br label %67

41:                                               ; preds = %5
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %51, %45
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %9, align 8
  %54 = load i64, i64* %52, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 %55
  store i64* %57, i64** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %14, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @log_assert(i32 %64)
  br label %66

66:                                               ; preds = %60, %41
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %160, %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %163

73:                                               ; preds = %70
  %74 = load i64*, i64** %7, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %7, align 8
  %76 = load i64, i64* %74, align 8
  store i64 %76, i64* %12, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %9, align 8
  %79 = load i64, i64* %77, align 8
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %73
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @log_assert(i32 %91)
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 -1, i32* %16, align 4
  br label %98

97:                                               ; preds = %89
  store i32 1, i32* %16, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %15, align 4
  %100 = load i64, i64* %12, align 8
  %101 = load i64*, i64** %7, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  store i64* %102, i64** %7, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 %103
  store i64* %105, i64** %9, align 8
  br label %160

106:                                              ; preds = %73
  br label %107

107:                                              ; preds = %152, %106
  %108 = load i64, i64* %12, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %159

110:                                              ; preds = %107
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %110
  %117 = load i64*, i64** %7, align 8
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i8
  %120 = call i64 @tolower(i8 zeroext %119)
  %121 = load i64*, i64** %9, align 8
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i8
  %124 = call i64 @tolower(i8 zeroext %123)
  %125 = icmp ne i64 %120, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %116
  %127 = load i64*, i64** %7, align 8
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i8
  %130 = call i64 @tolower(i8 zeroext %129)
  %131 = load i64*, i64** %9, align 8
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i8
  %134 = call i64 @tolower(i8 zeroext %133)
  %135 = icmp slt i64 %130, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  store i32 -1, i32* %16, align 4
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %15, align 4
  %138 = load i64, i64* %12, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 %138
  store i64* %140, i64** %7, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 %141
  store i64* %143, i64** %9, align 8
  br label %159

144:                                              ; preds = %126
  store i32 1, i32* %16, align 4
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %15, align 4
  %146 = load i64, i64* %12, align 8
  %147 = load i64*, i64** %7, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 %146
  store i64* %148, i64** %7, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %149
  store i64* %151, i64** %9, align 8
  br label %159

152:                                              ; preds = %116, %110
  %153 = load i64*, i64** %7, align 8
  %154 = getelementptr inbounds i64, i64* %153, i32 1
  store i64* %154, i64** %7, align 8
  %155 = load i64*, i64** %9, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %9, align 8
  %157 = load i64, i64* %12, align 8
  %158 = add nsw i64 %157, -1
  store i64 %158, i64* %12, align 8
  br label %107

159:                                              ; preds = %144, %136, %107
  br label %160

160:                                              ; preds = %159, %98
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %14, align 4
  br label %70

163:                                              ; preds = %70
  %164 = load i32, i32* %15, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load i32*, i32** %11, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 1, i32* %6, align 4
  br label %183

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 -1, i32* %6, align 4
  br label %183

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180, %163
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %178, %173
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
