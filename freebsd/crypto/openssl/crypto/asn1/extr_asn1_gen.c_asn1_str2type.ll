; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_asn1_str2type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_asn1_str2type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i32, i8*, i64, i32 }
%struct.TYPE_12__ = type { i8*, i32*, i32* }

@ASN1_F_ASN1_STR2TYPE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ASN1_R_ILLEGAL_NULL_VALUE = common dso_local global i32 0, align 4
@ASN1_GEN_FORMAT_ASCII = common dso_local global i32 0, align 4
@ASN1_R_NOT_ASCII_FORMAT = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_BOOLEAN = common dso_local global i32 0, align 4
@ASN1_R_INTEGER_NOT_ASCII_FORMAT = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_INTEGER = common dso_local global i32 0, align 4
@ASN1_R_OBJECT_NOT_ASCII_FORMAT = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_OBJECT = common dso_local global i32 0, align 4
@ASN1_R_TIME_NOT_ASCII_FORMAT = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_TIME_VALUE = common dso_local global i32 0, align 4
@MBSTRING_ASC = common dso_local global i32 0, align 4
@ASN1_GEN_FORMAT_UTF8 = common dso_local global i32 0, align 4
@MBSTRING_UTF8 = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_FORMAT = common dso_local global i32 0, align 4
@ASN1_GEN_FORMAT_HEX = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_HEX = common dso_local global i32 0, align 4
@ASN1_GEN_FORMAT_BITLIST = common dso_local global i32 0, align 4
@bitstr_cb = common dso_local global i32 0, align 4
@ASN1_R_LIST_ERROR = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_BITSTRING_FORMAT = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@ASN1_R_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"string=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i8*, i32, i32)* @asn1_str2type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @asn1_str2type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i32 1, i32* %12, align 4
  %13 = call %struct.TYPE_13__* (...) @ASN1_TYPE_new()
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %17 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %18 = call i32 @ASN1err(i32 %16, i32 %17)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %303

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %288 [
    i32 137, label %25
    i32 143, label %38
    i32 138, label %61
    i32 142, label %61
    i32 135, label %81
    i32 130, label %101
    i32 141, label %101
    i32 144, label %150
    i32 133, label %150
    i32 139, label %150
    i32 132, label %150
    i32 129, label %150
    i32 128, label %150
    i32 131, label %150
    i32 140, label %150
    i32 136, label %150
    i32 145, label %182
    i32 134, label %182
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %35 = load i32, i32* @ASN1_R_ILLEGAL_NULL_VALUE, align 4
  %36 = call i32 @ASN1err(i32 %34, i32 %35)
  br label %300

37:                                               ; preds = %28, %25
  br label %292

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %44 = load i32, i32* @ASN1_R_NOT_ASCII_FORMAT, align 4
  %45 = call i32 @ASN1err(i32 %43, i32 %44)
  br label %300

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 4
  %54 = call i32 @X509V3_get_value_bool(%struct.TYPE_12__* %9, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %58 = load i32, i32* @ASN1_R_ILLEGAL_BOOLEAN, align 4
  %59 = call i32 @ASN1err(i32 %57, i32 %58)
  br label %297

60:                                               ; preds = %46
  br label %292

61:                                               ; preds = %23, %23
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %67 = load i32, i32* @ASN1_R_INTEGER_NOT_ASCII_FORMAT, align 4
  %68 = call i32 @ASN1err(i32 %66, i32 %67)
  br label %300

69:                                               ; preds = %61
  %70 = load i8*, i8** %5, align 8
  %71 = call i32* @s2i_ASN1_INTEGER(i32* null, i8* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i32* %71, i32** %74, align 8
  %75 = icmp eq i32* %71, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %78 = load i32, i32* @ASN1_R_ILLEGAL_INTEGER, align 4
  %79 = call i32 @ASN1err(i32 %77, i32 %78)
  br label %297

80:                                               ; preds = %69
  br label %292

81:                                               ; preds = %23
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %87 = load i32, i32* @ASN1_R_OBJECT_NOT_ASCII_FORMAT, align 4
  %88 = call i32 @ASN1err(i32 %86, i32 %87)
  br label %300

89:                                               ; preds = %81
  %90 = load i8*, i8** %5, align 8
  %91 = call i32* @OBJ_txt2obj(i8* %90, i32 0)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i32* %91, i32** %94, align 8
  %95 = icmp eq i32* %91, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %98 = load i32, i32* @ASN1_R_ILLEGAL_OBJECT, align 4
  %99 = call i32 @ASN1err(i32 %97, i32 %98)
  br label %297

100:                                              ; preds = %89
  br label %292

101:                                              ; preds = %23, %23
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %107 = load i32, i32* @ASN1_R_TIME_NOT_ASCII_FORMAT, align 4
  %108 = call i32 @ASN1err(i32 %106, i32 %107)
  br label %300

109:                                              ; preds = %101
  %110 = call i8* (...) @ASN1_STRING_new()
  %111 = bitcast i8* %110 to %struct.TYPE_14__*
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %114, align 8
  %115 = icmp eq %struct.TYPE_14__* %111, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %118 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %119 = call i32 @ASN1err(i32 %117, i32 %118)
  br label %297

120:                                              ; preds = %109
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @ASN1_STRING_set(%struct.TYPE_14__* %124, i8* %125, i32 -1)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %130 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %131 = call i32 @ASN1err(i32 %129, i32 %130)
  br label %297

132:                                              ; preds = %120
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = call i32 @ASN1_TIME_check(%struct.TYPE_14__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %147 = load i32, i32* @ASN1_R_ILLEGAL_TIME_VALUE, align 4
  %148 = call i32 @ASN1err(i32 %146, i32 %147)
  br label %297

149:                                              ; preds = %132
  br label %292

150:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @MBSTRING_ASC, align 4
  store i32 %155, i32* %6, align 4
  br label %167

156:                                              ; preds = %150
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @ASN1_GEN_FORMAT_UTF8, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @MBSTRING_UTF8, align 4
  store i32 %161, i32* %6, align 4
  br label %166

162:                                              ; preds = %156
  %163 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %164 = load i32, i32* @ASN1_R_ILLEGAL_FORMAT, align 4
  %165 = call i32 @ASN1err(i32 %163, i32 %164)
  br label %300

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %154
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i8*, i8** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @ASN1_tag2bit(i32 %173)
  %175 = call i32 @ASN1_mbstring_copy(%struct.TYPE_14__** %170, i8* %171, i32 -1, i32 %172, i32 %174)
  %176 = icmp sle i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %167
  %178 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %179 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %180 = call i32 @ASN1err(i32 %178, i32 %179)
  br label %297

181:                                              ; preds = %167
  br label %292

182:                                              ; preds = %23, %23
  %183 = call i8* (...) @ASN1_STRING_new()
  %184 = bitcast i8* %183 to %struct.TYPE_14__*
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store %struct.TYPE_14__* %184, %struct.TYPE_14__** %187, align 8
  %188 = icmp eq %struct.TYPE_14__* %184, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %191 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %192 = call i32 @ASN1err(i32 %190, i32 %191)
  br label %300

193:                                              ; preds = %182
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @ASN1_GEN_FORMAT_HEX, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %224

197:                                              ; preds = %193
  %198 = load i8*, i8** %5, align 8
  %199 = call i8* @OPENSSL_hexstr2buf(i8* %198, i64* %11)
  store i8* %199, i8** %10, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %203 = load i32, i32* @ASN1_R_ILLEGAL_HEX, align 4
  %204 = call i32 @ASN1err(i32 %202, i32 %203)
  br label %297

205:                                              ; preds = %197
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store i8* %206, i8** %211, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  store i64 %212, i64* %217, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  store i32 %218, i32* %223, align 8
  br label %262

224:                                              ; preds = %193
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = load i8*, i8** %5, align 8
  %234 = call i32 @ASN1_STRING_set(%struct.TYPE_14__* %232, i8* %233, i32 -1)
  br label %261

235:                                              ; preds = %224
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @ASN1_GEN_FORMAT_BITLIST, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load i32, i32* %7, align 4
  %241 = icmp eq i32 %240, 145
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* @bitstr_cb, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @CONF_parse_list(i8* %243, i8 signext 44, i32 1, i32 %244, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %242
  %252 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %253 = load i32, i32* @ASN1_R_LIST_ERROR, align 4
  %254 = call i32 @ASN1err(i32 %252, i32 %253)
  br label %297

255:                                              ; preds = %242
  store i32 0, i32* %12, align 4
  br label %260

256:                                              ; preds = %239, %235
  %257 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %258 = load i32, i32* @ASN1_R_ILLEGAL_BITSTRING_FORMAT, align 4
  %259 = call i32 @ASN1err(i32 %257, i32 %258)
  br label %300

260:                                              ; preds = %255
  br label %261

261:                                              ; preds = %260, %228
  br label %262

262:                                              ; preds = %261, %205
  %263 = load i32, i32* %7, align 4
  %264 = icmp eq i32 %263, 145
  br i1 %264, label %265, label %287

265:                                              ; preds = %262
  %266 = load i32, i32* %12, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %265
  %269 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %270 = or i32 %269, 7
  %271 = xor i32 %270, -1
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = and i32 %277, %271
  store i32 %278, i32* %276, align 8
  %279 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %279
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %268, %265, %262
  br label %292

288:                                              ; preds = %23
  %289 = load i32, i32* @ASN1_F_ASN1_STR2TYPE, align 4
  %290 = load i32, i32* @ASN1_R_UNSUPPORTED_TYPE, align 4
  %291 = call i32 @ASN1err(i32 %289, i32 %290)
  br label %297

292:                                              ; preds = %287, %181, %149, %100, %80, %60, %37
  %293 = load i32, i32* %7, align 4
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %296, %struct.TYPE_13__** %4, align 8
  br label %303

297:                                              ; preds = %288, %251, %201, %177, %145, %128, %116, %96, %76, %56
  %298 = load i8*, i8** %5, align 8
  %299 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %298)
  br label %300

300:                                              ; preds = %297, %256, %189, %162, %105, %85, %65, %42, %33
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %302 = call i32 @ASN1_TYPE_free(%struct.TYPE_13__* %301)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %303

303:                                              ; preds = %300, %292, %15
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %304
}

declare dso_local %struct.TYPE_13__* @ASN1_TYPE_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @X509V3_get_value_bool(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @s2i_ASN1_INTEGER(i32*, i8*) #1

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i8* @ASN1_STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @ASN1_TIME_check(%struct.TYPE_14__*) #1

declare dso_local i32 @ASN1_mbstring_copy(%struct.TYPE_14__**, i8*, i32, i32, i32) #1

declare dso_local i32 @ASN1_tag2bit(i32) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i32 @CONF_parse_list(i8*, i8 signext, i32, i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @ASN1_TYPE_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
