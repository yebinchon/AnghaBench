; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstol.c_wcstol_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstol.c_wcstol_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wcstol_l(i8* noalias %0, i8** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FIX_LOCALE(i32 %16)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %23, %4
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %9, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %11, align 1
  br label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %11, align 1
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @iswspace_l(i8 signext %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %19, label %28

28:                                               ; preds = %23
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %11, align 1
  br label %45

36:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  %43 = load i8, i8* %41, align 1
  store i8 %43, i8* %11, align 1
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %71

51:                                               ; preds = %48, %45
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 48
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 120
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 88
  br i1 %64, label %65, label %71

65:                                               ; preds = %60, %55
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %11, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %9, align 8
  store i32 16, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %60, %51, %48
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i8, i8* %11, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 48
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 8, i32 10
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %71
  store i32 0, i32* %14, align 4
  store i64 0, i64* %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 36
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  br label %206

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i64, i64* @LONG_MIN, align 8
  %92 = load i64, i64* @LONG_MAX, align 8
  %93 = add i64 %91, %92
  %94 = sub i64 0, %93
  %95 = load i64, i64* @LONG_MAX, align 8
  %96 = add i64 %94, %95
  br label %99

97:                                               ; preds = %87
  %98 = load i64, i64* @LONG_MAX, align 8
  br label %99

99:                                               ; preds = %97, %90
  %100 = phi i64 [ %96, %90 ], [ %98, %97 ]
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = urem i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %12, align 8
  %109 = udiv i64 %108, %107
  store i64 %109, i64* %12, align 8
  br label %110

110:                                              ; preds = %185, %99
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sge i32 %112, 48
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i8, i8* %11, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %116, 57
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i8, i8* %11, align 1
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, 48
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %11, align 1
  br label %152

123:                                              ; preds = %114, %110
  %124 = load i8, i8* %11, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sge i32 %125, 65
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i8, i8* %11, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 90
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = sub nsw i32 %133, 55
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %11, align 1
  br label %151

136:                                              ; preds = %127, %123
  %137 = load i8, i8* %11, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sge i32 %138, 97
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i8, i8* %11, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp sle i32 %142, 122
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i8, i8* %11, align 1
  %146 = sext i8 %145 to i32
  %147 = sub nsw i32 %146, 87
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %11, align 1
  br label %150

149:                                              ; preds = %140, %136
  br label %189

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %150, %131
  br label %152

152:                                              ; preds = %151, %118
  %153 = load i8, i8* %11, align 1
  %154 = sext i8 %153 to i32
  %155 = load i32, i32* %7, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %189

158:                                              ; preds = %152
  %159 = load i32, i32* %14, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %174, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %12, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %12, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i8, i8* %11, align 1
  %171 = sext i8 %170 to i32
  %172 = load i32, i32* %15, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169, %161, %158
  store i32 -1, i32* %14, align 4
  br label %184

175:                                              ; preds = %169, %165
  store i32 1, i32* %14, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %10, align 8
  %179 = mul i64 %178, %177
  store i64 %179, i64* %10, align 8
  %180 = load i8, i8* %11, align 1
  %181 = sext i8 %180 to i64
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %10, align 8
  br label %184

184:                                              ; preds = %175, %174
  br label %185

185:                                              ; preds = %184
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  %188 = load i8, i8* %186, align 1
  store i8 %188, i8* %11, align 1
  br label %110

189:                                              ; preds = %157, %149
  %190 = load i32, i32* %14, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i64, i64* @LONG_MIN, align 8
  br label %199

197:                                              ; preds = %192
  %198 = load i64, i64* @LONG_MAX, align 8
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i64 [ %196, %195 ], [ %198, %197 ]
  store i64 %200, i64* %10, align 8
  %201 = load i32, i32* @ERANGE, align 4
  store i32 %201, i32* @errno, align 4
  br label %216

202:                                              ; preds = %189
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %205, %86
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* @errno, align 4
  br label %215

208:                                              ; preds = %202
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i64, i64* %10, align 8
  %213 = sub i64 0, %212
  store i64 %213, i64* %10, align 8
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214, %206
  br label %216

216:                                              ; preds = %215, %199
  %217 = load i8**, i8*** %6, align 8
  %218 = icmp ne i8** %217, null
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 -1
  br label %227

225:                                              ; preds = %219
  %226 = load i8*, i8** %5, align 8
  br label %227

227:                                              ; preds = %225, %222
  %228 = phi i8* [ %224, %222 ], [ %226, %225 ]
  %229 = load i8**, i8*** %6, align 8
  store i8* %228, i8** %229, align 8
  br label %230

230:                                              ; preds = %227, %216
  %231 = load i64, i64* %10, align 8
  ret i64 %231
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @iswspace_l(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
