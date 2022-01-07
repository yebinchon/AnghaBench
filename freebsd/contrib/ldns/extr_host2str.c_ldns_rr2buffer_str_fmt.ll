; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr2buffer_str_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr2buffer_str_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i64 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@ldns_output_format_default = common dso_local global i64 0, align 8
@LDNS_COMMENT_NULLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"; (null)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\09\\# 0\00", align 1
@LDNS_FMT_ZEROIZE_RRSIGS = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_TIME = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_B64 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@LDNS_FMT_PAD_SOA_SERIAL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%10lu\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@LDNS_COMMENT_KEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" ;{\00", align 1
@LDNS_COMMENT_KEY_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"id = %u\00", align 1
@LDNS_COMMENT_KEY_TYPE = common dso_local global i32 0, align 4
@LDNS_KEY_ZONE_KEY = common dso_local global i32 0, align 4
@LDNS_KEY_SEP_KEY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" (ksk)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" (zsk)\00", align 1
@LDNS_COMMENT_KEY_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"size = %db\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@LDNS_COMMENT_RRSIGS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c" ;{id = %d}\00", align 1
@LDNS_COMMENT_BUBBLEBABBLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c" ;{%s}\00", align 1
@LDNS_COMMENT_FLAGS = common dso_local global i32 0, align 4
@LDNS_COMMENT_NSEC3_CHAIN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c" flags: optout\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" flags: -\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"from: \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" to: \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_rr2buffer_str_fmt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @ldns_output_format_default, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %11, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @LDNS_COMMENT_NULLS, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @ldns_buffer_status(i32* %39)
  store i64 %40, i64* %4, align 8
  br label %504

