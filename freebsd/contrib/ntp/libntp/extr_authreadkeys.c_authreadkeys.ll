; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authreadkeys.c_authreadkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authreadkeys.c_authreadkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_4__*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"authreadkeys: file '%s': %m\00", align 1
@nerr_maxlimit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"authreadkeys: cannot change key %s\00", align 1
@NTP_MAXKEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"authreadkeys: key %s > %d reserved for Autokey\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"authreadkeys: no key type for key %d\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"authreadkeys: invalid type for key %d\00", align 1
@KEY_TYPE_MD5 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"authreadkeys: no key for key %d\00", align 1
@authreadkeys.hex = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.7 = private unnamed_addr constant [43 x i8] c"authreadkeys: invalid hex digit for key %d\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"authreadkeys: Invalid character in subnet specification for <%s/%s> in key %d\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"authreadkeys: excessive subnet mask <%s/%s> for key %d\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"authreadkeys: invalid IP address <%s> for key %d\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" (emergency break)\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"authreadkeys: rejecting file '%s' after %u error(s)%s\00", align 1
@NID_cmac = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authreadkeys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca [32 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %367

34:                                               ; preds = %1
  %35 = call i32 (...) @INIT_SSL()
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %312, %309, %169, %93, %71, %63, %56, %50, %34
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @fgets(i8* %37, i32 512, i32* %38)
  store i8* %39, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %321

41:                                               ; preds = %36
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @nerr_maxlimit, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %321

46:                                               ; preds = %41
  %47 = call i8* @nexttok(i8** %5)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %36

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @atoi(i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %36

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @NTP_MAXKEY, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @NTP_MAXKEY, align 4
  %66 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %64, i32 %65)
  br label %36

67:                                               ; preds = %59
  %68 = call i8* @nexttok(i8** %5)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %36

74:                                               ; preds = %67
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 77
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 109
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i64*, i8*, ...) @log_maybe(i64* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  store i32 0, i32* %8, align 4
  br label %89

87:                                               ; preds = %79, %74
  %88 = load i32, i32* @KEY_TYPE_MD5, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = call i8* @nexttok(i8** %5)
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %36

96:                                               ; preds = %89
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @strlen(i8* %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ule i64 %99, 20
  br i1 %100, label %101, label %123

101:                                              ; preds = %96
  %102 = load i64, i64* %11, align 8
  %103 = add i64 40, %102
  %104 = trunc i64 %103 to i32
  %105 = call %struct.TYPE_4__* @emalloc(i32 %104)
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %15, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 (i32, ...) @memcpy(i32 %119, i8* %120, i64 %121)
  br label %196

123:                                              ; preds = %96
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @min(i64 %124, i32 256)
  store i64 %125, i64* %18, align 8
  store i64 0, i64* %12, align 8
  br label %126

126:                                              ; preds = %162, %123
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %18, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %165

130:                                              ; preds = %126
  %131 = load i8*, i8** %6, align 8
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @tolower(i8 zeroext %134)
  %136 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @authreadkeys.hex, i64 0, i64 0), i32 %135)
  store i8* %136, i8** %17, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %165

140:                                              ; preds = %130
  %141 = load i8*, i8** %17, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = sub i64 %142, ptrtoint ([17 x i8]* @authreadkeys.hex to i64)
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %16, align 4
  %145 = load i64, i64* %12, align 8
  %146 = and i64 %145, 1
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load i32, i32* %16, align 4
  %150 = load i64, i64* %12, align 8
  %151 = udiv i64 %150, 2
  %152 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 4
  br label %161

155:                                              ; preds = %140
  %156 = load i32, i32* %16, align 4
  %157 = shl i32 %156, 4
  %158 = load i64, i64* %12, align 8
  %159 = udiv i64 %158, 2
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %159
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %155, %148
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %12, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %12, align 8
  br label %126

165:                                              ; preds = %139, %126
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %18, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* %7, align 4
  %171 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  br label %36

