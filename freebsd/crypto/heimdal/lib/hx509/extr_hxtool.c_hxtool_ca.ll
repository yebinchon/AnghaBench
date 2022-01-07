; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_hxtool_ca.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_hxtool_ca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.certificate_sign_options = type { i32, i32*, i64, i64, i32, i64, i64, i32, i64, i32*, i32*, i64, i32*, i32, i32*, i32, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.hx509_generate_private_context = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"--ca-certificate argument missing (not using --self-signed)\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"--ca-private-key argument missing (using --self-signed)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"--certificate argument missing\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"--template-certificate not no --template-fields\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid lifetime: %s\00", align 1
@context = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"hx509_certs_init: %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"hx509_query_alloc: %d\00", align 1
@HX509_QUERY_OPTION_PRIVATE_KEY = common dso_local global i32 0, align 4
@HX509_QUERY_OPTION_KU_KEYCERTSIGN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"no CA certificate found\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"no signing private key\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"can't be self-signing and have a request at the same time\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"missing ca key\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"read_private_key\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"hx509_private_key2SPKI: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"parse_request: %s\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"get name\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"get spki\00", align 1
@asn1_oid_id_pkcs1_rsaEncryption = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"generate private key\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"read_private_key for certificate\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"hx509_parse_name\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"hx509_ca_tbs_init\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"no template certificate found\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"hx509_ca_tbs_set_template\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"der_parse_hex_heim_integer\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"hx509_ca_tbs_set_spki\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"hx509_ca_tbs_set_subject\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"hx509_ca_tbs_add_crl_dp_uri\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"hx509_ca_tbs_set_ca\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"hx509_ca_tbs_set_proxy\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"hx509_ca_tbs_set_domaincontroller\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"hx509_ca_tbs_set_notAfter_lifetime\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"hx509_ca_sign_self\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"hx509_ca_sign\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"_hx509_cert_assign_key\00", align 1
@HX509_CERTS_CREATE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [17 x i8] c"hx509_certs_init\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"hx509_certs_add\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"hx509_certs_store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxtool_ca(%struct.certificate_sign_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.certificate_sign_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.hx509_generate_private_context*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.certificate_sign_options* %0, %struct.certificate_sign_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %25 = call i32 @memset(%struct.TYPE_9__* %14, i32 0, i32 8)
  %26 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %27 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %26, i32 0, i32 17
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %32 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30, %3
  %38 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %39 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %38, i32 0, i32 16
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %44 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %43, i32 0, i32 14
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %49 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47, %42, %37
  %55 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %56 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %63 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %62, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %68 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %67, i32 0, i32 9
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %76 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %81 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @parse_time(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %88 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %79
  br label %92

92:                                               ; preds = %91, %74
  %93 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %94 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %93, i32 0, i32 17
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %148

97:                                               ; preds = %92
  store i32* null, i32** %16, align 8
  %98 = load i32, i32* @context, align 4
  %99 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %100 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %99, i32 0, i32 17
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @hx509_certs_init(i32 %98, i32* %101, i32 0, i32* null, i32** %16)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i32, i32* @context, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %109 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %108, i32 0, i32 17
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %106, i32 1, i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %110)
  br label %112

112:                                              ; preds = %105, %97
  %113 = load i32, i32* @context, align 4
  %114 = call i32 @hx509_query_alloc(i32 %113, i32** %17)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* @HX509_QUERY_OPTION_PRIVATE_KEY, align 4
  %123 = call i32 @hx509_query_match_option(i32* %121, i32 %122)
  %124 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %125 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i32*, i32** %17, align 8
  %130 = load i32, i32* @HX509_QUERY_OPTION_KU_KEYCERTSIGN, align 4
  %131 = call i32 @hx509_query_match_option(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %120
  %133 = load i32, i32* @context, align 4
  %134 = load i32*, i32** %16, align 8
  %135 = load i32*, i32** %17, align 8
  %136 = call i32 @hx509_certs_find(i32 %133, i32* %134, i32* %135, i32** %9)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* @context, align 4
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @hx509_query_free(i32 %137, i32* %138)
  %140 = call i32 @hx509_certs_free(i32** %16)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load i32, i32* @context, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %144, i32 1, i32 %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %132
  br label %176

148:                                              ; preds = %92
  %149 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %150 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %148
  %154 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %155 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %154, i32 0, i32 14
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %160 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %159, i32 0, i32 16
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %158, %153
  %166 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %167 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %166, i32 0, i32 15
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %165
  br label %175

173:                                              ; preds = %148
  %174 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %172
  br label %176

176:                                              ; preds = %175, %147
  %177 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %178 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %177, i32 0, i32 16
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %207

181:                                              ; preds = %176
  %182 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %183 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %182, i32 0, i32 16
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @read_private_key(i32* %184, i64* %11)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %181
  %191 = load i32, i32* @context, align 4
  %192 = load i64, i64* %11, align 8
  %193 = call i32 @hx509_private_key2SPKI(i32 %191, i64 %192, %struct.TYPE_9__* %14)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %196, %190
  %200 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %201 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i64, i64* %11, align 8
  store i64 %205, i64* %12, align 8
  br label %206

206:                                              ; preds = %204, %199
  br label %207

207:                                              ; preds = %206, %176
  %208 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %209 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %208, i32 0, i32 15
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %249

212:                                              ; preds = %207
  %213 = load i32, i32* @context, align 4
  %214 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %215 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %214, i32 0, i32 15
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @_hx509_request_parse(i32 %213, i32 %216, i32* %18)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %212
  %221 = load i32, i32* @context, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %224 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %221, i32 1, i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %220, %212
  %228 = load i32, i32* @context, align 4
  %229 = load i32, i32* %18, align 4
  %230 = call i32 @hx509_request_get_name(i32 %228, i32 %229, i32** %13)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load i32, i32* @context, align 4
  %235 = load i32, i32* %7, align 4
  %236 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %234, i32 1, i32 %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %237

237:                                              ; preds = %233, %227
  %238 = load i32, i32* @context, align 4
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @hx509_request_get_SubjectPublicKeyInfo(i32 %238, i32 %239, %struct.TYPE_9__* %14)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %237
  %244 = load i32, i32* @context, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %244, i32 1, i32 %245, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %247

247:                                              ; preds = %243, %237
  %248 = call i32 @hx509_request_free(i32* %18)
  br label %249

249:                                              ; preds = %247, %207
  %250 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %251 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %250, i32 0, i32 14
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %312

254:                                              ; preds = %249
  %255 = load i32, i32* @context, align 4
  %256 = call i32 @_hx509_generate_private_key_init(i32 %255, i32* @asn1_oid_id_pkcs1_rsaEncryption, %struct.hx509_generate_private_context** %19)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i32, i32* @context, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %260, i32 1, i32 %261, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %263

263:                                              ; preds = %259, %254
  %264 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %265 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* @context, align 4
  %270 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %19, align 8
  %271 = call i32 @_hx509_generate_private_key_is_ca(i32 %269, %struct.hx509_generate_private_context* %270)
  br label %272

272:                                              ; preds = %268, %263
  %273 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %274 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %273, i32 0, i32 13
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %272
  %278 = load i32, i32* @context, align 4
  %279 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %19, align 8
  %280 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %281 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %280, i32 0, i32 13
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @_hx509_generate_private_key_bits(i32 %278, %struct.hx509_generate_private_context* %279, i32 %282)
  br label %284

284:                                              ; preds = %277, %272
  %285 = load i32, i32* @context, align 4
  %286 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %19, align 8
  %287 = call i32 @_hx509_generate_private_key(i32 %285, %struct.hx509_generate_private_context* %286, i64* %12)
  store i32 %287, i32* %7, align 4
  %288 = call i32 @_hx509_generate_private_key_free(%struct.hx509_generate_private_context** %19)
  %289 = load i32, i32* %7, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load i32, i32* @context, align 4
  %293 = load i32, i32* %7, align 4
  %294 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %292, i32 1, i32 %293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %295

295:                                              ; preds = %291, %284
  %296 = load i32, i32* @context, align 4
  %297 = load i64, i64* %12, align 8
  %298 = call i32 @hx509_private_key2SPKI(i32 %296, i64 %297, %struct.TYPE_9__* %14)
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = load i32, i32* %7, align 4
  %303 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %301, %295
  %305 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %306 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i64, i64* %12, align 8
  store i64 %310, i64* %11, align 8
  br label %311

311:                                              ; preds = %309, %304
  br label %312

312:                                              ; preds = %311, %249
  %313 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %314 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %313, i32 0, i32 12
  %315 = load i32*, i32** %314, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %327

317:                                              ; preds = %312
  %318 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %319 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %318, i32 0, i32 12
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @read_private_key(i32* %320, i64* %12)
  store i32 %321, i32* %7, align 4
  %322 = load i32, i32* %7, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %317
  %325 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %317
  br label %327

327:                                              ; preds = %326, %312
  %328 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %329 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %328, i32 0, i32 11
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %350

332:                                              ; preds = %327
  %333 = load i32*, i32** %13, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = call i32 @hx509_name_free(i32** %13)
  br label %337

337:                                              ; preds = %335, %332
  %338 = load i32, i32* @context, align 4
  %339 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %340 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %339, i32 0, i32 11
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @hx509_parse_name(i32 %338, i64 %341, i32** %13)
  store i32 %342, i32* %7, align 4
  %343 = load i32, i32* %7, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = load i32, i32* @context, align 4
  %347 = load i32, i32* %7, align 4
  %348 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %346, i32 1, i32 %347, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %349

349:                                              ; preds = %345, %337
  br label %350

350:                                              ; preds = %349, %327
  %351 = load i32, i32* @context, align 4
  %352 = call i32 @hx509_ca_tbs_init(i32 %351, i32* %8)
  store i32 %352, i32* %7, align 4
  %353 = load i32, i32* %7, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %350
  %356 = load i32, i32* @context, align 4
  %357 = load i32, i32* %7, align 4
  %358 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %356, i32 1, i32 %357, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %359

359:                                              ; preds = %355, %350
  %360 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %361 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %360, i32 0, i32 10
  %362 = load i32*, i32** %361, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %410

364:                                              ; preds = %359
  %365 = load i32, i32* @context, align 4
  %366 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %367 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %366, i32 0, i32 10
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @hx509_certs_init(i32 %365, i32* %368, i32 0, i32* null, i32** %21)
  store i32 %369, i32* %7, align 4
  %370 = load i32, i32* %7, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %364
  %373 = load i32, i32* @context, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %376 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %375, i32 0, i32 10
  %377 = load i32*, i32** %376, align 8
  %378 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %373, i32 1, i32 %374, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %377)
  br label %379

379:                                              ; preds = %372, %364
  %380 = load i32, i32* @context, align 4
  %381 = load i32*, i32** %21, align 8
  %382 = call i32 @hx509_get_one_cert(i32 %380, i32* %381, i32** %20)
  store i32 %382, i32* %7, align 4
  %383 = call i32 @hx509_certs_free(i32** %21)
  %384 = load i32, i32* %7, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = load i32, i32* @context, align 4
  %388 = load i32, i32* %7, align 4
  %389 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %387, i32 1, i32 %388, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  br label %390

390:                                              ; preds = %386, %379
  %391 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %392 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %391, i32 0, i32 9
  %393 = load i32*, i32** %392, align 8
  %394 = call i32 (...) @hx509_ca_tbs_template_units()
  %395 = call i32 @parse_units(i32* %393, i32 %394, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0))
  store i32 %395, i32* %22, align 4
  %396 = load i32, i32* @context, align 4
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* %22, align 4
  %399 = load i32*, i32** %20, align 8
  %400 = call i32 @hx509_ca_tbs_set_template(i32 %396, i32 %397, i32 %398, i32* %399)
  store i32 %400, i32* %7, align 4
  %401 = load i32, i32* %7, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %390
  %404 = load i32, i32* @context, align 4
  %405 = load i32, i32* %7, align 4
  %406 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %404, i32 1, i32 %405, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  br label %407

