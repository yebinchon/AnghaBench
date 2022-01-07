; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_chain_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_chain_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32, i64, i32, i32, %struct.x509_certificate*, i64, i64 }
%struct.os_time = type { i64 }

@X509_VALIDATE_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"X509: Validate certificate chain\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"X509: %lu: %s\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"X509: Certificate not valid (now=%lu not_before=%lu not_after=%lu)\00", align 1
@X509_VALIDATE_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"X509: Certificate chain issuer name mismatch\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"X509: cert issuer: %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"X509: next cert subject: %s\00", align 1
@X509_VALIDATE_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@X509_VALIDATE_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@X509_EXT_PATH_LEN_CONSTRAINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"X509: pathLenConstraint not met (idx=%lu issuer pathLenConstraint=%lu)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"X509: Invalid certificate signature within chain\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"X509: Found issuer from the list of trusted certificates\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"X509: Invalid certificate signature\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"X509: Trusted certificate found to complete the chain\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"X509: Did not find any of the issuers from the list of trusted certificates\00", align 1
@X509_VALIDATE_UNKNOWN_CA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [70 x i8] c"X509: Certificate chain validation disabled - ignore unknown CA issue\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"X509: Certificate chain valid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_certificate_chain_validate(%struct.x509_certificate* %0, %struct.x509_certificate* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca %struct.x509_certificate*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.x509_certificate*, align 8
  %13 = alloca %struct.x509_certificate*, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca %struct.os_time, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %6, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @X509_VALIDATE_OK, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @os_get_time(%struct.os_time* %15)
  %21 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  store %struct.x509_certificate* %21, %struct.x509_certificate** %12, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %200, %4
  %23 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %24 = icmp ne %struct.x509_certificate* %23, null
  br i1 %24, label %25, label %206

25:                                               ; preds = %22
  %26 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %27 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %29 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %28, i32 0, i32 3
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %31 = call i32 @x509_name_string(i32* %29, i8* %30, i32 128)
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %33, i8* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %200

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.os_time, %struct.os_time* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %46 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.os_time, %struct.os_time* %15, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %53 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %49, %42
  %57 = load i32, i32* @MSG_INFO, align 4
  %58 = getelementptr inbounds %struct.os_time, %struct.os_time* %15, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %61 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %64 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %62, i64 %65)
  %67 = load i32, i32* @X509_VALIDATE_CERTIFICATE_EXPIRED, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  store i32 -1, i32* %5, align 4
  br label %223

69:                                               ; preds = %49, %39
  %70 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %71 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %70, i32 0, i32 5
  %72 = load %struct.x509_certificate*, %struct.x509_certificate** %71, align 8
  %73 = icmp ne %struct.x509_certificate* %72, null
  br i1 %73, label %74, label %154