172:                                              ; preds = %165
  %173 = load i64, i64* %18, align 8
  %174 = udiv i64 %173, 2
  store i64 %174, i64* %11, align 8
  %175 = load i64, i64* %11, align 8
  %176 = add i64 40, %175
  %177 = trunc i64 %176 to i32
  %178 = call %struct.TYPE_4__* @emalloc(i32 %177)
  store %struct.TYPE_4__* %178, %struct.TYPE_4__** %15, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  store i32* null, i32** %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %11, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %194 = load i64, i64* %11, align 8
  %195 = call i32 (i32, ...) @memcpy(i32 %192, i32* %193, i64 %194)
  br label %196

196:                                              ; preds = %172, %101
  %197 = call i8* @nexttok(i8** %5)
  store i8* %197, i8** %6, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %306

200:                                              ; preds = %196
  %201 = load i8*, i8** %6, align 8
  store i8* %201, i8** %19, align 8
  br label %202

202:                                              ; preds = %304, %200
  %203 = load i8*, i8** %19, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %305

205:                                              ; preds = %202
  %206 = load i8*, i8** %19, align 8
  %207 = call i8* @strchr(i8* %206, i32 44)
  store i8* %207, i8** %20, align 8
  %208 = load i8*, i8** %20, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i8*, i8** %20, align 8
  store i8 0, i8* %211, align 1
  br label %212

212:                                              ; preds = %210, %205
  %213 = load i8*, i8** %19, align 8
  %214 = call i8* @strchr(i8* %213, i32 47)
  store i8* %214, i8** %21, align 8
  %215 = load i8*, i8** %21, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %256

217:                                              ; preds = %212
  %218 = load i8*, i8** %21, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %21, align 8
  store i8 0, i8* %218, align 1
  store i32 0, i32* %22, align 4
  %220 = load i8*, i8** %21, align 8
  store i8* %220, i8** %24, align 8
  br label %221

221:                                              ; preds = %236, %217
  %222 = load i8*, i8** %24, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %221
  %227 = load i8*, i8** %24, align 8
  %228 = load i8, i8* %227, align 1
  %229 = call i32 @isdigit(i8 zeroext %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %226
  br label %245

232:                                              ; preds = %226
  %233 = load i32, i32* %22, align 4
  %234 = icmp ugt i32 %233, 1000
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %245

236:                                              ; preds = %232
  %237 = load i32, i32* %22, align 4
  %238 = mul i32 10, %237
  %239 = load i8*, i8** %24, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %24, align 8
  %241 = load i8, i8* %239, align 1
  %242 = sext i8 %241 to i32
  %243 = sub nsw i32 %242, 48
  %244 = add i32 %238, %243
  store i32 %244, i32* %22, align 4
  br label %221

245:                                              ; preds = %235, %231, %221
  %246 = load i8*, i8** %24, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i8*, i8** %24, align 8
  %252 = load i8*, i8** %21, align 8
  %253 = load i32, i32* %7, align 4
  %254 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i8* %251, i8* %252, i32 %253)
  br label %297

255:                                              ; preds = %245
  br label %258

256:                                              ; preds = %212
  %257 = load i32, i32* @UINT_MAX, align 4
  store i32 %257, i32* %22, align 4
  br label %258

258:                                              ; preds = %256, %255
  %259 = load i8*, i8** %19, align 8
  %260 = load i32, i32* @AF_UNSPEC, align 4
  %261 = call i64 @is_ip_address(i8* %259, i32 %260, i32* %23)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %292

263:                                              ; preds = %258
  %264 = load i32, i32* %22, align 4
  %265 = load i32, i32* @UINT_MAX, align 4
  %266 = icmp ult i32 %264, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %263
  %268 = call i64 @IS_IPV4(i32* %23)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* %22, align 4
  %272 = icmp ugt i32 %271, 32
  br i1 %272, label %279, label %273

273:                                              ; preds = %270, %267
  %274 = call i64 @IS_IPV6(i32* %23)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load i32, i32* %22, align 4
  %278 = icmp ugt i32 %277, 128
  br i1 %278, label %279, label %284

279:                                              ; preds = %276, %270
  %280 = load i8*, i8** %19, align 8
  %281 = load i8*, i8** %21, align 8
  %282 = load i32, i32* %7, align 4
  %283 = call i32 (i64*, i8*, ...) @log_maybe(i64* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %280, i8* %281, i32 %282)
  br label %284