407:                                              ; preds = %403, %390
  %408 = load i32*, i32** %20, align 8
  %409 = call i32 @hx509_cert_free(i32* %408)
  br label %410

410:                                              ; preds = %407, %359
  %411 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %412 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %411, i32 0, i32 8
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %436

415:                                              ; preds = %410
  %416 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %417 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %416, i32 0, i32 8
  %418 = load i64, i64* %417, align 8
  %419 = call i32 @der_parse_hex_heim_integer(i64 %418, i32* %23)
  store i32 %419, i32* %7, align 4
  %420 = load i32, i32* %7, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %415
  %423 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  br label %424

424:                                              ; preds = %422, %415
  %425 = load i32, i32* @context, align 4
  %426 = load i32, i32* %8, align 4
  %427 = call i32 @hx509_ca_tbs_set_serialnumber(i32 %425, i32 %426, i32* %23)
  store i32 %427, i32* %7, align 4
  %428 = load i32, i32* %7, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %424
  %431 = load i32, i32* @context, align 4
  %432 = load i32, i32* %7, align 4
  %433 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %431, i32 1, i32 %432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %434

434:                                              ; preds = %430, %424
  %435 = call i32 @der_free_heim_integer(i32* %23)
  br label %436

436:                                              ; preds = %434, %410
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %436
  %442 = load i32, i32* @context, align 4
  %443 = load i32, i32* %8, align 4
  %444 = call i32 @hx509_ca_tbs_set_spki(i32 %442, i32 %443, %struct.TYPE_9__* %14)
  store i32 %444, i32* %7, align 4
  %445 = load i32, i32* %7, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %441
  %448 = load i32, i32* @context, align 4
  %449 = load i32, i32* %7, align 4
  %450 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %448, i32 1, i32 %449, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  br label %451

