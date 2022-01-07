; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoimax.c_wcstoimax_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoimax.c_wcstoimax_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTMAX_MIN = common dso_local global i32 0, align 4
@INTMAX_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcstoimax_l(i32* noalias %0, i32** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  store i32 0, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 36
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  br label %181

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* @INTMAX_MIN, align 4
  %86 = load i32, i32* @INTMAX_MAX, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 0, %87
  %89 = load i32, i32* @INTMAX_MAX, align 4
  %90 = add nsw i32 %88, %89
  br label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @INTMAX_MAX, align 4
  br label %93

93:                                               ; preds = %91, %84
  %94 = phi i32 [ %90, %84 ], [ %92, %91 ]
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = srem i32 %95, %96
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sdiv i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %160, %93
  %102 = load i32, i32* %11, align 4
  %103 = icmp sge i32 %102, 48
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp sle i32 %105, 57
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 48
  store i32 %109, i32* %11, align 4
  br label %131

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %11, align 4
  %112 = icmp sge i32 %111, 65
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = icmp sle i32 %114, 90
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, 55
  store i32 %118, i32* %11, align 4
  br label %130

119:                                              ; preds = %113, %110
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 97
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = icmp sle i32 %123, 122
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, 87
  store i32 %127, i32* %11, align 4
  br label %129

128:                                              ; preds = %122, %119
  br label %164

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %116
  br label %131

131:                                              ; preds = %130, %107
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %164

136:                                              ; preds = %131
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %139, %136
  store i32 -1, i32* %14, align 4
  br label %159

152:                                              ; preds = %147, %143
  store i32 1, i32* %14, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %10, align 4
  %155 = mul nsw i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %152, %151
  br label %160

160:                                              ; preds = %159
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %9, align 8
  %163 = load i32, i32* %161, align 4
  store i32 %163, i32* %11, align 4
  br label %101

164:                                              ; preds = %135, %128
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @INTMAX_MIN, align 4
  br label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @INTMAX_MAX, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* @ERANGE, align 4
  store i32 %176, i32* @errno, align 4
  br label %191

177:                                              ; preds = %164
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %180, %80
  %182 = load i32, i32* @EINVAL, align 4
  store i32 %182, i32* @errno, align 4
  br label %190

183:                                              ; preds = %177
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189, %181
  br label %191

191:                                              ; preds = %190, %174
  %192 = load i32**, i32*** %6, align 8
  %193 = icmp ne i32** %192, null
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 -1
  br label %202

200:                                              ; preds = %194
  %201 = load i32*, i32** %5, align 8
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32* [ %199, %197 ], [ %201, %200 ]
  %204 = load i32**, i32*** %6, align 8
  store i32* %203, i32** %204, align 8
  br label %205

205:                                              ; preds = %202, %191
  %206 = load i32, i32* %10, align 4
  ret i32 %206
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @iswspace_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
