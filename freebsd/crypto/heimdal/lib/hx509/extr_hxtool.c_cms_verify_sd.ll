; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_verify_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_verify_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cms_verify_sd_options = type { i8*, i64, i32, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.pem_data = type { i64, %struct.TYPE_9__* }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"hx509_verify_init_ctx\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"MEMORY:cms-anchors\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MEMORY:cert-store\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"anchors\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to open file %s\00", align 1
@pem_reader = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"PEM reader failed: %d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".pem\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"map_file: %s: %d\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"hx509_cms_unwrap_ContentInfo: %d\00", align 1
@asn1_oid_id_pkcs7_signedData = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Content is not SignedData\00", align 1
@HX509_CMS_VS_ALLOW_ZERO_SIGNER = common dso_local global i32 0, align 4
@HX509_CMS_VS_ALLOW_DATA_OID_MISMATCH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"hx509_cms_verify_signed\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"type: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"unsigned\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"signers:\0A\00", align 1
@hx509_ci_print_names = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"hx509_write_file: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_verify_sd(%struct.cms_verify_sd_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cms_verify_sd_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.pem_data, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_9__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.cms_verify_sd_options* %0, %struct.cms_verify_sd_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %18, align 4
  store i8* null, i8** %20, align 8
  %28 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %29 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @context, align 4
  %34 = call i32 @hx509_context_set_missing_revoke(i32 %33, i32 1)
  br label %35

35:                                               ; preds = %32, %3
  %36 = load i32, i32* @context, align 4
  %37 = call i32 @hx509_lock_init(i32 %36, i32* %16)
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %40 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %39, i32 0, i32 7
  %41 = call i32 @lock_strings(i32 %38, i32* %40)
  %42 = load i32, i32* @context, align 4
  %43 = call i32 @hx509_verify_init_ctx(i32 %42, i32** %7)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @context, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @hx509_err(i32 %47, i32 1, i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %35
  %51 = load i32, i32* @context, align 4
  %52 = call i32 @hx509_certs_init(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32** %15)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @context, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @hx509_err(i32 %56, i32 1, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* @context, align 4
  %61 = call i32 @hx509_certs_init(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32** %13)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @context, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @hx509_err(i32 %65, i32 1, i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @context, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %73 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %72, i32 0, i32 6
  %74 = call i32 @certs_strings(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %70, i32 %71, i32* %73)
  %75 = load i32, i32* @context, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %79 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %78, i32 0, i32 5
  %80 = call i32 @certs_strings(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %76, i32 %77, i32* %79)
  %81 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %82 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %163

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %21, i32 0, i32 1
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %86, align 8
  %87 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %21, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load i8**, i8*** %6, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32* @fopen(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %91, i32** %22, align 8
  %92 = load i32*, i32** %22, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load i8**, i8*** %6, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %94, %85
  %100 = load i32, i32* @context, align 4
  %101 = load i32*, i32** %22, align 8
  %102 = load i32, i32* @pem_reader, align 4
  %103 = call i32 @hx509_pem_read(i32 %100, i32* %101, i32 %102, %struct.pem_data* %21)
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** %22, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %17, align 4
  %110 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %99
  %112 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %21, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %162

115:                                              ; preds = %111
  %116 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %117 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %162

120:                                              ; preds = %115
  %121 = load i8**, i8*** %6, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strrchr(i8* %123, i8 signext 46)
  store i8* %124, i8** %23, align 8
  %125 = load i8*, i8** %23, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %161

127:                                              ; preds = %120
  %128 = load i8*, i8** %23, align 8
  %129 = call i64 @strcasecmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %127
  %132 = load i8**, i8*** %6, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @strdup(i8* %134)
  store i8* %135, i8** %24, align 8
  %136 = load i8*, i8** %24, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %131
  %141 = load i8*, i8** %24, align 8
  %142 = load i8*, i8** %23, align 8
  %143 = load i8**, i8*** %6, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %142 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %141, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i8*, i8** %24, align 8
  %151 = call i32 @_hx509_map_file_os(i8* %150, %struct.TYPE_9__* %11)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = load i8*, i8** %24, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %140
  %159 = load i8*, i8** %24, align 8
  %160 = call i32 @free(i8* %159)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %12, align 8
  br label %161

161:                                              ; preds = %158, %127, %120
  br label %162

162:                                              ; preds = %161, %115, %111
  br label %181

163:                                              ; preds = %68
  %164 = load i8**, i8*** %6, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @rk_undumpdata(i8* %166, i8** %20, i64* %19)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load i8**, i8*** %6, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %173, i32 %174)
  br label %176

176:                                              ; preds = %170, %163
  %177 = load i8*, i8** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i8* %177, i8** %178, align 8
  %179 = load i64, i64* %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i64 %179, i64* %180, align 8
  br label %181

181:                                              ; preds = %176, %162
  %182 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %183 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %200

186:                                              ; preds = %181
  %187 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %188 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @_hx509_map_file_os(i8* %189, %struct.TYPE_9__* %11)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %195 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %17, align 4
  %198 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %193, %186
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %12, align 8
  br label %200

200:                                              ; preds = %199, %181
  %201 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %202 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %229

205:                                              ; preds = %200
  %206 = call i32 @hx509_cms_unwrap_ContentInfo(%struct.TYPE_9__* %10, i32* %26, %struct.TYPE_9__* %25, i32* null)
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i32, i32* %17, align 4
  %211 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %209, %205
  %213 = call i64 @der_heim_oid_cmp(i32* %26, i32* @asn1_oid_id_pkcs7_signedData)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %212
  %218 = call i32 @der_free_oid(i32* %26)
  %219 = load i8*, i8** %20, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call i32 @der_free_octet_string(%struct.TYPE_9__* %10)
  br label %226

223:                                              ; preds = %217
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @rk_xfree(i8* %224)
  store i8* null, i8** %20, align 8
  br label %226

226:                                              ; preds = %223, %221
  %227 = bitcast %struct.TYPE_9__* %10 to i8*
  %228 = bitcast %struct.TYPE_9__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %227, i8* align 8 %228, i64 16, i1 false)
  br label %229

229:                                              ; preds = %226, %200
  %230 = load i32*, i32** %7, align 8
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @hx509_verify_attach_anchors(i32* %230, i32* %231)
  %233 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %234 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %229
  %238 = load i32, i32* @HX509_CMS_VS_ALLOW_ZERO_SIGNER, align 4
  %239 = load i32, i32* %18, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %237, %229
  %242 = load %struct.cms_verify_sd_options*, %struct.cms_verify_sd_options** %4, align 8
  %243 = getelementptr inbounds %struct.cms_verify_sd_options, %struct.cms_verify_sd_options* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* @HX509_CMS_VS_ALLOW_DATA_OID_MISMATCH, align 4
  %248 = load i32, i32* %18, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %18, align 4
  br label %250

250:                                              ; preds = %246, %241
  %251 = load i32, i32* @context, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %18, align 4
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %259 = load i32*, i32** %13, align 8
  %260 = call i32 @hx509_cms_verify_signed(i32 %251, i32* %252, i32 %253, i8* %255, i64 %257, %struct.TYPE_9__* %258, i32* %259, i32* %8, %struct.TYPE_9__* %9, i32** %14)
  store i32 %260, i32* %17, align 4
  %261 = load i8*, i8** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %261, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %250
  %266 = call i32 @der_free_octet_string(%struct.TYPE_9__* %10)
  br label %270

267:                                              ; preds = %250
  %268 = load i8*, i8** %20, align 8
  %269 = call i32 @rk_xfree(i8* %268)
  br label %270

270:                                              ; preds = %267, %265
  %271 = load i32, i32* %17, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i32, i32* @context, align 4
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @hx509_err(i32 %274, i32 1, i32 %275, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %277

277:                                              ; preds = %273, %270
  %278 = call i32 @der_print_heim_oid(i32* %8, i8 signext 46, i8** %27)
  %279 = load i8*, i8** %27, align 8
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %279)
  %281 = load i8*, i8** %27, align 8
  %282 = call i32 @free(i8* %281)
  %283 = call i32 @der_free_oid(i32* %8)
  %284 = load i32*, i32** %14, align 8
  %285 = icmp eq i32* %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %277
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %295

288:                                              ; preds = %277
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %290 = load i32, i32* @context, align 4
  %291 = load i32*, i32** %14, align 8
  %292 = load i32, i32* @hx509_ci_print_names, align 4
  %293 = load i32, i32* @stdout, align 4
  %294 = call i32 @hx509_certs_iter_f(i32 %290, i32* %291, i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %288, %286
  %296 = load i32*, i32** %7, align 8
  %297 = call i32 @hx509_verify_destroy_ctx(i32* %296)
  %298 = call i32 @hx509_certs_free(i32** %13)
  %299 = call i32 @hx509_certs_free(i32** %14)
  %300 = call i32 @hx509_certs_free(i32** %15)
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @hx509_lock_free(i32 %301)
  %303 = load i32, i32* %5, align 4
  %304 = icmp sgt i32 %303, 1
  br i1 %304, label %305, label %320

305:                                              ; preds = %295
  %306 = load i8**, i8*** %6, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 1
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @_hx509_write_file(i8* %308, i8* %310, i64 %312)
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* %17, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %305
  %317 = load i32, i32* %17, align 4
  %318 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %316, %305
  br label %320

320:                                              ; preds = %319, %295
  %321 = call i32 @der_free_octet_string(%struct.TYPE_9__* %9)
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %323 = icmp ne %struct.TYPE_9__* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %326 = call i32 @_hx509_unmap_file_os(%struct.TYPE_9__* %325)
  br label %327

327:                                              ; preds = %324, %320
  ret i32 0
}

declare dso_local i32 @hx509_context_set_missing_revoke(i32, i32) #1

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_verify_init_ctx(i32, i32**) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32**) #1

declare dso_local i32 @certs_strings(i32, i8*, i32*, i32, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @hx509_pem_read(i32, i32*, i32, %struct.pem_data*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @_hx509_map_file_os(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rk_undumpdata(i8*, i8**, i64*) #1

declare dso_local i32 @hx509_cms_unwrap_ContentInfo(%struct.TYPE_9__*, i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @der_free_oid(i32*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_9__*) #1

declare dso_local i32 @rk_xfree(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hx509_verify_attach_anchors(i32*, i32*) #1

declare dso_local i32 @hx509_cms_verify_signed(i32, i32*, i32, i8*, i64, %struct.TYPE_9__*, i32*, i32*, %struct.TYPE_9__*, i32**) #1

declare dso_local i32 @der_print_heim_oid(i32*, i8 signext, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32*, i32, i32) #1

declare dso_local i32 @hx509_verify_destroy_ctx(i32*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local i32 @hx509_lock_free(i32) #1

declare dso_local i32 @_hx509_write_file(i8*, i8*, i64) #1

declare dso_local i32 @_hx509_unmap_file_os(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
