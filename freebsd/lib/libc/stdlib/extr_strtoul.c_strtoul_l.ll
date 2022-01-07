; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtoul.c_strtoul_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtoul.c_strtoul_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoul_l(i8* noalias %0, i8** noalias %1, i32 %2, i32 %3) #0 {
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
  %26 = call i64 @isspace_l(i8 zeroext %24, i32 %25)
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
  br i1 %50, label %51, label %107

51:                                               ; preds = %48, %45
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 48
  br i1 %54, label %55, label %107

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
  br i1 %64, label %65, label %107

65:                                               ; preds = %60, %55
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 48
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 57
  br i1 %76, label %101, label %77

77:                                               ; preds = %71, %65
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 65
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 %87, 70
  br i1 %88, label %101, label %89

89:                                               ; preds = %83, %77
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 97
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 102
  br i1 %100, label %101, label %107

101:                                              ; preds = %95, %83, %71
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %11, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %9, align 8
  store i32 16, i32* %7, align 4
  br label %107

107:                                              ; preds = %101, %95, %89, %60, %51, %48
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 48
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 8, i32 10
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %110, %107
  store i32 0, i32* %14, align 4
  store i64 0, i64* %10, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp sgt i32 %120, 36
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %221

123:                                              ; preds = %119
  %124 = load i32, i32* @ULONG_MAX, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sdiv i32 %124, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %12, align 8
  %128 = load i32, i32* @ULONG_MAX, align 4
  %129 = load i32, i32* %7, align 4
  %130 = srem i32 %128, %129
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %206, %123
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sge i32 %133, 48
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i8, i8* %11, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 57
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i8, i8* %11, align 1
  %141 = sext i8 %140 to i32
  %142 = sub nsw i32 %141, 48
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %11, align 1
  br label %173

144:                                              ; preds = %135, %131
  %145 = load i8, i8* %11, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp sge i32 %146, 65
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i8, i8* %11, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp sle i32 %150, 90
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i8, i8* %11, align 1
  %154 = sext i8 %153 to i32
  %155 = sub nsw i32 %154, 55
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %11, align 1
  br label %172

157:                                              ; preds = %148, %144
  %158 = load i8, i8* %11, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sge i32 %159, 97
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i8, i8* %11, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sle i32 %163, 122
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i8, i8* %11, align 1
  %167 = sext i8 %166 to i32
  %168 = sub nsw i32 %167, 87
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %11, align 1
  br label %171

170:                                              ; preds = %161, %157
  br label %210

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %152
  br label %173

173:                                              ; preds = %172, %139
  %174 = load i8, i8* %11, align 1
  %175 = sext i8 %174 to i32
  %176 = load i32, i32* %7, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %210

179:                                              ; preds = %173
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %179
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %12, align 8
  %185 = icmp ugt i64 %183, %184
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* %12, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i8, i8* %11, align 1
  %192 = sext i8 %191 to i32
  %193 = load i32, i32* %15, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %190, %182, %179
  store i32 -1, i32* %14, align 4
  br label %205

196:                                              ; preds = %190, %186
  store i32 1, i32* %14, align 4
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %10, align 8
  %200 = mul i64 %199, %198
  store i64 %200, i64* %10, align 8
  %201 = load i8, i8* %11, align 1
  %202 = sext i8 %201 to i64
  %203 = load i64, i64* %10, align 8
  %204 = add i64 %203, %202
  store i64 %204, i64* %10, align 8
  br label %205

205:                                              ; preds = %196, %195
  br label %206

206:                                              ; preds = %205
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  %209 = load i8, i8* %207, align 1
  store i8 %209, i8* %11, align 1
  br label %131

210:                                              ; preds = %178, %170
  %211 = load i32, i32* %14, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* @ULONG_MAX, align 4
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %10, align 8
  %216 = load i32, i32* @ERANGE, align 4
  store i32 %216, i32* @errno, align 4
  br label %231

217:                                              ; preds = %210
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  br label %221

221:                                              ; preds = %220, %122
  %222 = load i32, i32* @EINVAL, align 4
  store i32 %222, i32* @errno, align 4
  br label %230

223:                                              ; preds = %217
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i64, i64* %10, align 8
  %228 = sub i64 0, %227
  store i64 %228, i64* %10, align 8
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %221
  br label %231

231:                                              ; preds = %230, %213
  %232 = load i8**, i8*** %6, align 8
  %233 = icmp ne i8** %232, null
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i8*, i8** %9, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 -1
  br label %242

240:                                              ; preds = %234
  %241 = load i8*, i8** %5, align 8
  br label %242

242:                                              ; preds = %240, %237
  %243 = phi i8* [ %239, %237 ], [ %241, %240 ]
  %244 = load i8**, i8*** %6, align 8
  store i8* %243, i8** %244, align 8
  br label %245

245:                                              ; preds = %242, %231
  %246 = load i64, i64* %10, align 8
  ret i64 %246
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @isspace_l(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
