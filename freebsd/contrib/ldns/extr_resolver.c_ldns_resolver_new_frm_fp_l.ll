; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_new_frm_fp_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_new_frm_fp_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RESOLV_KEYWORDS = common dso_local global i32 0, align 4
@LDNS_MAX_LINELEN = common dso_local global i32 0, align 4
@ldns_buffer = common dso_local global i32 0, align 4
@b = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LDNS_STATUS_FILE_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"nameserver\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sortlist\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@LDNS_PARSE_NORMAL = common dso_local global i32 0, align 4
@LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i32 0, align 4
@LDNS_STATUS_SYNTAX_DNAME_ERR = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_AAAA = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_A = common dso_local global i32 0, align 4
@LDNS_STATUS_SYNTAX_ERR = common dso_local global i32 0, align 4
@LDNS_PARSE_SKIP_SPACE = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_resolver_new_frm_fp_l(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32, i32* @LDNS_RESOLV_KEYWORDS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8*, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @LDNS_MAX_LINELEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load i32, i32* @ldns_buffer, align 4
  %31 = load i32, i32* @b, align 4
  %32 = mul nsw i32 %30, %31
  store i32 0, i32* %17, align 4
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %19, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  store i32* %17, i32** %7, align 8
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %41, i32** %19, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @LDNS_STATUS_FILE_ERR, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = getelementptr inbounds i8*, i8** %25, i64 131
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds i8*, i8** %25, i64 133
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds i8*, i8** %25, i64 129
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds i8*, i8** %25, i64 128
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds i8*, i8** %25, i64 130
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %52, align 16
  %53 = getelementptr inbounds i8*, i8** %25, i64 134
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %53, align 16
  store i32 132, i32* %12, align 4
  %54 = call i32* (...) @ldns_resolver_new()
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %47
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32*, i32** %19, align 8
  %62 = call i32 @fclose(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

65:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  %66 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %66, align 16
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  store i32 132, i32* %12, align 4
  br label %69

69:                                               ; preds = %371, %369, %208, %168, %123, %104, %65
  %70 = load i32, i32* %15, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %372

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, i8* %29, i64 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 35
  br i1 %76, label %77, label %107

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 120, i8* %78, align 16
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %94, %83
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @fgetc(i32* %85)
  store i32 %86, i32* %21, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* @EOF, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %21, align 4
  %93 = icmp ne i32 %92, 10
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i1 [ false, %87 ], [ %93, %91 ]
  br i1 %95, label %84, label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %21, align 4
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %18, align 4
  br label %69

107:                                              ; preds = %72
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %12, align 4
  switch i32 %110, label %371 [
    i32 132, label %111
    i32 133, label %148
    i32 131, label %188
    i32 129, label %242
    i32 128, label %337
    i32 130, label %342
    i32 134, label %347
  ]

111:                                              ; preds = %107
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* @LDNS_PARSE_NORMAL, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @ldns_fget_token_l(i32* %112, i8* %29, i32 %113, i32 0, i32* %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %111
  %119 = getelementptr inbounds i8, i8* %29, i64 0
  %120 = load i8, i8* %119, align 16
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 35
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %69

124:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @LDNS_RESOLV_KEYWORDS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %25, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strcasecmp(i8* %133, i8* %29)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %12, align 4
  br label %142

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %125

142:                                              ; preds = %136, %125
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 132
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145, %142
  br label %147

147:                                              ; preds = %146, %111
  br label %371

148:                                              ; preds = %107
  %149 = load i32*, i32** %19, align 8
  %150 = load i32, i32* @LDNS_PARSE_NORMAL, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @ldns_fget_token_l(i32* %149, i8* %29, i32 %150, i32 0, i32* %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = load i32*, i32** %6, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32*, i32** %19, align 8
  %160 = call i32 @fclose(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* @LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR, align 4
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

163:                                              ; preds = %148
  %164 = getelementptr inbounds i8, i8* %29, i64 0
  %165 = load i8, i8* %164, align 16
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 35
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 132, i32* %12, align 4
  br label %69

169:                                              ; preds = %163
  %170 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %171 = call i32* @ldns_rdf_new_frm_str(i32 %170, i8* %29)
  store i32* %171, i32** %14, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %184, label %174

174:                                              ; preds = %169
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @ldns_resolver_deep_free(i32* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i32*, i32** %19, align 8
  %181 = call i32 @fclose(i32* %180)
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* @LDNS_STATUS_SYNTAX_DNAME_ERR, align 4
  store i32 %183, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

184:                                              ; preds = %169
  %185 = load i32*, i32** %8, align 8
  %186 = load i32*, i32** %14, align 8
  %187 = call i32 @ldns_resolver_set_domain(i32* %185, i32* %186)
  store i32 132, i32* %12, align 4
  br label %371

188:                                              ; preds = %107
  %189 = load i32*, i32** %19, align 8
  %190 = load i32, i32* @LDNS_PARSE_NORMAL, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @ldns_fget_token_l(i32* %189, i8* %29, i32 %190, i32 0, i32* %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %188
  %196 = load i32*, i32** %6, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32*, i32** %19, align 8
  %200 = call i32 @fclose(i32* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* @LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR, align 4
  store i32 %202, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

203:                                              ; preds = %188
  %204 = getelementptr inbounds i8, i8* %29, i64 0
  %205 = load i8, i8* %204, align 16
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 35
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 132, i32* %12, align 4
  br label %69

209:                                              ; preds = %203
  %210 = call i32* @strchr(i8* %29, i8 signext 37)
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = call i32* @strchr(i8* %29, i8 signext 37)
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i32, i32* @LDNS_RDF_TYPE_AAAA, align 4
  %217 = call i32* @ldns_rdf_new_frm_str(i32 %216, i8* %29)
  store i32* %217, i32** %14, align 8
  %218 = load i32*, i32** %14, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %215
  %221 = load i32, i32* @LDNS_RDF_TYPE_A, align 4
  %222 = call i32* @ldns_rdf_new_frm_str(i32 %221, i8* %29)
  store i32* %222, i32** %14, align 8
  br label %223

223:                                              ; preds = %220, %215
  %224 = load i32*, i32** %14, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %236, label %226

226:                                              ; preds = %223
  %227 = load i32*, i32** %8, align 8
  %228 = call i32 @ldns_resolver_deep_free(i32* %227)
  %229 = load i32*, i32** %6, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  %232 = load i32*, i32** %19, align 8
  %233 = call i32 @fclose(i32* %232)
  br label %234

234:                                              ; preds = %231, %226
  %235 = load i32, i32* @LDNS_STATUS_SYNTAX_ERR, align 4
  store i32 %235, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

236:                                              ; preds = %223
  %237 = load i32*, i32** %8, align 8
  %238 = load i32*, i32** %14, align 8
  %239 = call i32 @ldns_resolver_push_nameserver(i32* %237, i32* %238)
  %240 = load i32*, i32** %14, align 8
  %241 = call i32 @ldns_rdf_deep_free(i32* %240)
  store i32 132, i32* %12, align 4
  br label %371

242:                                              ; preds = %107
  %243 = load i32*, i32** %19, align 8
  %244 = load i32, i32* @LDNS_PARSE_SKIP_SPACE, align 4
  %245 = load i32*, i32** %7, align 8
  %246 = call i32 @ldns_fget_token_l(i32* %243, i8* %29, i32 %244, i32 0, i32* %245)
  store i32 %246, i32* %15, align 4
  %247 = load i32, i32* @ldns_buffer, align 4
  %248 = call i32 @LDNS_MALLOC(i32 %247)
  store i32 %248, i32* @b, align 4
  %249 = load i32, i32* @b, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %242
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 @ldns_resolver_deep_free(i32* %252)
  %254 = load i32*, i32** %6, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %251
  %257 = load i32*, i32** %19, align 8
  %258 = call i32 @fclose(i32* %257)
  br label %259

259:                                              ; preds = %256, %251
  %260 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %260, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

261:                                              ; preds = %242
  %262 = load i32, i32* @b, align 4
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = call i32 @ldns_buffer_new_frm_data(i32 %262, i8* %29, i64 %264)
  %266 = load i32, i32* @b, align 4
  %267 = call i32 @ldns_buffer_status(i32 %266)
  %268 = load i32, i32* @LDNS_STATUS_OK, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %282

270:                                              ; preds = %261
  %271 = load i32, i32* @b, align 4
  %272 = call i32 @LDNS_FREE(i32 %271)
  %273 = load i32*, i32** %8, align 8
  %274 = call i32 @ldns_resolver_deep_free(i32* %273)
  %275 = load i32*, i32** %6, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %270
  %278 = load i32*, i32** %19, align 8
  %279 = call i32 @fclose(i32* %278)
  br label %280

280:                                              ; preds = %277, %270
  %281 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %281, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

282:                                              ; preds = %261
  %283 = load i32, i32* @b, align 4
  %284 = load i32, i32* @LDNS_PARSE_NORMAL, align 4
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = add i64 %286, 1
  %288 = call i32 @ldns_bget_token(i32 %283, i8* %29, i32 %284, i64 %287)
  store i32 %288, i32* %16, align 4
  br label %289

289:                                              ; preds = %318, %282
  %290 = load i32, i32* %16, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %330

292:                                              ; preds = %289
  %293 = load i32, i32* %16, align 4
  %294 = load i32, i32* %15, align 4
  %295 = sub nsw i32 %294, %293
  store i32 %295, i32* %15, align 4
  %296 = getelementptr inbounds i8, i8* %29, i64 0
  %297 = load i8, i8* %296, align 16
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 35
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  store i32 132, i32* %12, align 4
  br label %330

301:                                              ; preds = %292
  %302 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %303 = call i32* @ldns_rdf_new_frm_str(i32 %302, i8* %29)
  store i32* %303, i32** %14, align 8
  %304 = load i32*, i32** %14, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %318, label %306

306:                                              ; preds = %301
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @ldns_resolver_deep_free(i32* %307)
  %309 = load i32, i32* @b, align 4
  %310 = call i32 @ldns_buffer_free(i32 %309)
  %311 = load i32*, i32** %6, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %306
  %314 = load i32*, i32** %19, align 8
  %315 = call i32 @fclose(i32* %314)
  br label %316

316:                                              ; preds = %313, %306
  %317 = load i32, i32* @LDNS_STATUS_SYNTAX_DNAME_ERR, align 4
  store i32 %317, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

318:                                              ; preds = %301
  %319 = load i32*, i32** %8, align 8
  %320 = load i32*, i32** %14, align 8
  %321 = call i32 @ldns_resolver_push_searchlist(i32* %319, i32* %320)
  %322 = load i32*, i32** %14, align 8
  %323 = call i32 @ldns_rdf_deep_free(i32* %322)
  %324 = load i32, i32* @b, align 4
  %325 = load i32, i32* @LDNS_PARSE_NORMAL, align 4
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = add i64 %327, 1
  %329 = call i32 @ldns_bget_token(i32 %324, i8* %29, i32 %325, i64 %328)
  store i32 %329, i32* %16, align 4
  br label %289

330:                                              ; preds = %300, %289
  %331 = load i32, i32* @b, align 4
  %332 = call i32 @ldns_buffer_free(i32 %331)
  %333 = load i32, i32* %12, align 4
  %334 = icmp ne i32 %333, 132
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 1, i32* %15, align 4
  store i32 132, i32* %12, align 4
  br label %336

336:                                              ; preds = %335, %330
  br label %371

337:                                              ; preds = %107
  %338 = load i32*, i32** %19, align 8
  %339 = load i32, i32* @LDNS_PARSE_SKIP_SPACE, align 4
  %340 = load i32*, i32** %7, align 8
  %341 = call i32 @ldns_fget_token_l(i32* %338, i8* %29, i32 %339, i32 0, i32* %340)
  store i32 %341, i32* %15, align 4
  store i32 132, i32* %12, align 4
  br label %371

342:                                              ; preds = %107
  %343 = load i32*, i32** %19, align 8
  %344 = load i32, i32* @LDNS_PARSE_SKIP_SPACE, align 4
  %345 = load i32*, i32** %7, align 8
  %346 = call i32 @ldns_fget_token_l(i32* %343, i8* %29, i32 %344, i32 0, i32* %345)
  store i32 %346, i32* %15, align 4
  store i32 132, i32* %12, align 4
  br label %371

347:                                              ; preds = %107
  %348 = load i32*, i32** %19, align 8
  %349 = load i32, i32* @LDNS_PARSE_NORMAL, align 4
  %350 = load i32*, i32** %7, align 8
  %351 = call i32 @ldns_fget_token_l(i32* %348, i8* %29, i32 %349, i32 0, i32* %350)
  store i32 %351, i32* %15, align 4
  %352 = load i32, i32* %15, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %364

354:                                              ; preds = %347
  %355 = load i32*, i32** %8, align 8
  %356 = call i32 @ldns_resolver_deep_free(i32* %355)
  %357 = load i32*, i32** %6, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %362, label %359

359:                                              ; preds = %354
  %360 = load i32*, i32** %19, align 8
  %361 = call i32 @fclose(i32* %360)
  br label %362

362:                                              ; preds = %359, %354
  %363 = load i32, i32* @LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR, align 4
  store i32 %363, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

364:                                              ; preds = %347
  %365 = getelementptr inbounds i8, i8* %29, i64 0
  %366 = load i8, i8* %365, align 16
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 35
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  store i32 132, i32* %12, align 4
  br label %69

370:                                              ; preds = %364
  store i32 132, i32* %12, align 4
  br label %371

371:                                              ; preds = %107, %370, %342, %337, %336, %236, %184, %147
  br label %69

372:                                              ; preds = %69
  %373 = load i32*, i32** %6, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %378, label %375

375:                                              ; preds = %372
  %376 = load i32*, i32** %19, align 8
  %377 = call i32 @fclose(i32* %376)
  br label %378

378:                                              ; preds = %375, %372
  %379 = load i32**, i32*** %5, align 8
  %380 = icmp ne i32** %379, null
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = load i32*, i32** %8, align 8
  %383 = load i32**, i32*** %5, align 8
  store i32* %382, i32** %383, align 8
  %384 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %384, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

385:                                              ; preds = %378
  %386 = load i32*, i32** %8, align 8
  %387 = call i32 @ldns_resolver_deep_free(i32* %386)
  %388 = load i32, i32* @LDNS_STATUS_NULL, align 4
  store i32 %388, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %389

389:                                              ; preds = %385, %381, %362, %316, %280, %259, %234, %201, %182, %161, %63, %44
  %390 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %390)
  %391 = load i32, i32* %4, align 4
  ret i32 %391
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @ldns_resolver_new(...) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @ldns_fget_token_l(i32*, i8*, i32, i32, i32*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32* @ldns_rdf_new_frm_str(i32, i8*) #2

declare dso_local i32 @ldns_resolver_deep_free(i32*) #2

declare dso_local i32 @ldns_resolver_set_domain(i32*, i32*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @ldns_resolver_push_nameserver(i32*, i32*) #2

declare dso_local i32 @ldns_rdf_deep_free(i32*) #2

declare dso_local i32 @LDNS_MALLOC(i32) #2

declare dso_local i32 @ldns_buffer_new_frm_data(i32, i8*, i64) #2

declare dso_local i32 @ldns_buffer_status(i32) #2

declare dso_local i32 @LDNS_FREE(i32) #2

declare dso_local i32 @ldns_bget_token(i32, i8*, i32, i64) #2

declare dso_local i32 @ldns_buffer_free(i32) #2

declare dso_local i32 @ldns_resolver_push_searchlist(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
