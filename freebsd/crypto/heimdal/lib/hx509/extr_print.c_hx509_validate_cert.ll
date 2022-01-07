; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_hx509_validate_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_hx509_validate_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 (%struct.TYPE_17__*, %struct.cert_status*, i32, %struct.TYPE_20__*)*, i32*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.cert_status = type { i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i32, i32 }

@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Not version 3 certificate\0A\00", align 1
@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Not version 3 certificate with extensions\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Version 3 certificate without extensions\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"subject name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"issuer name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\09is a self-signed certificate\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Validity:\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\09notBefore %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09notAfter  %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"The empty extensions list is not allowed by PKIX\0A\00", align 1
@check_extension = common dso_local global %struct.TYPE_14__* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"don't know what \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"and is CRITICAL \00", align 1
@validate_vprint = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c" is\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"checking extention: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"no extentions\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"CA certificate have no SubjectKeyIdentifier\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Is not CA and doesn't have AuthorityKeyIdentifier\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Doesn't have SubjectKeyIdentifier\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Proxy and CA at the same time!\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Proxy and have SAN\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Proxy and have IAN\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"NULL subject DN and doesn't have a SAN\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Not a CA nor PROXY and doesn't haveCRL Dist Point\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Self-signed certificate was self-signed\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"Self-signed certificate NOT really self-signed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_validate_cert(i32 %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cert_status, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_19__* @_hx509_get_cert(i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %7, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %8, align 8
  %21 = call i32 @memset(%struct.cert_status* %12, i32 0, i32 48)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = call i32 @_hx509_cert_get_version(%struct.TYPE_19__* %22)
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %28 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %49

40:                                               ; preds = %34, %29
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %48 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %46, i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40, %34
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = call i32 @_hx509_cert_get_version(%struct.TYPE_19__* %50)
  %52 = icmp sge i32 %51, 3
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = icmp eq %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %61 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %59, i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53, %49
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @hx509_cert_get_subject(i32 %63, i32* %10)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (...) @abort() #3
  unreachable

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @hx509_name_to_string(i32 %70, i8** %11)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %72, i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @hx509_cert_get_issuer(i32 %78, i32* %9)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = call i32 (...) @abort() #3
  unreachable

84:                                               ; preds = %69
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @hx509_name_to_string(i32 %85, i8** %11)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %87, i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @hx509_name_cmp(i32 %93, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %101 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %99, i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %84
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %105 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %103, i32 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = call i32 @Time2string(i32* %108, i8** %11)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %110, i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = call i32 @Time2string(i32* %118, i8** %11)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %120, i32 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %122)
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = icmp ne %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %279

130:                                              ; preds = %102
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %140 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %141 = or i32 %139, %140
  %142 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %138, i32 %141, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %143

143:                                              ; preds = %137, %130
  store i64 0, i64* %14, align 8
  br label %144

144:                                              ; preds = %275, %143
  %145 = load i64, i64* %14, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %145, %150
  br i1 %151, label %152, label %278

152:                                              ; preds = %144
  store i64 0, i64* %15, align 8
  br label %153

153:                                              ; preds = %178, %152
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** @check_extension, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %181

160:                                              ; preds = %153
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** @check_extension, align 8
  %162 = load i64, i64* %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = load i64, i64* %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = call i64 @der_heim_oid_cmp(i32 %165, i32* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %160
  br label %181

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %15, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %15, align 8
  br label %153

181:                                              ; preds = %176, %153
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** @check_extension, align 8
  %183 = load i64, i64* %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %245

188:                                              ; preds = %181
  %189 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  store i32 %189, i32* %16, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = load i64, i64* %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %188
  %201 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %202 = load i32, i32* %16, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %200, %188
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = load i32, i32* %16, align 4
  %207 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %205, i32 %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = load i64, i64* %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %204
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %220 = load i32, i32* %16, align 4
  %221 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %219, i32 %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %222

222:                                              ; preds = %218, %204
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %16, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %222
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %233, align 8
  %235 = load i64, i64* %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = load i32, i32* @validate_vprint, align 4
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %240 = call i32 @hx509_oid_print(i32* %237, i32 %238, %struct.TYPE_17__* %239)
  br label %241

241:                                              ; preds = %229, %222
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %243 = load i32, i32* %16, align 4
  %244 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %242, i32 %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %275

245:                                              ; preds = %181
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %247 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %248 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** @check_extension, align 8
  %251 = load i64, i64* %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %246, i32 %249, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32* %254)
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** @check_extension, align 8
  %257 = load i64, i64* %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = load i32 (%struct.TYPE_17__*, %struct.cert_status*, i32, %struct.TYPE_20__*)*, i32 (%struct.TYPE_17__*, %struct.cert_status*, i32, %struct.TYPE_20__*)** %259, align 8
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** @check_extension, align 8
  %263 = load i64, i64* %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %270, align 8
  %272 = load i64, i64* %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i64 %272
  %274 = call i32 %260(%struct.TYPE_17__* %261, %struct.cert_status* %12, i32 %266, %struct.TYPE_20__* %273)
  br label %275

275:                                              ; preds = %245, %241
  %276 = load i64, i64* %14, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %14, align 8
  br label %144

278:                                              ; preds = %144
  br label %283

279:                                              ; preds = %102
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %282 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %280, i32 %281, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %283

283:                                              ; preds = %279, %278
  %284 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 6
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %293 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %294 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %292, i32 %293, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  br label %295

295:                                              ; preds = %291, %287
  br label %305

296:                                              ; preds = %283
  %297 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %303 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %301, i32 %302, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0))
  br label %304

