; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_create_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_create_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cms_create_sd_options = type { i64, i64, i64, i32, %struct.TYPE_9__, i64, i32, i32, i64, i64, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pem\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cms-signeddata\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@context = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"MEMORY:cert-store\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"MEMORY:cert-pool\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"MEMORY:cert-anchors\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"anchors\00", align 1
@HX509_CMS_SIGNATURE_DETACHED = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_ID_NAME = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_NO_SIGNER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"hx509_query_alloc: %d\00", align 1
@HX509_QUERY_OPTION_PRIVATE_KEY = common dso_local global i32 0, align 4
@HX509_QUERY_OPTION_KU_DIGITALSIGNATURE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"hx509_certs_find\00", align 1
@HX509_CMS_SIGNATURE_NO_CERTS = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_LEAF_ONLY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"map_file: %s: %d\00", align 1
@asn1_oid_id_pkcs7_data = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"hx509_cms_create_signed: %d\00", align 1
@asn1_oid_id_pkcs7_signedData = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"hx509_cms_wrap_ContentInfo: %d\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Content-disposition\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@print_signer = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"print signer\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"CMS SIGNEDDATA\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"hx509_pem_write: %d\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"hx509_write_file: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_create_sd(%struct.cms_create_sd_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cms_create_sd_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_8__, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.cms_create_sd_options* %0, %struct.cms_create_sd_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %21, align 8
  %25 = call i32 @memset(i32* %7, i32 0, i32 4)
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %20, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %45

31:                                               ; preds = %3
  %32 = load i8*, i8** %20, align 8
  %33 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %34 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %39 = call i32 @asprintf(i8** %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %38)
  %40 = load i8*, i8** %21, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %31
  br label %49

45:                                               ; preds = %3
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %21, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* @context, align 4
  %51 = call i32 @hx509_lock_init(i32 %50, i32* %11)
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %54 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %53, i32 0, i32 13
  %55 = call i32 @lock_strings(i32 %52, i32* %54)
  %56 = load i32, i32* @context, align 4
  %57 = call i32 @hx509_certs_init(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32** %12)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @context, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %61, i32 1, i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %49
  %65 = load i32, i32* @context, align 4
  %66 = call i32 @hx509_certs_init(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* null, i32** %13)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @context, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %70, i32 1, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @context, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %78 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %77, i32 0, i32 12
  %79 = call i32 @certs_strings(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %75, i32 %76, %struct.TYPE_10__* %78)
  %80 = load i32, i32* @context, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %84 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %83, i32 0, i32 11
  %85 = call i32 @certs_strings(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %81, i32 %82, %struct.TYPE_10__* %84)
  %86 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %87 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %73
  %92 = load i32, i32* @context, align 4
  %93 = call i32 @hx509_certs_init(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32** %14)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @context, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %97, i32 1, i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* @context, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %105 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %104, i32 0, i32 10
  %106 = call i32 @certs_strings(i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %102, i32 %103, %struct.TYPE_10__* %105)
  br label %108

107:                                              ; preds = %73
  store i32* null, i32** %14, align 8
  br label %108

108:                                              ; preds = %107, %100
  %109 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %110 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @HX509_CMS_SIGNATURE_DETACHED, align 4
  %115 = load i32, i32* %19, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %119 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @HX509_CMS_SIGNATURE_ID_NAME, align 4
  %124 = load i32, i32* %19, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %128 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @HX509_CMS_SIGNATURE_NO_SIGNER, align 4
  %133 = load i32, i32* %19, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %19, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %137 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %180

140:                                              ; preds = %135
  %141 = load i32, i32* @context, align 4
  %142 = call i32 @hx509_query_alloc(i32 %141, i32** %10)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %18, align 4
  %147 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* @HX509_QUERY_OPTION_PRIVATE_KEY, align 4
  %151 = call i32 @hx509_query_match_option(i32* %149, i32 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* @HX509_QUERY_OPTION_KU_DIGITALSIGNATURE, align 4
  %154 = call i32 @hx509_query_match_option(i32* %152, i32 %153)
  %155 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %156 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load i32*, i32** %10, align 8
  %161 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %162 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @hx509_query_match_friendly_name(i32* %160, i32 %163)
  br label %165

165:                                              ; preds = %159, %148
  %166 = load i32, i32* @context, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @hx509_certs_filter(i32 %166, i32* %167, i32* %168, i32** %15)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* @context, align 4
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @hx509_query_free(i32 %170, i32* %171)
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = load i32, i32* @context, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %176, i32 1, i32 %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %179

179:                                              ; preds = %175, %165
  br label %180

180:                                              ; preds = %179, %135
  %181 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %182 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* @HX509_CMS_SIGNATURE_NO_CERTS, align 4
  %187 = load i32, i32* %19, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %191 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @HX509_CMS_SIGNATURE_LEAF_ONLY, align 4
  %196 = load i32, i32* %19, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i8*, i8** %20, align 8
  %200 = call i32 @rk_undumpdata(i8* %199, i8** %17, i64* %16)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i8*, i8** %20, align 8
  %205 = load i32, i32* %18, align 4
  %206 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %204, i32 %205)
  br label %207

207:                                              ; preds = %203, %198
  %208 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %209 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i32, i32* @context, align 4
  %215 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %216 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %215, i32 0, i32 4
  %217 = call i32 @peer_strings(i32 %214, i32** %8, %struct.TYPE_9__* %216)
  br label %218

218:                                              ; preds = %213, %207
  %219 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %220 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @parse_oid(i32 %221, i32* @asn1_oid_id_pkcs7_data, i32* %7)
  %223 = load i32, i32* @context, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i8*, i8** %17, align 8
  %226 = load i64, i64* %16, align 8
  %227 = load i32*, i32** %15, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = load i32*, i32** %14, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = call i32 @hx509_cms_create_signed(i32 %223, i32 %224, i32* %7, i8* %225, i64 %226, i32* null, i32* %227, i32* %228, i32* %229, i32* %230, %struct.TYPE_8__* %9)
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %218
  %235 = load i32, i32* @context, align 4
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %18, align 4
  %238 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %235, i32 1, i32 %236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %234, %218
  %240 = call i32 @hx509_certs_free(i32** %14)
  %241 = call i32 @hx509_certs_free(i32** %13)
  %242 = call i32 @hx509_certs_free(i32** %12)
  %243 = load i8*, i8** %17, align 8
  %244 = call i32 @rk_xfree(i8* %243)
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @hx509_lock_free(i32 %245)
  %247 = load i32*, i32** %8, align 8
  %248 = call i32 @hx509_peer_info_free(i32* %247)
  %249 = call i32 @der_free_oid(i32* %7)
  %250 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %251 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %239
  %255 = call i32 @hx509_cms_wrap_ContentInfo(i32* @asn1_oid_id_pkcs7_signedData, %struct.TYPE_8__* %9, %struct.TYPE_8__* %22)
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32, i32* %18, align 4
  %260 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %258, %254
  %262 = call i32 @der_free_octet_string(%struct.TYPE_8__* %9)
  %263 = bitcast %struct.TYPE_8__* %9 to i8*
  %264 = bitcast %struct.TYPE_8__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %263, i8* align 4 %264, i64 8, i1 false)
  br label %265