451:                                              ; preds = %447, %441
  br label %452

452:                                              ; preds = %451, %436
  %453 = load i32*, i32** %13, align 8
  %454 = icmp ne i32* %453, null
  br i1 %454, label %455, label %467

455:                                              ; preds = %452
  %456 = load i32, i32* @context, align 4
  %457 = load i32, i32* %8, align 4
  %458 = load i32*, i32** %13, align 8
  %459 = call i32 @hx509_ca_tbs_set_subject(i32 %456, i32 %457, i32* %458)
  store i32 %459, i32* %7, align 4
  %460 = load i32, i32* %7, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

462:                                              ; preds = %455
  %463 = load i32, i32* @context, align 4
  %464 = load i32, i32* %7, align 4
  %465 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %463, i32 1, i32 %464, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  br label %466

466:                                              ; preds = %462, %455
  br label %467

467:                                              ; preds = %466, %452
  %468 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %469 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 8
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %486

472:                                              ; preds = %467
  %473 = load i32, i32* @context, align 4
  %474 = load i32, i32* %8, align 4
  %475 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %476 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %475, i32 0, i32 7
  %477 = load i32, i32* %476, align 8
  %478 = call i32 @hx509_ca_tbs_add_crl_dp_uri(i32 %473, i32 %474, i32 %477, i32* null)
  store i32 %478, i32* %7, align 4
  %479 = load i32, i32* %7, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %472
  %482 = load i32, i32* @context, align 4
  %483 = load i32, i32* %7, align 4
  %484 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %482, i32 1, i32 %483, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  br label %485

