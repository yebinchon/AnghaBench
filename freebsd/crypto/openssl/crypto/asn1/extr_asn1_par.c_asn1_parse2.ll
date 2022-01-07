; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_par.c_asn1_parse2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_par.c_asn1_parse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_11__ = type { i64, i32, i8* }
%struct.TYPE_12__ = type { i64, i32, i8* }

@ASN1_PARSE_MAXDEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"BAD RECURSION DEPTH\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error in encoding\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%5ld:\00", align 1
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"d=%-2d hl=%ld l=%4ld \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"d=%-2d hl=%ld l=inf  \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"length is greater than %ld\0A\00", align 1
@V_ASN1_PRINTABLESTRING = common dso_local global i32 0, align 4
@V_ASN1_T61STRING = common dso_local global i32 0, align 4
@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@V_ASN1_VISIBLESTRING = common dso_local global i32 0, align 4
@V_ASN1_NUMERICSTRING = common dso_local global i32 0, align 4
@V_ASN1_UTF8STRING = common dso_local global i32 0, align 4
@V_ASN1_UTCTIME = common dso_local global i32 0, align 4
@V_ASN1_GENERALIZEDTIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c":BAD OBJECT\00", align 1
@V_ASN1_BOOLEAN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c":BAD BOOLEAN\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@V_ASN1_BMPSTRING = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"[HEX DUMP]:\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@V_ASN1_NEG_INTEGER = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c":BAD INTEGER\00", align 1
@V_ASN1_ENUMERATED = common dso_local global i32 0, align 4
@V_ASN1_NEG_ENUMERATED = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c":BAD ENUMERATED\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c":[\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@V_ASN1_EOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64, i32, i32, i32, i32)* @asn1_parse2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_parse2(i32* %0, i8** %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_10__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_11__*, align 8
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_12__*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %24, align 4
  store i32* null, i32** %29, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %30, align 8
  store i32 0, i32* %32, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @ASN1_PARSE_MAXDEPTH, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %7
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @BIO_puts(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %790

49:                                               ; preds = %7
  store i32 6, i32* %31, align 4
  %50 = load i8**, i8*** %10, align 8
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %18, align 8
  br label %55

55:                                               ; preds = %777, %49
  %56 = load i64, i64* %11, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %781

58:                                               ; preds = %55
  %59 = load i8*, i8** %16, align 8
  store i8* %59, i8** %19, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @ASN1_get_object(i8** %16, i64* %21, i32* %22, i32* %23, i64 %60)
  store i32 %61, i32* %27, align 4
  %62 = load i32, i32* %27, align 4
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @BIO_write(i32* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 18)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %782

70:                                               ; preds = %65
  store i32 0, i32* %24, align 4
  br label %782

71:                                               ; preds = %58
  %72 = load i8*, i8** %16, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %26, align 4
  %78 = load i32, i32* %26, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %11, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = load i8*, i8** %19, align 8
  %86 = load i8**, i8*** %10, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = add nsw i64 %84, %90
  %92 = trunc i64 %91 to i8
  %93 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %92)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  br label %782

96:                                               ; preds = %71
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %99 = or i32 %98, 1
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %13, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %21, align 8
  %108 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %104, i64 %106, i64 %107)
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %782

111:                                              ; preds = %101
  br label %122

