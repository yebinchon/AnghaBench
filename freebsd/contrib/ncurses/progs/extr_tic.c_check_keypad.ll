; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_keypad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_keypad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key_a1 = common dso_local global i32 0, align 4
@key_a3 = common dso_local global i32 0, align 4
@key_b2 = common dso_local global i32 0, align 4
@key_c1 = common dso_local global i32 0, align 4
@key_c3 = common dso_local global i32 0, align 4
@MAX_KP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"qsrpn\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" ka1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" ka3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" kb2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" kc1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" kc3\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"vt100 keypad order inconsistent: %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"vt100 keypad map incomplete:%s\00", align 1
@key_ic = common dso_local global i32 0, align 4
@key_dc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_keypad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_keypad(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %14 = load i32, i32* @key_a1, align 4
  %15 = call i64 @VALID_STRING(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %196

17:                                               ; preds = %1
  %18 = load i32, i32* @key_a3, align 4
  %19 = call i64 @VALID_STRING(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %196

21:                                               ; preds = %17
  %22 = load i32, i32* @key_b2, align 4
  %23 = call i64 @VALID_STRING(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %196

25:                                               ; preds = %21
  %26 = load i32, i32* @key_c1, align 4
  %27 = call i64 @VALID_STRING(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %196

29:                                               ; preds = %25
  %30 = load i32, i32* @key_c3, align 4
  %31 = call i64 @VALID_STRING(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %196

33:                                               ; preds = %29
  %34 = load i32, i32* @MAX_KP, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %4, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %5, align 8
  %39 = load i32, i32* @MAX_KP, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* @key_a1, align 4
  %43 = call signext i8 @keypad_final(i32 %42)
  %44 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %43, i8* %44, align 16
  %45 = load i32, i32* @key_a3, align 4
  %46 = call signext i8 @keypad_final(i32 %45)
  %47 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* @key_b2, align 4
  %49 = call signext i8 @keypad_final(i32 %48)
  %50 = getelementptr inbounds i8, i8* %38, i64 2
  store i8 %49, i8* %50, align 2
  %51 = load i32, i32* @key_c1, align 4
  %52 = call signext i8 @keypad_final(i32 %51)
  %53 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* @key_c3, align 4
  %55 = call signext i8 @keypad_final(i32 %54)
  %56 = getelementptr inbounds i8, i8* %38, i64 4
  store i8 %55, i8* %56, align 4
  %57 = getelementptr inbounds i8, i8* %38, i64 5
  store i8 0, i8* %57, align 1
  %58 = call i32 @strlen(i8* %38)
  %59 = load i32, i32* @MAX_KP, align 4
  %60 = icmp sle i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  br label %192

66:                                               ; preds = %33
  %67 = load i32, i32* @key_a1, align 4
  %68 = call i64 @keypad_index(i32 %67)
  %69 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %68, i64* %69, align 16
  %70 = load i32, i32* @key_a3, align 4
  %71 = call i64 @keypad_index(i32 %70)
  %72 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* @key_b2, align 4
  %74 = call i64 @keypad_index(i32 %73)
  %75 = getelementptr inbounds i64, i64* %41, i64 2
  store i64 %74, i64* %75, align 16
  %76 = load i32, i32* @key_c1, align 4
  %77 = call i64 @keypad_index(i32 %76)
  %78 = getelementptr inbounds i64, i64* %41, i64 3
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @key_c3, align 4
  %80 = call i64 @keypad_index(i32 %79)
  %81 = getelementptr inbounds i64, i64* %41, i64 4
  store i64 %80, i64* %81, align 16
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %94, %66
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MAX_KP, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %41, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  br label %192

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %82

97:                                               ; preds = %82
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @MAX_KP, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %41, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %41, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %106, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %98

120:                                              ; preds = %98
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @MAX_KP, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %191

125:                                              ; preds = %120
  %126 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %126, align 16
  store i32 0, i32* %8, align 4
  store i64 -1, i64* %11, align 8
  br label %127

127:                                              ; preds = %185, %125
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MAX_KP, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %127
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i64 100, i64* %12, align 8
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 5
  br i1 %134, label %135, label %159

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %41, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %41, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %41, i64 %151
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %12, align 8
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %149, %142, %135
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %132

159:                                              ; preds = %132
  %160 = load i64, i64* %12, align 8
  store i64 %160, i64* %11, align 8
  %161 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %162 = call i32 @strlen(i8* %161)
  %163 = load i32, i32* @MAX_KP, align 4
  %164 = mul nsw i32 %163, 4
  %165 = icmp slt i32 %162, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i32, i32* %10, align 4
  switch i32 %168, label %184 [
    i32 0, label %169
    i32 1, label %172
    i32 2, label %175
    i32 3, label %178
    i32 4, label %181
  ]

169:                                              ; preds = %159
  %170 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %171 = call i32 @_nc_STRCAT(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 80)
  br label %184

172:                                              ; preds = %159
  %173 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %174 = call i32 @_nc_STRCAT(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 80)
  br label %184

175:                                              ; preds = %159
  %176 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %177 = call i32 @_nc_STRCAT(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 80)
  br label %184

178:                                              ; preds = %159
  %179 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %180 = call i32 @_nc_STRCAT(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 80)
  br label %184

181:                                              ; preds = %159
  %182 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %183 = call i32 @_nc_STRCAT(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 80)
  br label %184

184:                                              ; preds = %159, %181, %178, %175, %172, %169
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %127

188:                                              ; preds = %127
  %189 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %190 = call i32 @_nc_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %188, %120
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %191, %92, %65
  %193 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %13, align 4
  switch i32 %194, label %267 [
    i32 0, label %195
    i32 1, label %266
  ]

195:                                              ; preds = %192
  br label %262

196:                                              ; preds = %29, %25, %21, %17, %1
  %197 = load i32, i32* @key_a1, align 4
  %198 = call i64 @VALID_STRING(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %216, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @key_a3, align 4
  %202 = call i64 @VALID_STRING(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %216, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @key_b2, align 4
  %206 = call i64 @VALID_STRING(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @key_c1, align 4
  %210 = call i64 @VALID_STRING(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* @key_c3, align 4
  %214 = call i64 @VALID_STRING(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %261

216:                                              ; preds = %212, %208, %204, %200, %196
  %217 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %217, align 16
  %218 = load i32, i32* @key_a1, align 4
  %219 = call i64 @keypad_index(i32 %218)
  %220 = icmp sge i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %223 = call i32 @_nc_STRCAT(i8* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 80)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32, i32* @key_a3, align 4
  %226 = call i64 @keypad_index(i32 %225)
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %230 = call i32 @_nc_STRCAT(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 80)
  br label %231

231:                                              ; preds = %228, %224
  %232 = load i32, i32* @key_b2, align 4
  %233 = call i64 @keypad_index(i32 %232)
  %234 = icmp sge i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %237 = call i32 @_nc_STRCAT(i8* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 80)
  br label %238

238:                                              ; preds = %235, %231
  %239 = load i32, i32* @key_c1, align 4
  %240 = call i64 @keypad_index(i32 %239)
  %241 = icmp sge i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %244 = call i32 @_nc_STRCAT(i8* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 80)
  br label %245

245:                                              ; preds = %242, %238
  %246 = load i32, i32* @key_c3, align 4
  %247 = call i64 @keypad_index(i32 %246)
  %248 = icmp sge i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %251 = call i32 @_nc_STRCAT(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 80)
  br label %252

252:                                              ; preds = %249, %245
  %253 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %254 = load i8, i8* %253, align 16
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %259 = call i32 @_nc_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %258)
  br label %260

260:                                              ; preds = %257, %252
  br label %261

261:                                              ; preds = %260, %212
  br label %262

262:                                              ; preds = %261, %195
  %263 = load i32, i32* @key_ic, align 4
  %264 = load i32, i32* @key_dc, align 4
  %265 = call i32 @ANDMISSING(i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %262, %192
  ret void

267:                                              ; preds = %192
  unreachable
}

declare dso_local i64 @VALID_STRING(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local signext i8 @keypad_final(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @keypad_index(i32) #1

declare dso_local i32 @_nc_STRCAT(i8*, i8*, i32) #1

declare dso_local i32 @_nc_warning(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ANDMISSING(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
