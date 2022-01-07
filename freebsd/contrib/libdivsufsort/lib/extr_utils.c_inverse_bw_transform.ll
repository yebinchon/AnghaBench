; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_utils.c_inverse_bw_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_utils.c_inverse_bw_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALPHABET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inverse_bw_transform(i64* %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @ALPHABET_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @ALPHABET_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %5
  %31 = load i64*, i64** %8, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 0, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %39, %36, %33, %30, %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %218

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %218

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  store i32* %55, i32** %15, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %15, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -2, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %218

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %75, %66
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @ALPHABET_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %24, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %67

78:                                               ; preds = %67
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %92, %78
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i64*, i64** %7, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %24, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %79

95:                                               ; preds = %79
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %122, %95
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @ALPHABET_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %96
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %24, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 0, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %24, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i64, i64* %27, i64 %116
  store i64 %113, i64* %117, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %107, %100
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %96

125:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %126

126:                                              ; preds = %143, %125
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = load i64*, i64** %7, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %24, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %132, i64 %141
  store i32 %131, i32* %142, align 4
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %126

146:                                              ; preds = %126
  br label %147

147:                                              ; preds = %165, %146
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %147
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32*, i32** %15, align 8
  %155 = load i64*, i64** %7, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32, i32* %24, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %154, i64 %163
  store i32 %153, i32* %164, align 4
  br label %165

165:                                              ; preds = %151
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %147

168:                                              ; preds = %147
  store i32 0, i32* %18, align 4
  br label %169

169:                                              ; preds = %183, %168
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %19, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %27, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32, i32* %24, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %24, i64 %181
  store i32 %179, i32* %182, align 4
  br label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %169

186:                                              ; preds = %169
  store i32 0, i32* %16, align 4
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %208, %186
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %211

192:                                              ; preds = %188
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %17, align 4
  %195 = call i64 @binarysearch_lower(i32* %24, i32 %193, i32 %194)
  %196 = getelementptr inbounds i64, i64* %27, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %8, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 %197, i64* %201, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %192
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %188

211:                                              ; preds = %188
  %212 = load i32*, i32** %9, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32*, i32** %15, align 8
  %216 = call i32 @free(i32* %215)
  br label %217

217:                                              ; preds = %214, %211
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %218

218:                                              ; preds = %217, %64, %53, %49
  %219 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i64) #2

declare dso_local i64 @binarysearch_lower(i32*, i32, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