485:                                              ; preds = %481, %472
  br label %486

486:                                              ; preds = %485, %467
  %487 = load i32, i32* @context, align 4
  %488 = load i32, i32* %8, align 4
  %489 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %490 = call i32 @eval_types(i32 %487, i32 %488, %struct.certificate_sign_options* %489)
  %491 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %492 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %491, i32 0, i32 6
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %509

495:                                              ; preds = %486
  %496 = load i32, i32* @context, align 4
  %497 = load i32, i32* %8, align 4
  %498 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %499 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %498, i32 0, i32 4
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @hx509_ca_tbs_set_ca(i32 %496, i32 %497, i32 %500)
  store i32 %501, i32* %7, align 4
  %502 = load i32, i32* %7, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %495
  %505 = load i32, i32* @context, align 4
  %506 = load i32, i32* %7, align 4
  %507 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %505, i32 1, i32 %506, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  br label %508

508:                                              ; preds = %504, %495
  br label %509

509:                                              ; preds = %508, %486
  %510 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %511 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %510, i32 0, i32 5
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %528

514:                                              ; preds = %509
  %515 = load i32, i32* @context, align 4
  %516 = load i32, i32* %8, align 4
  %517 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %518 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @hx509_ca_tbs_set_proxy(i32 %515, i32 %516, i32 %519)
  store i32 %520, i32* %7, align 4
  %521 = load i32, i32* %7, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %527