304:                                              ; preds = %300, %296
  br label %305

305:                                              ; preds = %304, %295
  %306 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %305
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %311 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %312 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %310, i32 %311, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  br label %313

313:                                              ; preds = %309, %305
  %314 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %323 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %324 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %322, i32 %323, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %325

325:                                              ; preds = %321, %317, %313
  %326 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %346

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %329
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %335 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %336 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %334, i32 %335, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %337

337:                                              ; preds = %333, %329
  %338 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %337
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %343 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %344 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %342, i32 %343, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %345

345:                                              ; preds = %341, %337
  br label %346

346:                                              ; preds = %345, %325
  %347 = load i32, i32* %10, align 4
  %348 = call i64 @hx509_name_is_null_p(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %350
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %356 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %357 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %355, i32 %356, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %358

358:                                              ; preds = %354, %350, %346
  %359 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %368 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %369 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %367, i32 %368, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0))
  br label %370

370:                                              ; preds = %366, %362, %358
  %371 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %12, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %396

374:                                              ; preds = %370
  %375 = load i32, i32* %4, align 4
  %376 = load i32, i32* %6, align 4
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 2
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 0
  %384 = call i32 @_hx509_verify_signature_bitstring(i32 %375, i32 %376, i32* %378, i32* %381, i32* %383)
  store i32 %384, i32* %13, align 4
  %385 = load i32, i32* %13, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %374
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %389 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %390 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %388, i32 %389, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  br label %395

391:                                              ; preds = %374
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %393 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %394 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @validate_print(%struct.TYPE_17__* %392, i32 %393, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0))
  br label %395

395:                                              ; preds = %391, %387
  br label %396

396:                                              ; preds = %395, %370
  %397 = call i32 @hx509_name_free(i32* %10)
  %398 = call i32 @hx509_name_free(i32* %9)
  ret i32 0
}

declare dso_local %struct.TYPE_19__* @_hx509_get_cert(i32) #1

declare dso_local i32 @memset(%struct.cert_status*, i32, i32) #1

declare dso_local i32 @_hx509_cert_get_version(%struct.TYPE_19__*) #1

declare dso_local i32 @validate_print(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @hx509_cert_get_subject(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hx509_cert_get_issuer(i32, i32*) #1

declare dso_local i64 @hx509_name_cmp(i32, i32) #1

declare dso_local i32 @Time2string(i32*, i8**) #1

declare dso_local i64 @der_heim_oid_cmp(i32, i32*) #1

declare dso_local i32 @hx509_oid_print(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @hx509_name_is_null_p(i32) #1

declare dso_local i32 @_hx509_verify_signature_bitstring(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hx509_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