112:                                              ; preds = %96
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %13, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i32, i32* %26, align 4
  %117 = sext i32 %116 to i64
  %118 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %115, i64 %117)
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %782

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %111
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* %13, align 4
  br label %132

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = call i32 @asn1_print_info(i32* %123, i32 %124, i32 %125, i32 %126, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  br label %782

137:                                              ; preds = %132
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %245

142:                                              ; preds = %137
  %143 = load i8*, i8** %16, align 8
  store i8* %143, i8** %33, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = load i64, i64* %21, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %17, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = call i64 @BIO_write(i32* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %149 = icmp sle i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %782

151:                                              ; preds = %142
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i32*, i32** %9, align 8
  %157 = load i64, i64* %11, align 8
  %158 = trunc i64 %157 to i8
  %159 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8 zeroext %158)
  store i32 0, i32* %24, align 4
  br label %782

160:                                              ; preds = %151
  %161 = load i32, i32* %27, align 4
  %162 = icmp eq i32 %161, 33
  br i1 %162, label %163, label %207

163:                                              ; preds = %160
  %164 = load i64, i64* %21, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %207

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %205, %166
  %168 = load i32*, i32** %9, align 8
  %169 = load i8*, i8** %18, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = ptrtoint i8* %169 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = load i8*, i8** %16, align 8
  %177 = load i8**, i8*** %10, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %176 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = add nsw i64 %175, %181
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @asn1_parse2(i32* %168, i8** %16, i64 %173, i32 %183, i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %28, align 4
  %189 = load i32, i32* %28, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %167
  store i32 0, i32* %24, align 4
  br label %782

192:                                              ; preds = %167
  %193 = load i32, i32* %28, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = load i8*, i8** %16, align 8
  %197 = load i8*, i8** %18, align 8
  %198 = icmp uge i8* %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195, %192
  %200 = load i8*, i8** %16, align 8
  %201 = load i8*, i8** %33, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  store i64 %204, i64* %21, align 8
  br label %206

205:                                              ; preds = %195
  br label %167

206:                                              ; preds = %199
  br label %244

207:                                              ; preds = %163, %160
  %208 = load i64, i64* %21, align 8
  store i64 %208, i64* %34, align 8
  br label %209

209:                                              ; preds = %235, %207
  %210 = load i8*, i8** %16, align 8
  %211 = load i8*, i8** %17, align 8
  %212 = icmp ult i8* %210, %211
  br i1 %212, label %213, label %243

213:                                              ; preds = %209
  %214 = load i8*, i8** %16, align 8
  store i8* %214, i8** %33, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = load i64, i64* %34, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = load i8*, i8** %16, align 8
  %220 = load i8**, i8*** %10, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = ptrtoint i8* %219 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = add nsw i64 %218, %224
  %226 = trunc i64 %225 to i32
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %15, align 4
  %231 = call i32 @asn1_parse2(i32* %215, i8** %16, i64 %216, i32 %226, i32 %228, i32 %229, i32 %230)
  store i32 %231, i32* %28, align 4
  %232 = load i32, i32* %28, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %213
  store i32 0, i32* %24, align 4
  br label %782

235:                                              ; preds = %213
  %236 = load i8*, i8** %16, align 8
  %237 = load i8*, i8** %33, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = load i64, i64* %34, align 8
  %242 = sub nsw i64 %241, %240
  store i64 %242, i64* %34, align 8
  br label %209

243:                                              ; preds = %209
  br label %244

244:                                              ; preds = %243, %206
  br label %777

245:                                              ; preds = %137
  %246 = load i32, i32* %23, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load i64, i64* %21, align 8
  %250 = load i8*, i8** %16, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 %249
  store i8* %251, i8** %16, align 8
  %252 = load i32*, i32** %9, align 8
  %253 = call i64 @BIO_write(i32* %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %254 = icmp sle i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %782

256:                                              ; preds = %248
  br label %776

257:                                              ; preds = %245
  store i32 0, i32* %25, align 4
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* @V_ASN1_PRINTABLESTRING, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %289, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* @V_ASN1_T61STRING, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %289, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* @V_ASN1_IA5STRING, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %289, label %269

269:                                              ; preds = %265
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* @V_ASN1_VISIBLESTRING, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %289, label %273

273:                                              ; preds = %269
  %274 = load i32, i32* %22, align 4
  %275 = load i32, i32* @V_ASN1_NUMERICSTRING, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %289, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* @V_ASN1_UTF8STRING, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* @V_ASN1_UTCTIME, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %22, align 4
  %287 = load i32, i32* @V_ASN1_GENERALIZEDTIME, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %309

289:                                              ; preds = %285, %281, %277, %273, %269, %265, %261, %257
  %290 = load i32*, i32** %9, align 8
  %291 = call i64 @BIO_write(i32* %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %292 = icmp sle i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  br label %782

294:                                              ; preds = %289
  %295 = load i64, i64* %21, align 8
  %296 = icmp sgt i64 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load i32*, i32** %9, align 8
  %299 = load i8*, i8** %16, align 8
  %300 = load i64, i64* %21, align 8
  %301 = trunc i64 %300 to i32
  %302 = call i64 @BIO_write(i32* %298, i8* %299, i32 %301)
  %303 = load i64, i64* %21, align 8
  %304 = trunc i64 %303 to i32
  %305 = sext i32 %304 to i64
  %306 = icmp ne i64 %302, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %297
  br label %782

308:                                              ; preds = %297, %294
  br label %717

309:                                              ; preds = %285
  %310 = load i32, i32* %22, align 4
  %311 = load i32, i32* @V_ASN1_OBJECT, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %337

313:                                              ; preds = %309
  %314 = load i8*, i8** %19, align 8
  store i8* %314, i8** %20, align 8
  %315 = load i64, i64* %21, align 8
  %316 = load i32, i32* %26, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %315, %317
  %319 = call i32* @d2i_ASN1_OBJECT(i32** %29, i8** %20, i64 %318)
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %330

321:                                              ; preds = %313
  %322 = load i32*, i32** %9, align 8
  %323 = call i64 @BIO_write(i32* %322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %324 = icmp sle i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %782

326:                                              ; preds = %321
  %327 = load i32*, i32** %9, align 8
  %328 = load i32*, i32** %29, align 8
  %329 = call i32 @i2a_ASN1_OBJECT(i32* %327, i32* %328)
  br label %336

330:                                              ; preds = %313
  %331 = load i32*, i32** %9, align 8
  %332 = call i64 @BIO_puts(i32* %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %333 = icmp sle i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  br label %782

335:                                              ; preds = %330
  store i32 1, i32* %32, align 4
  br label %336

336:                                              ; preds = %335, %326
  br label %716

337:                                              ; preds = %309
  %338 = load i32, i32* %22, align 4
  %339 = load i32, i32* @V_ASN1_BOOLEAN, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %360

341:                                              ; preds = %337
  %342 = load i64, i64* %21, align 8
  %343 = icmp ne i64 %342, 1
  br i1 %343, label %344, label %350

344:                                              ; preds = %341
  %345 = load i32*, i32** %9, align 8
  %346 = call i64 @BIO_puts(i32* %345, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %347 = icmp sle i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  br label %782

349:                                              ; preds = %344
  store i32 1, i32* %32, align 4
  br label %350

350:                                              ; preds = %349, %341
  %351 = load i64, i64* %21, align 8
  %352 = icmp sgt i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load i32*, i32** %9, align 8
  %355 = load i8*, i8** %16, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 0
  %357 = load i8, i8* %356, align 1
  %358 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %354, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8 zeroext %357)
  br label %359

359:                                              ; preds = %353, %350
  br label %715

360:                                              ; preds = %337
  %361 = load i32, i32* %22, align 4
  %362 = load i32, i32* @V_ASN1_BMPSTRING, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  br label %714

365:                                              ; preds = %360
  %366 = load i32, i32* %22, align 4
  %367 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %525

369:                                              ; preds = %365
  store i32 1, i32* %36, align 4
  %370 = load i8*, i8** %19, align 8
  store i8* %370, i8** %20, align 8
  %371 = load i64, i64* %21, align 8
  %372 = load i32, i32* %26, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %371, %373
  %375 = call %struct.TYPE_10__* @d2i_ASN1_OCTET_STRING(i32* null, i8** %20, i64 %374)
  store %struct.TYPE_10__* %375, %struct.TYPE_10__** %30, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %377 = icmp ne %struct.TYPE_10__* %376, null
  br i1 %377, label %378, label %522

378:                                              ; preds = %369
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %522

383:                                              ; preds = %378
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  store i8* %386, i8** %20, align 8
  store i32 0, i32* %35, align 4
  br label %387

387:                                              ; preds = %435, %383
  %388 = load i32, i32* %35, align 4
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %388, %391
  br i1 %392, label %393, label %438

393:                                              ; preds = %387
  %394 = load i8*, i8** %20, align 8
  %395 = load i32, i32* %35, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %394, i64 %396
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = icmp slt i32 %399, 32
  br i1 %400, label %401, label %425

401:                                              ; preds = %393
  %402 = load i8*, i8** %20, align 8
  %403 = load i32, i32* %35, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = zext i8 %406 to i32
  %408 = icmp ne i32 %407, 10
  br i1 %408, label %409, label %425

409:                                              ; preds = %401
  %410 = load i8*, i8** %20, align 8
  %411 = load i32, i32* %35, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %410, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = icmp ne i32 %415, 13
  br i1 %416, label %417, label %425

417:                                              ; preds = %409
  %418 = load i8*, i8** %20, align 8
  %419 = load i32, i32* %35, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %418, i64 %420
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = icmp ne i32 %423, 9
  br i1 %424, label %433, label %425

425:                                              ; preds = %417, %409, %401, %393
  %426 = load i8*, i8** %20, align 8
  %427 = load i32, i32* %35, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %426, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = zext i8 %430 to i32
  %432 = icmp sgt i32 %431, 126
  br i1 %432, label %433, label %434

433:                                              ; preds = %425, %417
  store i32 0, i32* %36, align 4
  br label %438

434:                                              ; preds = %425
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %35, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %35, align 4
  br label %387

438:                                              ; preds = %433, %387
  %439 = load i32, i32* %36, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %456

441:                                              ; preds = %438
  %442 = load i32*, i32** %9, align 8
  %443 = call i64 @BIO_write(i32* %442, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %444 = icmp sle i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  br label %782

446:                                              ; preds = %441
  %447 = load i32*, i32** %9, align 8
  %448 = load i8*, i8** %20, align 8
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = call i64 @BIO_write(i32* %447, i8* %448, i32 %451)
  %453 = icmp sle i64 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %446
  br label %782

455:                                              ; preds = %446
  br label %521

456:                                              ; preds = %438
  %457 = load i32, i32* %15, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %486, label %459

459:                                              ; preds = %456
  %460 = load i32*, i32** %9, align 8
  %461 = call i64 @BIO_write(i32* %460, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  %462 = icmp sle i64 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %459
  br label %782

464:                                              ; preds = %459
  store i32 0, i32* %35, align 4
  br label %465

465:                                              ; preds = %482, %464
  %466 = load i32, i32* %35, align 4
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = icmp slt i32 %466, %469
  br i1 %470, label %471, label %485

471:                                              ; preds = %465
  %472 = load i32*, i32** %9, align 8
  %473 = load i8*, i8** %20, align 8
  %474 = load i32, i32* %35, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %472, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %477)
  %479 = icmp sle i64 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %471
  br label %782

481:                                              ; preds = %471
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %35, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %35, align 4
  br label %465

485:                                              ; preds = %465
  br label %520

486:                                              ; preds = %456
  %487 = load i32, i32* %25, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %495, label %489

489:                                              ; preds = %486
  %490 = load i32*, i32** %9, align 8
  %491 = call i64 @BIO_write(i32* %490, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %492 = icmp sle i64 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %489
  br label %782

494:                                              ; preds = %489
  br label %495

495:                                              ; preds = %494, %486
  %496 = load i32*, i32** %9, align 8
  %497 = load i8*, i8** %20, align 8
  %498 = load i32, i32* %15, align 4
  %499 = icmp eq i32 %498, -1
  br i1 %499, label %506, label %500

500:                                              ; preds = %495
  %501 = load i32, i32* %15, align 4
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp sgt i32 %501, %504
  br i1 %505, label %506, label %510

506:                                              ; preds = %500, %495
  %507 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  br label %512

510:                                              ; preds = %500
  %511 = load i32, i32* %15, align 4
  br label %512

512:                                              ; preds = %510, %506
  %513 = phi i32 [ %509, %506 ], [ %511, %510 ]
  %514 = sext i32 %513 to i64
  %515 = load i32, i32* %31, align 4
  %516 = call i64 @BIO_dump_indent(i32* %496, i8* %497, i64 %514, i32 %515)
  %517 = icmp sle i64 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %512
  br label %782

519:                                              ; preds = %512
  store i32 1, i32* %25, align 4
  br label %520

520:                                              ; preds = %519, %485
  br label %521

521:                                              ; preds = %520, %455
  br label %522

522:                                              ; preds = %521, %378, %369
  %523 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %524 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_10__* %523)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %30, align 8
  br label %713

525:                                              ; preds = %365
  %526 = load i32, i32* %22, align 4
  %527 = load i32, i32* @V_ASN1_INTEGER, align 4
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %599

529:                                              ; preds = %525
  %530 = load i8*, i8** %19, align 8
  store i8* %530, i8** %20, align 8
  %531 = load i64, i64* %21, align 8
  %532 = load i32, i32* %26, align 4
  %533 = sext i32 %532 to i64
  %534 = add nsw i64 %531, %533
  %535 = call %struct.TYPE_11__* @d2i_ASN1_INTEGER(i32* null, i8** %20, i64 %534)
  store %struct.TYPE_11__* %535, %struct.TYPE_11__** %37, align 8
  %536 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %537 = icmp ne %struct.TYPE_11__* %536, null
  br i1 %537, label %538, label %590

538:                                              ; preds = %529
  %539 = load i32*, i32** %9, align 8
  %540 = call i64 @BIO_write(i32* %539, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %541 = icmp sle i64 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %538
  br label %782

543:                                              ; preds = %538
  %544 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = load i64, i64* @V_ASN1_NEG_INTEGER, align 8
  %548 = icmp eq i64 %546, %547
  br i1 %548, label %549, label %555

549:                                              ; preds = %543
  %550 = load i32*, i32** %9, align 8
  %551 = call i64 @BIO_write(i32* %550, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %552 = icmp sle i64 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %549
  br label %782

554:                                              ; preds = %549
  br label %555

555:                                              ; preds = %554, %543
  store i32 0, i32* %38, align 4
  br label %556

556:                                              ; preds = %575, %555
  %557 = load i32, i32* %38, align 4
  %558 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 8
  %561 = icmp slt i32 %557, %560
  br i1 %561, label %562, label %578

562:                                              ; preds = %556
  %563 = load i32*, i32** %9, align 8
  %564 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 2
  %566 = load i8*, i8** %565, align 8
  %567 = load i32, i32* %38, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, i8* %566, i64 %568
  %570 = load i8, i8* %569, align 1
  %571 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %563, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %570)
  %572 = icmp sle i64 %571, 0
  br i1 %572, label %573, label %574

573:                                              ; preds = %562
  br label %782

574:                                              ; preds = %562
  br label %575

575:                                              ; preds = %574
  %576 = load i32, i32* %38, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %38, align 4
  br label %556

578:                                              ; preds = %556
  %579 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %580 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %589

583:                                              ; preds = %578
  %584 = load i32*, i32** %9, align 8
  %585 = call i64 @BIO_write(i32* %584, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  %586 = icmp sle i64 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %583
  br label %782

588:                                              ; preds = %583
  br label %589

589:                                              ; preds = %588, %578
  br label %596

590:                                              ; preds = %529
  %591 = load i32*, i32** %9, align 8
  %592 = call i64 @BIO_puts(i32* %591, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %593 = icmp sle i64 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %590
  br label %782

595:                                              ; preds = %590
  store i32 1, i32* %32, align 4
  br label %596

596:                                              ; preds = %595, %589
  %597 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %598 = call i32 @ASN1_INTEGER_free(%struct.TYPE_11__* %597)
  br label %712

599:                                              ; preds = %525
  %600 = load i32, i32* %22, align 4
  %601 = load i32, i32* @V_ASN1_ENUMERATED, align 4
  %602 = icmp eq i32 %600, %601
  br i1 %602, label %603, label %673

603:                                              ; preds = %599
  %604 = load i8*, i8** %19, align 8
  store i8* %604, i8** %20, align 8
  %605 = load i64, i64* %21, align 8
  %606 = load i32, i32* %26, align 4
  %607 = sext i32 %606 to i64
  %608 = add nsw i64 %605, %607
  %609 = call %struct.TYPE_12__* @d2i_ASN1_ENUMERATED(i32* null, i8** %20, i64 %608)
  store %struct.TYPE_12__* %609, %struct.TYPE_12__** %39, align 8
  %610 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %611 = icmp ne %struct.TYPE_12__* %610, null
  br i1 %611, label %612, label %664

612:                                              ; preds = %603
  %613 = load i32*, i32** %9, align 8
  %614 = call i64 @BIO_write(i32* %613, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %615 = icmp sle i64 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %612
  br label %782

617:                                              ; preds = %612
  %618 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %619 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %618, i32 0, i32 0
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @V_ASN1_NEG_ENUMERATED, align 8
  %622 = icmp eq i64 %620, %621
  br i1 %622, label %623, label %629

623:                                              ; preds = %617
  %624 = load i32*, i32** %9, align 8
  %625 = call i64 @BIO_write(i32* %624, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %626 = icmp sle i64 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %623
  br label %782

628:                                              ; preds = %623
  br label %629

629:                                              ; preds = %628, %617
  store i32 0, i32* %40, align 4
  br label %630

630:                                              ; preds = %649, %629
  %631 = load i32, i32* %40, align 4
  %632 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 8
  %635 = icmp slt i32 %631, %634
  br i1 %635, label %636, label %652

636:                                              ; preds = %630
  %637 = load i32*, i32** %9, align 8
  %638 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %639 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %638, i32 0, i32 2
  %640 = load i8*, i8** %639, align 8
  %641 = load i32, i32* %40, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8, i8* %640, i64 %642
  %644 = load i8, i8* %643, align 1
  %645 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %637, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %644)
  %646 = icmp sle i64 %645, 0
  br i1 %646, label %647, label %648

647:                                              ; preds = %636
  br label %782

648:                                              ; preds = %636
  br label %649

649:                                              ; preds = %648
  %650 = load i32, i32* %40, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %40, align 4
  br label %630

652:                                              ; preds = %630
  %653 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %653, i32 0, i32 1
  %655 = load i32, i32* %654, align 8
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %663

657:                                              ; preds = %652
  %658 = load i32*, i32** %9, align 8
  %659 = call i64 @BIO_write(i32* %658, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  %660 = icmp sle i64 %659, 0
  br i1 %660, label %661, label %662

661:                                              ; preds = %657
  br label %782

662:                                              ; preds = %657
  br label %663

663:                                              ; preds = %662, %652
  br label %670

664:                                              ; preds = %603
  %665 = load i32*, i32** %9, align 8
  %666 = call i64 @BIO_puts(i32* %665, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %667 = icmp sle i64 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %664
  br label %782

669:                                              ; preds = %664
  store i32 1, i32* %32, align 4
  br label %670

670:                                              ; preds = %669, %663
  %671 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %672 = call i32 @ASN1_ENUMERATED_free(%struct.TYPE_12__* %671)
  br label %711

673:                                              ; preds = %599
  %674 = load i64, i64* %21, align 8
  %675 = icmp sgt i64 %674, 0
  br i1 %675, label %676, label %710

676:                                              ; preds = %673
  %677 = load i32, i32* %15, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %710

679:                                              ; preds = %676
  %680 = load i32, i32* %25, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %688, label %682

682:                                              ; preds = %679
  %683 = load i32*, i32** %9, align 8
  %684 = call i64 @BIO_write(i32* %683, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %685 = icmp sle i64 %684, 0
  br i1 %685, label %686, label %687

686:                                              ; preds = %682
  br label %782

687:                                              ; preds = %682
  br label %688

688:                                              ; preds = %687, %679
  %689 = load i32*, i32** %9, align 8
  %690 = load i8*, i8** %16, align 8
  %691 = load i32, i32* %15, align 4
  %692 = icmp eq i32 %691, -1
  br i1 %692, label %698, label %693

693:                                              ; preds = %688
  %694 = load i32, i32* %15, align 4
  %695 = sext i32 %694 to i64
  %696 = load i64, i64* %21, align 8
  %697 = icmp sgt i64 %695, %696
  br i1 %697, label %698, label %700

698:                                              ; preds = %693, %688
  %699 = load i64, i64* %21, align 8
  br label %703

700:                                              ; preds = %693
  %701 = load i32, i32* %15, align 4
  %702 = sext i32 %701 to i64
  br label %703

703:                                              ; preds = %700, %698
  %704 = phi i64 [ %699, %698 ], [ %702, %700 ]
  %705 = load i32, i32* %31, align 4
  %706 = call i64 @BIO_dump_indent(i32* %689, i8* %690, i64 %704, i32 %705)
  %707 = icmp sle i64 %706, 0
  br i1 %707, label %708, label %709

708:                                              ; preds = %703
  br label %782

709:                                              ; preds = %703
  store i32 1, i32* %25, align 4
  br label %710

710:                                              ; preds = %709, %676, %673
  br label %711

711:                                              ; preds = %710, %670
  br label %712

712:                                              ; preds = %711, %596
  br label %713

713:                                              ; preds = %712, %522
  br label %714

714:                                              ; preds = %713, %364
  br label %715

715:                                              ; preds = %714, %359
  br label %716

716:                                              ; preds = %715, %336
  br label %717

717:                                              ; preds = %716, %308
  %718 = load i32, i32* %32, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %755

720:                                              ; preds = %717
  %721 = load i8*, i8** %19, align 8
  %722 = load i32, i32* %26, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* %721, i64 %723
  store i8* %724, i8** %42, align 8
  %725 = load i32*, i32** %9, align 8
  %726 = call i64 @BIO_puts(i32* %725, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %727 = icmp sle i64 %726, 0
  br i1 %727, label %728, label %729

728:                                              ; preds = %720
  br label %782

729:                                              ; preds = %720
  store i32 0, i32* %41, align 4
  br label %730

730:                                              ; preds = %746, %729
  %731 = load i32, i32* %41, align 4
  %732 = sext i32 %731 to i64
  %733 = load i64, i64* %21, align 8
  %734 = icmp slt i64 %732, %733
  br i1 %734, label %735, label %749

735:                                              ; preds = %730
  %736 = load i32*, i32** %9, align 8
  %737 = load i8*, i8** %42, align 8
  %738 = load i32, i32* %41, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i8, i8* %737, i64 %739
  %741 = load i8, i8* %740, align 1
  %742 = call i64 (i32*, i8*, i8, ...) @BIO_printf(i32* %736, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %741)
  %743 = icmp sle i64 %742, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %735
  br label %782

745:                                              ; preds = %735
  br label %746

746:                                              ; preds = %745
  %747 = load i32, i32* %41, align 4
  %748 = add nsw i32 %747, 1
  store i32 %748, i32* %41, align 4
  br label %730

749:                                              ; preds = %730
  %750 = load i32*, i32** %9, align 8
  %751 = call i64 @BIO_puts(i32* %750, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %752 = icmp sle i64 %751, 0
  br i1 %752, label %753, label %754

753:                                              ; preds = %749
  br label %782

754:                                              ; preds = %749
  br label %755

755:                                              ; preds = %754, %717
  %756 = load i32, i32* %25, align 4
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %764, label %758

758:                                              ; preds = %755
  %759 = load i32*, i32** %9, align 8
  %760 = call i64 @BIO_write(i32* %759, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %761 = icmp sle i64 %760, 0
  br i1 %761, label %762, label %763

762:                                              ; preds = %758
  br label %782

763:                                              ; preds = %758
  br label %764

764:                                              ; preds = %763, %755
  %765 = load i64, i64* %21, align 8
  %766 = load i8*, i8** %16, align 8
  %767 = getelementptr inbounds i8, i8* %766, i64 %765
  store i8* %767, i8** %16, align 8
  %768 = load i32, i32* %22, align 4
  %769 = load i32, i32* @V_ASN1_EOC, align 4
  %770 = icmp eq i32 %768, %769
  br i1 %770, label %771, label %775

771:                                              ; preds = %764
  %772 = load i32, i32* %23, align 4
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %775

774:                                              ; preds = %771
  store i32 2, i32* %24, align 4
  br label %782

775:                                              ; preds = %771, %764
  br label %776

776:                                              ; preds = %775, %256
  br label %777

777:                                              ; preds = %776, %244
  %778 = load i64, i64* %21, align 8
  %779 = load i64, i64* %11, align 8
  %780 = sub nsw i64 %779, %778
  store i64 %780, i64* %11, align 8
  br label %55

781:                                              ; preds = %55
  store i32 1, i32* %24, align 4
  br label %782

782:                                              ; preds = %781, %774, %762, %753, %744, %728, %708, %686, %668, %661, %647, %627, %616, %594, %587, %573, %553, %542, %518, %493, %480, %463, %454, %445, %348, %334, %325, %307, %293, %255, %234, %191, %155, %150, %136, %120, %110, %95, %70, %69
  %783 = load i32*, i32** %29, align 8
  %784 = call i32 @ASN1_OBJECT_free(i32* %783)
  %785 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %786 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_10__* %785)
  %787 = load i8*, i8** %16, align 8
  %788 = load i8**, i8*** %10, align 8
  store i8* %787, i8** %788, align 8
  %789 = load i32, i32* %24, align 4
  store i32 %789, i32* %8, align 4
  br label %790

790:                                              ; preds = %782, %46
  %791 = load i32, i32* %8, align 4
  ret i32 %791
}

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i64) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @asn1_print_info(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @d2i_ASN1_OBJECT(i32**, i8**, i64) #1

declare dso_local i32 @i2a_ASN1_OBJECT(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @d2i_ASN1_OCTET_STRING(i32*, i8**, i64) #1

declare dso_local i64 @BIO_dump_indent(i32*, i8*, i64, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @d2i_ASN1_INTEGER(i32*, i8**, i64) #1

declare dso_local i32 @ASN1_INTEGER_free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @d2i_ASN1_ENUMERATED(i32*, i8**, i64) #1

declare dso_local i32 @ASN1_ENUMERATED_free(%struct.TYPE_12__*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