523:                                              ; preds = %514
  %524 = load i32, i32* @context, align 4
  %525 = load i32, i32* %7, align 4
  %526 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %524, i32 1, i32 %525, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  br label %527

527:                                              ; preds = %523, %514
  br label %528

528:                                              ; preds = %527, %509
  %529 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %530 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %544

533:                                              ; preds = %528
  %534 = load i32, i32* @context, align 4
  %535 = load i32, i32* %8, align 4
  %536 = call i32 @hx509_ca_tbs_set_domaincontroller(i32 %534, i32 %535)
  %537 = load i32, i32* %7, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %543

539:                                              ; preds = %533
  %540 = load i32, i32* @context, align 4
  %541 = load i32, i32* %7, align 4
  %542 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %540, i32 1, i32 %541, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0))
  br label %543

543:                                              ; preds = %539, %533
  br label %544

544:                                              ; preds = %543, %528
  %545 = load i32, i32* %15, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %559

547:                                              ; preds = %544
  %548 = load i32, i32* @context, align 4
  %549 = load i32, i32* %8, align 4
  %550 = load i32, i32* %15, align 4
  %551 = call i32 @hx509_ca_tbs_set_notAfter_lifetime(i32 %548, i32 %549, i32 %550)
  store i32 %551, i32* %7, align 4
  %552 = load i32, i32* %7, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %547
  %555 = load i32, i32* @context, align 4
  %556 = load i32, i32* %7, align 4
  %557 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %555, i32 1, i32 %556, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  br label %558

558:                                              ; preds = %554, %547
  br label %559

559:                                              ; preds = %558, %544
  %560 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %561 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %560, i32 0, i32 2
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %576

564:                                              ; preds = %559
  %565 = load i32, i32* @context, align 4
  %566 = load i32, i32* %8, align 4
  %567 = load i64, i64* %11, align 8
  %568 = call i32 @hx509_ca_sign_self(i32 %565, i32 %566, i64 %567, i32** %10)
  store i32 %568, i32* %7, align 4
  %569 = load i32, i32* %7, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %575

571:                                              ; preds = %564
  %572 = load i32, i32* @context, align 4
  %573 = load i32, i32* %7, align 4
  %574 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %572, i32 1, i32 %573, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  br label %575

575:                                              ; preds = %571, %564
  br label %588

576:                                              ; preds = %559
  %577 = load i32, i32* @context, align 4
  %578 = load i32, i32* %8, align 4
  %579 = load i32*, i32** %9, align 8
  %580 = call i32 @hx509_ca_sign(i32 %577, i32 %578, i32* %579, i32** %10)
  store i32 %580, i32* %7, align 4
  %581 = load i32, i32* %7, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %587

