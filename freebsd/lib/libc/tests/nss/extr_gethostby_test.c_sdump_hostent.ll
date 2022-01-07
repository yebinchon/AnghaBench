; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_sdump_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_sdump_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i32, i32, i8**, i8** }

@.str = private unnamed_addr constant [9 x i8] c"%s %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" noaliases\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" (null)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d.\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" noaddrs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostent*, i8*, i64)* @sdump_hostent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdump_hostent(%struct.hostent* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.hostent*, %struct.hostent** %4, align 8
  %13 = getelementptr inbounds %struct.hostent, %struct.hostent* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.hostent*, %struct.hostent** %4, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.hostent*, %struct.hostent** %4, align 8
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %268

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load %struct.hostent*, %struct.hostent** %4, align 8
  %37 = getelementptr inbounds %struct.hostent, %struct.hostent* %36, i32 0, i32 3
  %38 = load i8**, i8*** %37, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %101

40:                                               ; preds = %31
  %41 = load %struct.hostent*, %struct.hostent** %4, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 3
  %43 = load i8**, i8*** %42, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load %struct.hostent*, %struct.hostent** %4, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 3
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %7, align 8
  br label %50

50:                                               ; preds = %78, %46
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %55, i64 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %268

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %268

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %7, align 8
  br label %50

81:                                               ; preds = %50
  br label %100

82:                                               ; preds = %40
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %83, i64 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i64, i64* %6, align 8
  %92 = trunc i64 %91 to i32
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %268

95:                                               ; preds = %82
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %6, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %95, %81
  br label %119

101:                                              ; preds = %31
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %102, i64 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i64, i64* %6, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %268

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %6, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %114, %100
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %120, i64 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i64, i64* %6, align 8
  %129 = trunc i64 %128 to i32
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %268

132:                                              ; preds = %119
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %135, %134
  store i64 %136, i64* %6, align 8
  %137 = load %struct.hostent*, %struct.hostent** %4, align 8
  %138 = getelementptr inbounds %struct.hostent, %struct.hostent* %137, i32 0, i32 4
  %139 = load i8**, i8*** %138, align 8
  %140 = icmp ne i8** %139, null
  br i1 %140, label %141, label %250

141:                                              ; preds = %132
  %142 = load %struct.hostent*, %struct.hostent** %4, align 8
  %143 = getelementptr inbounds %struct.hostent, %struct.hostent* %142, i32 0, i32 4
  %144 = load i8**, i8*** %143, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %231

147:                                              ; preds = %141
  %148 = load %struct.hostent*, %struct.hostent** %4, align 8
  %149 = getelementptr inbounds %struct.hostent, %struct.hostent* %148, i32 0, i32 4
  %150 = load i8**, i8*** %149, align 8
  store i8** %150, i8*** %7, align 8
  br label %151

151:                                              ; preds = %227, %147
  %152 = load i8**, i8*** %7, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %230

155:                                              ; preds = %151
  store i64 0, i64* %8, align 8
  br label %156

156:                                              ; preds = %200, %155
  %157 = load i64, i64* %8, align 8
  %158 = load %struct.hostent*, %struct.hostent** %4, align 8
  %159 = getelementptr inbounds %struct.hostent, %struct.hostent* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp ult i64 %157, %161
  br i1 %162, label %163, label %203

163:                                              ; preds = %156
  %164 = load i8*, i8** %5, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add i64 %166, 1
  %168 = load %struct.hostent*, %struct.hostent** %4, align 8
  %169 = getelementptr inbounds %struct.hostent, %struct.hostent* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ne i64 %167, %171
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %175 = load i8**, i8*** %7, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %164, i64 %165, i8* %174, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i8*, i8** %5, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %5, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i64, i64* %6, align 8
  %188 = trunc i64 %187 to i32
  %189 = icmp sgt i32 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %163
  br label %268

191:                                              ; preds = %163
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %6, align 8
  %195 = sub i64 %194, %193
  store i64 %195, i64* %6, align 8
  %196 = load i64, i64* %6, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  br label %268

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %8, align 8
  br label %156

203:                                              ; preds = %156
  %204 = load i8**, i8*** %7, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %226

208:                                              ; preds = %203
  %209 = load i8*, i8** %5, align 8
  %210 = load i64, i64* %6, align 8
  %211 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %209, i64 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i8*, i8** %5, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %5, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i64, i64* %6, align 8
  %218 = trunc i64 %217 to i32
  %219 = icmp sgt i32 %216, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %268

221:                                              ; preds = %208
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %6, align 8
  %225 = sub i64 %224, %223
  store i64 %225, i64* %6, align 8
  br label %226

226:                                              ; preds = %221, %203
  br label %227

227:                                              ; preds = %226
  %228 = load i8**, i8*** %7, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i32 1
  store i8** %229, i8*** %7, align 8
  br label %151

230:                                              ; preds = %151
  br label %249

231:                                              ; preds = %141
  %232 = load i8*, i8** %5, align 8
  %233 = load i64, i64* %6, align 8
  %234 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %232, i64 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i8*, i8** %5, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %5, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i64, i64* %6, align 8
  %241 = trunc i64 %240 to i32
  %242 = icmp sgt i32 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %231
  br label %268

244:                                              ; preds = %231
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %6, align 8
  %248 = sub i64 %247, %246
  store i64 %248, i64* %6, align 8
  br label %249

249:                                              ; preds = %244, %230
  br label %268

250:                                              ; preds = %132
  %251 = load i8*, i8** %5, align 8
  %252 = load i64, i64* %6, align 8
  %253 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %251, i64 %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = load i8*, i8** %5, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %5, align 8
  %258 = load i32, i32* %9, align 4
  %259 = load i64, i64* %6, align 8
  %260 = trunc i64 %259 to i32
  %261 = icmp sgt i32 %258, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %268

263:                                              ; preds = %250
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %6, align 8
  %267 = sub i64 %266, %265
  store i64 %267, i64* %6, align 8
  br label %268

268:                                              ; preds = %30, %68, %76, %94, %113, %131, %190, %198, %220, %243, %262, %263, %249
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