74:                                               ; preds = %69
  %75 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %76 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %75, i32 0, i32 4
  %77 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %78 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %77, i32 0, i32 5
  %79 = load %struct.x509_certificate*, %struct.x509_certificate** %78, align 8
  %80 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %79, i32 0, i32 3
  %81 = call i64 @x509_name_compare(i32* %76, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %74
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %87 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %86, i32 0, i32 4
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %89 = call i32 @x509_name_string(i32* %87, i8* %88, i32 128)
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  %93 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %94 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %93, i32 0, i32 5
  %95 = load %struct.x509_certificate*, %struct.x509_certificate** %94, align 8
  %96 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %95, i32 0, i32 3
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %98 = call i32 @x509_name_string(i32* %96, i8* %97, i32 128)
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @X509_VALIDATE_CERTIFICATE_UNKNOWN, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  store i32 -1, i32* %5, align 4
  br label %223

104:                                              ; preds = %74
  %105 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %106 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %105, i32 0, i32 5
  %107 = load %struct.x509_certificate*, %struct.x509_certificate** %106, align 8
  %108 = call i64 @x509_valid_issuer(%struct.x509_certificate* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  store i32 -1, i32* %5, align 4
  br label %223

113:                                              ; preds = %104
  %114 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %115 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %114, i32 0, i32 5
  %116 = load %struct.x509_certificate*, %struct.x509_certificate** %115, align 8
  %117 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @X509_EXT_PATH_LEN_CONSTRAINT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %113
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %125 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %124, i32 0, i32 5
  %126 = load %struct.x509_certificate*, %struct.x509_certificate** %125, align 8
  %127 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %123, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %134 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %133, i32 0, i32 5
  %135 = load %struct.x509_certificate*, %struct.x509_certificate** %134, align 8
  %136 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i64 %132, i64 %137)
  %139 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %140 = load i32*, i32** %8, align 8
  store i32 %139, i32* %140, align 4
  store i32 -1, i32* %5, align 4
  br label %223

141:                                              ; preds = %122, %113
  %142 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %143 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %142, i32 0, i32 5
  %144 = load %struct.x509_certificate*, %struct.x509_certificate** %143, align 8
  %145 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %146 = call i64 @x509_certificate_check_signature(%struct.x509_certificate* %144, %struct.x509_certificate* %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %151 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %152 = load i32*, i32** %8, align 8
  store i32 %151, i32* %152, align 4
  store i32 -1, i32* %5, align 4
  br label %223

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %69
  %155 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  store %struct.x509_certificate* %155, %struct.x509_certificate** %13, align 8
  br label %156

156:                                              ; preds = %168, %154
  %157 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %158 = icmp ne %struct.x509_certificate* %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %161 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %160, i32 0, i32 4
  %162 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %163 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %162, i32 0, i32 3
  %164 = call i64 @x509_name_compare(i32* %161, i32* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %172

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %170 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %169, i32 0, i32 5
  %171 = load %struct.x509_certificate*, %struct.x509_certificate** %170, align 8
  store %struct.x509_certificate* %171, %struct.x509_certificate** %13, align 8
  br label %156

172:                                              ; preds = %166, %156
  %173 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %174 = icmp ne %struct.x509_certificate* %173, null
  br i1 %174, label %175, label %199

175:                                              ; preds = %172
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %178 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %179 = call i64 @x509_valid_issuer(%struct.x509_certificate* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %183 = load i32*, i32** %8, align 8
  store i32 %182, i32* %183, align 4
  store i32 -1, i32* %5, align 4
  br label %223

184:                                              ; preds = %175
  %185 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %186 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %187 = call i64 @x509_certificate_check_signature(%struct.x509_certificate* %185, %struct.x509_certificate* %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %192 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %193 = load i32*, i32** %8, align 8
  store i32 %192, i32* %193, align 4
  store i32 -1, i32* %5, align 4
  br label %223

194:                                              ; preds = %184
  %195 = load i32, i32* @MSG_DEBUG, align 4
  %196 = call i32 (i32, i8*, ...) @wpa_printf(i32 %195, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %197 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %198 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  store i32 1, i32* %11, align 4
  br label %199

199:                                              ; preds = %194, %172
  br label %200

200:                                              ; preds = %199, %38
  %201 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %202 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %201, i32 0, i32 5
  %203 = load %struct.x509_certificate*, %struct.x509_certificate** %202, align 8
  store %struct.x509_certificate* %203, %struct.x509_certificate** %12, align 8
  %204 = load i64, i64* %10, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %10, align 8
  br label %22

206:                                              ; preds = %22
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* @MSG_DEBUG, align 4
  %211 = call i32 (i32, i8*, ...) @wpa_printf(i32 %210, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  %212 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %213 = icmp ne %struct.x509_certificate* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @X509_VALIDATE_UNKNOWN_CA, align 4
  %216 = load i32*, i32** %8, align 8
  store i32 %215, i32* %216, align 4
  store i32 -1, i32* %5, align 4
  br label %223

217:                                              ; preds = %209
  %218 = load i32, i32* @MSG_DEBUG, align 4
  %219 = call i32 (i32, i8*, ...) @wpa_printf(i32 %218, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %206
  %221 = load i32, i32* @MSG_DEBUG, align 4
  %222 = call i32 (i32, i8*, ...) @wpa_printf(i32 %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %223

223:                                              ; preds = %220, %214, %189, %181, %148, %130, %110, %83, %56
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i64 @x509_name_compare(i32*, i32*) #1

declare dso_local i64 @x509_valid_issuer(%struct.x509_certificate*) #1

declare dso_local i64 @x509_certificate_check_signature(%struct.x509_certificate*, %struct.x509_certificate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