583:                                              ; preds = %576
  %584 = load i32, i32* @context, align 4
  %585 = load i32, i32* %7, align 4
  %586 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %584, i32 1, i32 %585, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  br label %587

587:                                              ; preds = %583, %576
  br label %588

588:                                              ; preds = %587, %575
  %589 = load i64, i64* %12, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %602

591:                                              ; preds = %588
  %592 = load i32*, i32** %10, align 8
  %593 = load i64, i64* %12, align 8
  %594 = call i32 @_hx509_cert_assign_key(i32* %592, i64 %593)
  store i32 %594, i32* %7, align 4
  %595 = load i32, i32* %7, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %601

597:                                              ; preds = %591
  %598 = load i32, i32* @context, align 4
  %599 = load i32, i32* %7, align 4
  %600 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %598, i32 1, i32 %599, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  br label %601

601:                                              ; preds = %597, %591
  br label %602

602:                                              ; preds = %601, %588
  %603 = load i32, i32* @context, align 4
  %604 = load %struct.certificate_sign_options*, %struct.certificate_sign_options** %4, align 8
  %605 = getelementptr inbounds %struct.certificate_sign_options, %struct.certificate_sign_options* %604, i32 0, i32 1
  %606 = load i32*, i32** %605, align 8
  %607 = load i32, i32* @HX509_CERTS_CREATE, align 4
  %608 = call i32 @hx509_certs_init(i32 %603, i32* %606, i32 %607, i32* null, i32** %24)
  store i32 %608, i32* %7, align 4
  %609 = load i32, i32* %7, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %615

611:                                              ; preds = %602
  %612 = load i32, i32* @context, align 4
  %613 = load i32, i32* %7, align 4
  %614 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %612, i32 1, i32 %613, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  br label %615

615:                                              ; preds = %611, %602
  %616 = load i32, i32* @context, align 4
  %617 = load i32*, i32** %24, align 8
  %618 = load i32*, i32** %10, align 8
  %619 = call i32 @hx509_certs_add(i32 %616, i32* %617, i32* %618)
  store i32 %619, i32* %7, align 4
  %620 = load i32, i32* %7, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %626

622:                                              ; preds = %615
  %623 = load i32, i32* @context, align 4
  %624 = load i32, i32* %7, align 4
  %625 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %623, i32 1, i32 %624, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0))
  br label %626

626:                                              ; preds = %622, %615
  %627 = load i32, i32* @context, align 4
  %628 = load i32*, i32** %24, align 8
  %629 = call i32 @hx509_certs_store(i32 %627, i32* %628, i32 0, i32* null)
  store i32 %629, i32* %7, align 4
  %630 = load i32, i32* %7, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %636

632:                                              ; preds = %626
  %633 = load i32, i32* @context, align 4
  %634 = load i32, i32* %7, align 4
  %635 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %633, i32 1, i32 %634, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0))
  br label %636

636:                                              ; preds = %632, %626
  %637 = call i32 @hx509_certs_free(i32** %24)
  %638 = load i32*, i32** %13, align 8
  %639 = icmp ne i32* %638, null
  br i1 %639, label %640, label %642

640:                                              ; preds = %636
  %641 = call i32 @hx509_name_free(i32** %13)
  br label %642

642:                                              ; preds = %640, %636
  %643 = load i32*, i32** %9, align 8
  %644 = icmp ne i32* %643, null
  br i1 %644, label %645, label %648

645:                                              ; preds = %642
  %646 = load i32*, i32** %9, align 8
  %647 = call i32 @hx509_cert_free(i32* %646)
  br label %648

648:                                              ; preds = %645, %642
  %649 = load i32*, i32** %10, align 8
  %650 = call i32 @hx509_cert_free(i32* %649)
  %651 = call i32 @free_SubjectPublicKeyInfo(%struct.TYPE_9__* %14)
  %652 = load i64, i64* %11, align 8
  %653 = load i64, i64* %12, align 8
  %654 = icmp ne i64 %652, %653
  br i1 %654, label %655, label %657

