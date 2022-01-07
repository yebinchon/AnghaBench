; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoll.c_wcstoll_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoll.c_wcstoll_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wcstoll_l(i32* noalias %0, i32** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FIX_LOCALE(i32 %16)
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %23, %4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @iswspace_l(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %19, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %11, align 4
  br label %43

35:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %66

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 120
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %52
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32* %65, i32** %9, align 8
  store i32 16, i32* %7, align 4
  br label %66

66:                                               ; preds = %60, %56, %49, %46
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 48
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 8, i32 10
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %66
  store i32 0, i32* %14, align 4
  store i64 0, i64* %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 36
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  br label %186

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i64, i64* @LLONG_MIN, align 8
  %86 = load i64, i64* @LLONG_MAX, align 8
  %87 = add i64 %85, %86
  %88 = sub i64 0, %87
  %89 = load i64, i64* @LLONG_MAX, align 8
  %90 = add i64 %88, %89
  br label %93

91:                                               ; preds = %81
  %92 = load i64, i64* @LLONG_MAX, align 8
  br label %93

93:                                               ; preds = %91, %84
  %94 = phi i64 [ %90, %84 ], [ %92, %91 ]
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = urem i64 %95, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %12, align 8
  %103 = udiv i64 %102, %101
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %165, %93
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %105, 48
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = icmp sle i32 %108, 57
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %111, 48
  store i32 %112, i32* %11, align 4
  br label %134

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %114, 65
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = icmp sle i32 %117, 90
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 55
  store i32 %121, i32* %11, align 4
  br label %133

122:                                              ; preds = %116, %113
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %123, 97
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = icmp sle i32 %126, 122
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %129, 87
  store i32 %130, i32* %11, align 4
  br label %132

131:                                              ; preds = %125, %122
  br label %169

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %119
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %169

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %12, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %12, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %142, %139
  store i32 -1, i32* %14, align 4
  br label %164

155:                                              ; preds = %150, %146
  store i32 1, i32* %14, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %10, align 8
  %159 = mul i64 %158, %157
  store i64 %159, i64* %10, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %10, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %10, align 8
  br label %164

164:                                              ; preds = %155, %154
  br label %165

165:                                              ; preds = %164
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %9, align 8
  %168 = load i32, i32* %166, align 4
  store i32 %168, i32* %11, align 4
  br label %104

169:                                              ; preds = %138, %131
  %170 = load i32, i32* %14, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i64, i64* @LLONG_MIN, align 8
  br label %179

177:                                              ; preds = %172
  %178 = load i64, i64* @LLONG_MAX, align 8
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i64 [ %176, %175 ], [ %178, %177 ]
  store i64 %180, i64* %10, align 8
  %181 = load i32, i32* @ERANGE, align 4
  store i32 %181, i32* @errno, align 4
  br label %196

182:                                              ; preds = %169
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185, %80
  %187 = load i32, i32* @EINVAL, align 4
  store i32 %187, i32* @errno, align 4
  br label %195

188:                                              ; preds = %182
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i64, i64* %10, align 8
  %193 = sub i64 0, %192
  store i64 %193, i64* %10, align 8
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194, %186
  br label %196

196:                                              ; preds = %195, %179
  %197 = load i32**, i32*** %6, align 8
  %198 = icmp ne i32** %197, null
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 -1
  br label %207

205:                                              ; preds = %199
  %206 = load i32*, i32** %5, align 8
  br label %207

207:                                              ; preds = %205, %202
  %208 = phi i32* [ %204, %202 ], [ %206, %205 ]
  %209 = load i32**, i32*** %6, align 8
  store i32* %208, i32** %209, align 8
  br label %210

210:                                              ; preds = %207, %196
  %211 = load i64, i64* %10, align 8
  ret i64 %211
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @iswspace_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