284:                                              ; preds = %279, %276, %273, %263
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 4
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %22, align 4
  %289 = call i32* @keyacc_new_push(i32* %287, i32* %23, i32 %288)
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 4
  store i32* %289, i32** %291, align 8
  br label %296

292:                                              ; preds = %258
  %293 = load i8*, i8** %19, align 8
  %294 = load i32, i32* %7, align 4
  %295 = call i32 (i64*, i8*, ...) @log_maybe(i64* %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %284
  br label %297

297:                                              ; preds = %296, %250
  %298 = load i8*, i8** %20, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i8*, i8** %20, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 1
  store i8* %302, i8** %19, align 8
  br label %304

303:                                              ; preds = %297
  store i8* null, i8** %19, align 8
  br label %304

304:                                              ; preds = %303, %300
  br label %202

305:                                              ; preds = %202
  br label %306

306:                                              ; preds = %305, %196
  %307 = load i32, i32* %8, align 4
  %308 = icmp eq i32 0, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %311 = call i32 @free_keydata(%struct.TYPE_4__* %310)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  br label %36

312:                                              ; preds = %306
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %314 = icmp ne %struct.TYPE_4__* null, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @INSIST(i32 %315)
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 3
  store %struct.TYPE_4__* %317, %struct.TYPE_4__** %319, align 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %320, %struct.TYPE_4__** %14, align 8
  br label %36

321:                                              ; preds = %45, %36
  %322 = load i32*, i32** %4, align 8
  %323 = call i32 @fclose(i32* %322)
  %324 = load i64, i64* %13, align 8
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %326, label %337

326:                                              ; preds = %321
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8** %25, align 8
  %327 = load i64, i64* %13, align 8
  %328 = load i64, i64* @nerr_maxlimit, align 8
  %329 = icmp sgt i64 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %25, align 8
  br label %331

331:                                              ; preds = %330, %326
  %332 = load i32, i32* @LOG_ERR, align 4
  %333 = load i8*, i8** %3, align 8
  %334 = load i64, i64* %13, align 8
  %335 = load i8*, i8** %25, align 8
  %336 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %332, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* %333, i64 %334, i8* %335)
  br label %367

337:                                              ; preds = %321
  %338 = call i32 (...) @auth_delkeys()
  br label %339

339:                                              ; preds = %342, %337
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %340, %struct.TYPE_4__** %15, align 8
  %341 = icmp ne %struct.TYPE_4__* null, %340
  br i1 %341, label %342, label %366

342:                                              ; preds = %339
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %344, align 8
  store %struct.TYPE_4__* %345, %struct.TYPE_4__** %14, align 8
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 4
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @MD5auth_setkey(i32 %348, i32 %351, i32 %354, i64 %357, i32* %360)
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 4
  store i32* null, i32** %363, align 8
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %365 = call i32 @free_keydata(%struct.TYPE_4__* %364)
  br label %339

366:                                              ; preds = %339
  store i32 1, i32* %2, align 4
  br label %378

367:                                              ; preds = %331, %30
  br label %368

368:                                              ; preds = %371, %367
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %369, %struct.TYPE_4__** %15, align 8
  %370 = icmp ne %struct.TYPE_4__* null, %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %368
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 3
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  store %struct.TYPE_4__* %374, %struct.TYPE_4__** %14, align 8
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %376 = call i32 @free_keydata(%struct.TYPE_4__* %375)
  br label %368

377:                                              ; preds = %368
  store i32 0, i32* %2, align 4
  br label %378

378:                                              ; preds = %377, %366
  %379 = load i32, i32* %2, align 4
  ret i32 %379
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @msyslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @INIT_SSL(...) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @nexttok(i8**) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @log_maybe(i64*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @emalloc(i32) #1

declare dso_local i32 @memcpy(i32, ...) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @tolower(i8 zeroext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i64 @is_ip_address(i8*, i32, i32*) #1

declare dso_local i64 @IS_IPV4(i32*) #1

declare dso_local i64 @IS_IPV6(i32*) #1

declare dso_local i32* @keyacc_new_push(i32*, i32*, i32) #1

declare dso_local i32 @free_keydata(%struct.TYPE_4__*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @auth_delkeys(...) #1

declare dso_local i32 @MD5auth_setkey(i32, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