655:                                              ; preds = %648
  %656 = call i32 @hx509_private_key_free(i64* %11)
  br label %657

657:                                              ; preds = %655, %648
  %658 = call i32 @hx509_private_key_free(i64* %12)
  %659 = call i32 @hx509_ca_tbs_free(i32* %8)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @parse_time(i32, i8*) #1

declare dso_local i32 @hx509_certs_init(i32, i32*, i32, i32*, i32**) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @hx509_query_alloc(i32, i32**) #1

declare dso_local i32 @hx509_query_match_option(i32*, i32) #1

declare dso_local i32 @hx509_certs_find(i32, i32*, i32*, i32**) #1

declare dso_local i32 @hx509_query_free(i32, i32*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local i32 @read_private_key(i32*, i64*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @hx509_private_key2SPKI(i32, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @_hx509_request_parse(i32, i32, i32*) #1

declare dso_local i32 @hx509_request_get_name(i32, i32, i32**) #1

declare dso_local i32 @hx509_request_get_SubjectPublicKeyInfo(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @hx509_request_free(i32*) #1

declare dso_local i32 @_hx509_generate_private_key_init(i32, i32*, %struct.hx509_generate_private_context**) #1

declare dso_local i32 @_hx509_generate_private_key_is_ca(i32, %struct.hx509_generate_private_context*) #1

declare dso_local i32 @_hx509_generate_private_key_bits(i32, %struct.hx509_generate_private_context*, i32) #1

declare dso_local i32 @_hx509_generate_private_key(i32, %struct.hx509_generate_private_context*, i64*) #1

declare dso_local i32 @_hx509_generate_private_key_free(%struct.hx509_generate_private_context**) #1

declare dso_local i32 @hx509_name_free(i32**) #1

declare dso_local i32 @hx509_parse_name(i32, i64, i32**) #1

declare dso_local i32 @hx509_ca_tbs_init(i32, i32*) #1

declare dso_local i32 @hx509_get_one_cert(i32, i32*, i32**) #1

declare dso_local i32 @parse_units(i32*, i32, i8*) #1

declare dso_local i32 @hx509_ca_tbs_template_units(...) #1

declare dso_local i32 @hx509_ca_tbs_set_template(i32, i32, i32, i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @der_parse_hex_heim_integer(i64, i32*) #1

declare dso_local i32 @hx509_ca_tbs_set_serialnumber(i32, i32, i32*) #1

declare dso_local i32 @der_free_heim_integer(i32*) #1

declare dso_local i32 @hx509_ca_tbs_set_spki(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @hx509_ca_tbs_set_subject(i32, i32, i32*) #1

declare dso_local i32 @hx509_ca_tbs_add_crl_dp_uri(i32, i32, i32, i32*) #1

declare dso_local i32 @eval_types(i32, i32, %struct.certificate_sign_options*) #1

declare dso_local i32 @hx509_ca_tbs_set_ca(i32, i32, i32) #1

declare dso_local i32 @hx509_ca_tbs_set_proxy(i32, i32, i32) #1

declare dso_local i32 @hx509_ca_tbs_set_domaincontroller(i32, i32) #1

declare dso_local i32 @hx509_ca_tbs_set_notAfter_lifetime(i32, i32, i32) #1

declare dso_local i32 @hx509_ca_sign_self(i32, i32, i64, i32**) #1

declare dso_local i32 @hx509_ca_sign(i32, i32, i32*, i32**) #1

declare dso_local i32 @_hx509_cert_assign_key(i32*, i64) #1

declare dso_local i32 @hx509_certs_add(i32, i32*, i32*) #1

declare dso_local i32 @hx509_certs_store(i32, i32*, i32, i32*) #1

declare dso_local i32 @free_SubjectPublicKeyInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @hx509_private_key_free(i64*) #1

declare dso_local i32 @hx509_ca_tbs_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