41:                                               ; preds = %25
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @ldns_rr_owner(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @ldns_rr_owner(i32* %47)
  %49 = call i64 @ldns_rdf2buffer_str_dname(i32* %46, i64 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @LDNS_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %4, align 8
  br label %504

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @ldns_rr_is_question(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @ldns_rr_ttl(i32* %62)
  %64 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @ldns_rr_get_class(i32* %69)
  %71 = call i64 @ldns_rr_class2buffer_str(i32* %68, i32 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @LDNS_STATUS_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %4, align 8
  br label %504

77:                                               ; preds = %65
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @ldns_rr_get_type(i32* %81)
  %83 = call i64 @ldns_output_format_covers_type(i32* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i64 @ldns_rr2buffer_str_rfc3597(i32* %86, i32* %87)
  store i64 %88, i64* %4, align 8
  br label %504

89:                                               ; preds = %77
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ldns_rr_get_type(i32* %91)
  %93 = call i64 @ldns_rr_type2buffer_str(i32* %90, i32 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @LDNS_STATUS_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %4, align 8
  br label %504

99:                                               ; preds = %89
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @ldns_rr_rd_count(i32* %100)
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %114

106:                                              ; preds = %99
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @ldns_rr_is_question(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %103
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %217, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @ldns_rr_rd_count(i32* %117)
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %220

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @LDNS_FMT_ZEROIZE_RRSIGS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %163

127:                                              ; preds = %120
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @ldns_rr_get_type(i32* %128)
  %130 = icmp eq i32 %129, 128
  br i1 %130, label %131, label %163

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32*, i32** %7, align 8
  %136 = call i32* @ldns_rr_rdf(i32* %135, i32 4)
  %137 = call i64 @ldns_rdf_get_type(i32* %136)
  %138 = load i64, i64* @LDNS_RDF_TYPE_TIME, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %158, label %140

140:                                              ; preds = %134, %131
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 5
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32*, i32** %7, align 8
  %145 = call i32* @ldns_rr_rdf(i32* %144, i32 5)
  %146 = call i64 @ldns_rdf_get_type(i32* %145)
  %147 = load i64, i64* @LDNS_RDF_TYPE_TIME, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %158, label %149

149:                                              ; preds = %143, %140
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i32*, i32** %7, align 8
  %154 = call i32* @ldns_rr_rdf(i32* %153, i32 8)
  %155 = call i64 @ldns_rdf_get_type(i32* %154)
  %156 = load i64, i64* @LDNS_RDF_TYPE_B64, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152, %143, %134
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32*, i32** %5, align 8
  %162 = call i64 @ldns_buffer_status(i32* %161)
  store i64 %162, i64* %10, align 8
  br label %201

163:                                              ; preds = %152, %149, %127, %120
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @LDNS_FMT_PAD_SOA_SERIAL, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %163
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @ldns_rr_get_type(i32* %171)
  %173 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %193

178:                                              ; preds = %175
  %179 = load i32*, i32** %7, align 8
  %180 = call i32* @ldns_rr_rdf(i32* %179, i32 2)
  %181 = call i64 @ldns_rdf_get_type(i32* %180)
  %182 = load i64, i64* @LDNS_RDF_TYPE_INT32, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load i32*, i32** %5, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = call i32* @ldns_rr_rdf(i32* %186, i32 2)
  %188 = call i32* @ldns_rdf_data(i32* %187)
  %189 = call i64 @ldns_read_uint32(i32* %188)
  %190 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %189)
  %191 = load i32*, i32** %5, align 8
  %192 = call i64 @ldns_buffer_status(i32* %191)
  store i64 %192, i64* %10, align 8
  br label %200

193:                                              ; preds = %178, %175, %170, %163
  %194 = load i32*, i32** %5, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32* @ldns_rr_rdf(i32* %196, i32 %197)
  %199 = call i64 @ldns_rdf2buffer_str_fmt(i32* %194, i32* %195, i32* %198)
  store i64 %199, i64* %10, align 8
  br label %200

200:                                              ; preds = %193, %184
  br label %201

201:                                              ; preds = %200, %158
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @LDNS_STATUS_OK, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i64, i64* %10, align 8
  store i64 %206, i64* %4, align 8
  br label %504

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @ldns_rr_rd_count(i32* %209)
  %211 = sub nsw i32 %210, 1
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32*, i32** %5, align 8
  %215 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %207
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %115

220:                                              ; preds = %115
  %221 = load i32*, i32** %7, align 8
  %222 = call i32 @ldns_rr_rd_count(i32* %221)
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %499

224:                                              ; preds = %220
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @ldns_rr_get_type(i32* %225)
  switch i32 %226, label %497 [
    i32 131, label %227
    i32 128, label %315
    i32 130, label %340
    i32 129, label %371
  ]

227:                                              ; preds = %224
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @LDNS_COMMENT_KEY, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %227
  br label %498

235:                                              ; preds = %227
  %236 = load i32*, i32** %7, align 8
  %237 = call i32* @ldns_rr_rdf(i32* %236, i32 0)
  %238 = call i32 @ldns_rdf2native_int16(i32* %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32*, i32** %5, align 8
  %240 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @LDNS_COMMENT_KEY_ID, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %235
  %248 = load i32*, i32** %5, align 8
  %249 = load i32*, i32** %7, align 8
  %250 = call i64 @ldns_calc_keytag(i32* %249)
  %251 = trunc i64 %250 to i32
  %252 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %247, %235
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @LDNS_COMMENT_KEY_TYPE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %287

260:                                              ; preds = %253
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @LDNS_KEY_ZONE_KEY, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %287

265:                                              ; preds = %260
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @LDNS_KEY_SEP_KEY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i32*, i32** %5, align 8
  %272 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %276

273:                                              ; preds = %265
  %274 = load i32*, i32** %5, align 8
  %275 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @LDNS_COMMENT_KEY_SIZE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load i32*, i32** %5, align 8
  %285 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %284, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %276
  br label %300

287:                                              ; preds = %260, %253
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @LDNS_COMMENT_KEY_ID, align 4
  %292 = load i32, i32* @LDNS_COMMENT_KEY_SIZE, align 4
  %293 = or i32 %291, %292
  %294 = and i32 %290, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %287
  %297 = load i32*, i32** %5, align 8
  %298 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %287
  br label %300

300:                                              ; preds = %299, %286
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @LDNS_COMMENT_KEY_SIZE, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %300
  %308 = load i32*, i32** %5, align 8
  %309 = load i32*, i32** %7, align 8
  %310 = call i32 @ldns_rr_dnskey_key_size(i32* %309)
  %311 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %308, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %307, %300
  %313 = load i32*, i32** %5, align 8
  %314 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %498

315:                                              ; preds = %224
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @LDNS_COMMENT_KEY, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %339

322:                                              ; preds = %315
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @LDNS_COMMENT_RRSIGS, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %339

329:                                              ; preds = %322
  %330 = load i32*, i32** %7, align 8
  %331 = call i32* @ldns_rr_rdf(i32* %330, i32 6)
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %339

333:                                              ; preds = %329
  %334 = load i32*, i32** %5, align 8
  %335 = load i32*, i32** %7, align 8
  %336 = call i32* @ldns_rr_rdf(i32* %335, i32 6)
  %337 = call i32 @ldns_rdf2native_int16(i32* %336)
  %338 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %337)
  br label %339

339:                                              ; preds = %333, %329, %322, %315
  br label %498

340:                                              ; preds = %224
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @LDNS_COMMENT_BUBBLEBABBLE, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %370

347:                                              ; preds = %340
  %348 = load i32*, i32** %7, align 8
  %349 = call i32* @ldns_rr_rdf(i32* %348, i32 3)
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %370

351:                                              ; preds = %347
  %352 = load i32*, i32** %7, align 8
  %353 = call i32* @ldns_rr_rdf(i32* %352, i32 3)
  %354 = call i32* @ldns_rdf_data(i32* %353)
  store i32* %354, i32** %12, align 8
  %355 = load i32*, i32** %7, align 8
  %356 = call i32* @ldns_rr_rdf(i32* %355, i32 3)
  %357 = call i64 @ldns_rdf_size(i32* %356)
  store i64 %357, i64* %13, align 8
  %358 = load i32*, i32** %12, align 8
  %359 = load i64, i64* %13, align 8
  %360 = call i8* @ldns_bubblebabble(i32* %358, i64 %359)
  store i8* %360, i8** %14, align 8
  %361 = load i8*, i8** %14, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %363, label %367

363:                                              ; preds = %351
  %364 = load i32*, i32** %5, align 8
  %365 = load i8*, i8** %14, align 8
  %366 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %365)
  br label %367

367:                                              ; preds = %363, %351
  %368 = load i8*, i8** %14, align 8
  %369 = call i32 @LDNS_FREE(i8* %368)
  br label %370

370:                                              ; preds = %367, %347, %340
  br label %498

371:                                              ; preds = %224
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @LDNS_COMMENT_FLAGS, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %371
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @LDNS_COMMENT_NSEC3_CHAIN, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %378
  br label %498

386:                                              ; preds = %378, %371
  %387 = load i32*, i32** %5, align 8
  %388 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %387, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @LDNS_COMMENT_FLAGS, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %421

395:                                              ; preds = %386
  %396 = load i32*, i32** %7, align 8
  %397 = call i32 @ldns_nsec3_optout(i32* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %395
  %400 = load i32*, i32** %5, align 8
  %401 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %405

402:                                              ; preds = %395
  %403 = load i32*, i32** %5, align 8
  %404 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %403, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %405

405:                                              ; preds = %402, %399
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @LDNS_COMMENT_NSEC3_CHAIN, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %420

412:                                              ; preds = %405
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load i32*, i32** %5, align 8
  %419 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %418, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %420

420:                                              ; preds = %417, %412, %405
  br label %421

421:                                              ; preds = %420, %386
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @LDNS_COMMENT_NSEC3_CHAIN, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %494

428:                                              ; preds = %421
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %494

433:                                              ; preds = %428
  %434 = load i32*, i32** %7, align 8
  %435 = call i64 @ldns_rr_owner(i32* %434)
  %436 = call i32* @ldns_dname_label(i64 %435, i32 0)
  store i32* %436, i32** %16, align 8
  %437 = load i32*, i32** %16, align 8
  %438 = icmp ne i32* %437, null
  br i1 %438, label %439, label %463

439:                                              ; preds = %433
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = load i32*, i32** %16, align 8
  %444 = bitcast i32* %443 to i8*
  %445 = call %struct.TYPE_4__* @ldns_rbtree_search(i32* %442, i8* %444)
  store %struct.TYPE_4__* %445, %struct.TYPE_4__** %15, align 8
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %460

450:                                              ; preds = %439
  %451 = load i32*, i32** %5, align 8
  %452 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %453 = load i32*, i32** %5, align 8
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = inttoptr i64 %456 to i32*
  %458 = call i32 @ldns_dnssec_name_name(i32* %457)
  %459 = call i32 @ldns_rdf2buffer_str(i32* %453, i32 %458)
  br label %460

460:                                              ; preds = %450, %439
  %461 = load i32*, i32** %16, align 8
  %462 = call i32 @ldns_rdf_free(i32* %461)
  br label %463

463:                                              ; preds = %460, %433
  %464 = load i32*, i32** %7, align 8
  %465 = call i32 @ldns_nsec3_next_owner(i32* %464)
  %466 = call i32* @ldns_b32_ext2dname(i32 %465)
  store i32* %466, i32** %16, align 8
  %467 = load i32*, i32** %16, align 8
  %468 = icmp ne i32* %467, null
  br i1 %468, label %469, label %493

469:                                              ; preds = %463
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = load i32*, i32** %16, align 8
  %474 = bitcast i32* %473 to i8*
  %475 = call %struct.TYPE_4__* @ldns_rbtree_search(i32* %472, i8* %474)
  store %struct.TYPE_4__* %475, %struct.TYPE_4__** %15, align 8
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %490

480:                                              ; preds = %469
  %481 = load i32*, i32** %5, align 8
  %482 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %481, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %483 = load i32*, i32** %5, align 8
  %484 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = inttoptr i64 %486 to i32*
  %488 = call i32 @ldns_dnssec_name_name(i32* %487)
  %489 = call i32 @ldns_rdf2buffer_str(i32* %483, i32 %488)
  br label %490

490:                                              ; preds = %480, %469
  %491 = load i32*, i32** %16, align 8
  %492 = call i32 @ldns_rdf_free(i32* %491)
  br label %493

493:                                              ; preds = %490, %463
  br label %494

494:                                              ; preds = %493, %428, %421
  %495 = load i32*, i32** %5, align 8
  %496 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %495, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %498

497:                                              ; preds = %224
  br label %498

498:                                              ; preds = %497, %494, %385, %370, %339, %312, %234
  br label %499

499:                                              ; preds = %498, %220
  %500 = load i32*, i32** %5, align 8
  %501 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %500, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %502 = load i32*, i32** %5, align 8
  %503 = call i64 @ldns_buffer_status(i32* %502)
  store i64 %503, i64* %4, align 8
  br label %504

504:                                              ; preds = %499, %205, %97, %85, %75, %54, %38
  %505 = load i64, i64* %4, align 8
  ret i64 %505
}

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_buffer_status(i32*) #1

declare dso_local i64 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rdf2buffer_str_dname(i32*, i64) #1

declare dso_local i32 @ldns_rr_is_question(i32*) #1

declare dso_local i32 @ldns_rr_ttl(i32*) #1

declare dso_local i64 @ldns_rr_class2buffer_str(i32*, i32) #1

declare dso_local i32 @ldns_rr_get_class(i32*) #1

declare dso_local i64 @ldns_output_format_covers_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr2buffer_str_rfc3597(i32*, i32*) #1

declare dso_local i64 @ldns_rr_type2buffer_str(i32*, i32) #1

declare dso_local i32 @ldns_rr_rd_count(i32*) #1

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i64 @ldns_read_uint32(i32*) #1

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i64 @ldns_rdf2buffer_str_fmt(i32*, i32*, i32*) #1

declare dso_local i32 @ldns_rdf2native_int16(i32*) #1

declare dso_local i64 @ldns_calc_keytag(i32*) #1

declare dso_local i32 @ldns_rr_dnskey_key_size(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i8* @ldns_bubblebabble(i32*, i64) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

declare dso_local i32 @ldns_nsec3_optout(i32*) #1

declare dso_local i32* @ldns_dname_label(i64, i32) #1

declare dso_local %struct.TYPE_4__* @ldns_rbtree_search(i32*, i8*) #1

declare dso_local i32 @ldns_rdf2buffer_str(i32*, i32) #1

declare dso_local i32 @ldns_dnssec_name_name(i32*) #1

declare dso_local i32 @ldns_rdf_free(i32*) #1

declare dso_local i32* @ldns_b32_ext2dname(i32) #1

declare dso_local i32 @ldns_nsec3_next_owner(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