265:                                              ; preds = %261, %239
  %266 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %267 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %320

270:                                              ; preds = %265
  store i32* null, i32** %23, align 8
  %271 = load %struct.cms_create_sd_options*, %struct.cms_create_sd_options** %4, align 8
  %272 = getelementptr inbounds %struct.cms_create_sd_options, %struct.cms_create_sd_options* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)
  %277 = call i32 @hx509_pem_add_header(i32** %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %276)
  %278 = load i32*, i32** %15, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %293

280:                                              ; preds = %270
  %281 = load i32, i32* @context, align 4
  %282 = load i32*, i32** %15, align 8
  %283 = load i32, i32* @print_signer, align 4
  %284 = load i32*, i32** %23, align 8
  %285 = call i32 @hx509_certs_iter_f(i32 %281, i32* %282, i32 %283, i32* %284)
  store i32 %285, i32* %18, align 4
  %286 = load i32, i32* %18, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %280
  %289 = load i32, i32* @context, align 4
  %290 = load i32, i32* %18, align 4
  %291 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %289, i32 1, i32 %290, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  br label %292

292:                                              ; preds = %288, %280
  br label %293

293:                                              ; preds = %292, %270
  %294 = load i8*, i8** %21, align 8
  %295 = call i32* @fopen(i8* %294, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  store i32* %295, i32** %24, align 8
  %296 = load i32*, i32** %24, align 8
  %297 = icmp eq i32* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load i8*, i8** %21, align 8
  %300 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* %299)
  br label %301

301:                                              ; preds = %298, %293
  %302 = load i32, i32* @context, align 4
  %303 = load i32*, i32** %23, align 8
  %304 = load i32*, i32** %24, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @hx509_pem_write(i32 %302, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32* %303, i32* %304, i32 %306, i32 %308)
  store i32 %309, i32* %18, align 4
  %310 = load i32*, i32** %24, align 8
  %311 = call i32 @fclose(i32* %310)
  %312 = load i32*, i32** %23, align 8
  %313 = call i32 @hx509_pem_free_header(i32* %312)
  %314 = load i32, i32* %18, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %301
  %317 = load i32, i32* %18, align 4
  %318 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %316, %301
  br label %333

320:                                              ; preds = %265
  %321 = load i8*, i8** %21, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @_hx509_write_file(i8* %321, i32 %323, i32 %325)
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %18, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %320
  %330 = load i32, i32* %18, align 4
  %331 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 %330)
  br label %332

332:                                              ; preds = %329, %320
  br label %333

333:                                              ; preds = %332, %319
  %334 = call i32 @hx509_certs_free(i32** %15)
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @free(i32 %336)
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32**) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @certs_strings(i32, i8*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @hx509_query_alloc(i32, i32**) #1

declare dso_local i32 @hx509_query_match_option(i32*, i32) #1

declare dso_local i32 @hx509_query_match_friendly_name(i32*, i32) #1

declare dso_local i32 @hx509_certs_filter(i32, i32*, i32*, i32**) #1

declare dso_local i32 @hx509_query_free(i32, i32*) #1

declare dso_local i32 @rk_undumpdata(i8*, i8**, i64*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @peer_strings(i32, i32**, %struct.TYPE_9__*) #1

declare dso_local i32 @parse_oid(i32, i32*, i32*) #1

declare dso_local i32 @hx509_cms_create_signed(i32, i32, i32*, i8*, i64, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local i32 @rk_xfree(i8*) #1

declare dso_local i32 @hx509_lock_free(i32) #1

declare dso_local i32 @hx509_peer_info_free(i32*) #1

declare dso_local i32 @der_free_oid(i32*) #1

declare dso_local i32 @hx509_cms_wrap_ContentInfo(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hx509_pem_add_header(i32**, i8*, i8*) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32*, i32, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @hx509_pem_write(i32, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @hx509_pem_free_header(i32*) #1

declare dso_local i32 @_hx509_write_file(i8*, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
