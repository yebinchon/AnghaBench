; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i8*, i8* }
%struct.st_object = type { i8* }
%struct.TYPE_4__ = type { i8*, i32 }

@add_cert.empty = internal global [1 x i8] zeroinitializer, align 1
@CK_TRUE = common dso_local global i8 0, align 1
@CK_FALSE = common dso_local global i8 0, align 1
@CKC_X_509 = common dso_local global i8 0, align 1
@CKR_GENERAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"adding certificate\0A\00", align 1
@context = common dso_local global i32 0, align 4
@CKR_DEVICE_MEMORY = common dso_local global i64 0, align 8
@CKK_RSA = common dso_local global i8 0, align 1
@CKO_CERTIFICATE = common dso_local global i8 0, align 1
@CKA_CLASS = common dso_local global i32 0, align 4
@CKA_TOKEN = common dso_local global i32 0, align 4
@CKA_PRIVATE = common dso_local global i32 0, align 4
@CKA_MODIFIABLE = common dso_local global i32 0, align 4
@CKA_LABEL = common dso_local global i32 0, align 4
@CKA_CERTIFICATE_TYPE = common dso_local global i32 0, align 4
@CKA_ID = common dso_local global i32 0, align 4
@CKA_SUBJECT = common dso_local global i32 0, align 4
@CKA_ISSUER = common dso_local global i32 0, align 4
@CKA_SERIAL_NUMBER = common dso_local global i32 0, align 4
@CKA_VALUE = common dso_local global i32 0, align 4
@CKA_TRUSTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"add cert ok: %lx\0A\00", align 1
@CKO_PUBLIC_KEY = common dso_local global i8 0, align 1
@CKA_KEY_TYPE = common dso_local global i32 0, align 4
@CKA_START_DATE = common dso_local global i32 0, align 4
@CKA_END_DATE = common dso_local global i32 0, align 4
@CKA_DERIVE = common dso_local global i32 0, align 4
@CKA_LOCAL = common dso_local global i32 0, align 4
@CKM_RSA_X_509 = common dso_local global i8 0, align 1
@CKA_KEY_GEN_MECHANISM = common dso_local global i32 0, align 4
@CKA_ENCRYPT = common dso_local global i32 0, align 4
@CKA_VERIFY = common dso_local global i32 0, align 4
@CKA_VERIFY_RECOVER = common dso_local global i32 0, align 4
@CKA_WRAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"add key ok: %lx\0A\00", align 1
@CKO_PRIVATE_KEY = common dso_local global i8 0, align 1
@CKA_SENSITIVE = common dso_local global i32 0, align 4
@CKA_SECONDARY_AUTH = common dso_local global i32 0, align 4
@CKA_AUTH_PIN_FLAGS = common dso_local global i32 0, align 4
@CKA_DECRYPT = common dso_local global i32 0, align 4
@CKA_SIGN = common dso_local global i32 0, align 4
@CKA_SIGN_RECOVER = common dso_local global i32 0, align 4
@CKA_UNWRAP = common dso_local global i32 0, align 4
@CKA_EXTRACTABLE = common dso_local global i32 0, align 4
@CKA_NEVER_EXTRACTABLE = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"something went wrong when adding cert!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @add_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cert(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.foo*, align 8
  %8 = alloca %struct.st_object*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca %struct.TYPE_4__, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  %20 = alloca %struct.TYPE_4__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.foo*
  store %struct.foo* %25, %struct.foo** %7, align 8
  store %struct.st_object* null, %struct.st_object** %8, align 8
  %26 = load i8, i8* @CK_TRUE, align 1
  store i8 %26, i8* %10, align 1
  %27 = load i8, i8* @CK_FALSE, align 1
  store i8 %27, i8* %11, align 1
  %28 = load i8, i8* @CKC_X_509, align 1
  store i8 %28, i8* %12, align 1
  %29 = load i64, i64* @CKR_GENERAL_ERROR, align 8
  store i64 %29, i64* %15, align 8
  %30 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = bitcast %struct.TYPE_4__* %19 to i8*
  %34 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = bitcast %struct.TYPE_4__* %18 to i8*
  %36 = bitcast %struct.TYPE_4__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = bitcast %struct.TYPE_4__* %17 to i8*
  %38 = bitcast %struct.TYPE_4__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @hx509_cert_binary(i32 %39, i32 %40, %struct.TYPE_4__* %17)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %361

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @hx509_cert_get_issuer(i32 %46, i32* %21)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %361

51:                                               ; preds = %45
  %52 = load i32, i32* %21, align 4
  %53 = call i32 @hx509_name_binary(i32 %52, %struct.TYPE_4__* %19)
  store i32 %53, i32* %16, align 4
  %54 = call i32 @hx509_name_free(i32* %21)
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %361

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @hx509_cert_get_subject(i32 %59, i32* %21)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %361

64:                                               ; preds = %58
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @hx509_name_binary(i32 %65, %struct.TYPE_4__* %18)
  store i32 %66, i32* %16, align 4
  %67 = call i32 @hx509_name_free(i32* %21)
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %361

71:                                               ; preds = %64
  %72 = load i32, i32* @context, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @hx509_cert_get_SPKI_AlgorithmIdentifier(i32 %72, i32 %73, i32* %22)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i64, i64* @CKR_DEVICE_MEMORY, align 8
  store i64 %78, i64* %15, align 8
  br label %361

79:                                               ; preds = %71
  %80 = load i8, i8* @CKK_RSA, align 1
  store i8 %80, i8* %13, align 1
  %81 = call i32 @free_AlgorithmIdentifier(i32* %22)
  %82 = load i8, i8* @CKO_CERTIFICATE, align 1
  store i8 %82, i8* %9, align 1
  %83 = call %struct.st_object* (...) @add_st_object()
  store %struct.st_object* %83, %struct.st_object** %8, align 8
  %84 = load %struct.st_object*, %struct.st_object** %8, align 8
  %85 = icmp eq %struct.st_object* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64, i64* @CKR_DEVICE_MEMORY, align 8
  store i64 %87, i64* %15, align 8
  br label %361

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @hx509_cert_ref(i32 %89)
  %91 = load %struct.st_object*, %struct.st_object** %8, align 8
  %92 = getelementptr inbounds %struct.st_object, %struct.st_object* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.st_object*, %struct.st_object** %8, align 8
  %94 = load i32, i32* @CKA_CLASS, align 4
  %95 = call i32 @add_object_attribute(%struct.st_object* %93, i32 0, i32 %94, i8* %9, i32 1)
  %96 = load %struct.st_object*, %struct.st_object** %8, align 8
  %97 = load i32, i32* @CKA_TOKEN, align 4
  %98 = call i32 @add_object_attribute(%struct.st_object* %96, i32 0, i32 %97, i8* %10, i32 1)
  %99 = load %struct.st_object*, %struct.st_object** %8, align 8
  %100 = load i32, i32* @CKA_PRIVATE, align 4
  %101 = call i32 @add_object_attribute(%struct.st_object* %99, i32 0, i32 %100, i8* %11, i32 1)
  %102 = load %struct.st_object*, %struct.st_object** %8, align 8
  %103 = load i32, i32* @CKA_MODIFIABLE, align 4
  %104 = call i32 @add_object_attribute(%struct.st_object* %102, i32 0, i32 %103, i8* %11, i32 1)
  %105 = load %struct.st_object*, %struct.st_object** %8, align 8
  %106 = load i32, i32* @CKA_LABEL, align 4
  %107 = load %struct.foo*, %struct.foo** %7, align 8
  %108 = getelementptr inbounds %struct.foo, %struct.foo* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.foo*, %struct.foo** %7, align 8
  %111 = getelementptr inbounds %struct.foo, %struct.foo* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = call i32 @add_object_attribute(%struct.st_object* %105, i32 0, i32 %106, i8* %109, i32 %113)
  %115 = load %struct.st_object*, %struct.st_object** %8, align 8
  %116 = load i32, i32* @CKA_CERTIFICATE_TYPE, align 4
  %117 = call i32 @add_object_attribute(%struct.st_object* %115, i32 0, i32 %116, i8* %12, i32 1)
  %118 = load %struct.st_object*, %struct.st_object** %8, align 8
  %119 = load i32, i32* @CKA_ID, align 4
  %120 = load %struct.foo*, %struct.foo** %7, align 8
  %121 = getelementptr inbounds %struct.foo, %struct.foo* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.foo*, %struct.foo** %7, align 8
  %124 = getelementptr inbounds %struct.foo, %struct.foo* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = call i32 @add_object_attribute(%struct.st_object* %118, i32 0, i32 %119, i8* %122, i32 %126)
  %128 = load %struct.st_object*, %struct.st_object** %8, align 8
  %129 = load i32, i32* @CKA_SUBJECT, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @add_object_attribute(%struct.st_object* %128, i32 0, i32 %129, i8* %131, i32 %133)
  %135 = load %struct.st_object*, %struct.st_object** %8, align 8
  %136 = load i32, i32* @CKA_ISSUER, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @add_object_attribute(%struct.st_object* %135, i32 0, i32 %136, i8* %138, i32 %140)
  %142 = load %struct.st_object*, %struct.st_object** %8, align 8
  %143 = load i32, i32* @CKA_SERIAL_NUMBER, align 4
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @add_object_attribute(%struct.st_object* %142, i32 0, i32 %143, i8* %145, i32 %147)
  %149 = load %struct.st_object*, %struct.st_object** %8, align 8
  %150 = load i32, i32* @CKA_VALUE, align 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @add_object_attribute(%struct.st_object* %149, i32 0, i32 %150, i8* %152, i32 %154)
  %156 = load %struct.st_object*, %struct.st_object** %8, align 8
  %157 = load i32, i32* @CKA_TRUSTED, align 4
  %158 = call i32 @add_object_attribute(%struct.st_object* %156, i32 0, i32 %157, i8* %11, i32 1)
  %159 = load %struct.st_object*, %struct.st_object** %8, align 8
  %160 = call i64 @OBJECT_ID(%struct.st_object* %159)
  %161 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %160)
  %162 = load i8, i8* @CKO_PUBLIC_KEY, align 1
  store i8 %162, i8* %9, align 1
  %163 = call %struct.st_object* (...) @add_st_object()
  store %struct.st_object* %163, %struct.st_object** %8, align 8
  %164 = load %struct.st_object*, %struct.st_object** %8, align 8
  %165 = icmp eq %struct.st_object* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %88
  %167 = load i64, i64* @CKR_DEVICE_MEMORY, align 8
  store i64 %167, i64* %15, align 8
  br label %361

168:                                              ; preds = %88
  %169 = load i32, i32* %6, align 4
  %170 = call i8* @hx509_cert_ref(i32 %169)
  %171 = load %struct.st_object*, %struct.st_object** %8, align 8
  %172 = getelementptr inbounds %struct.st_object, %struct.st_object* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load %struct.st_object*, %struct.st_object** %8, align 8
  %174 = load i32, i32* @CKA_CLASS, align 4
  %175 = call i32 @add_object_attribute(%struct.st_object* %173, i32 0, i32 %174, i8* %9, i32 1)
  %176 = load %struct.st_object*, %struct.st_object** %8, align 8
  %177 = load i32, i32* @CKA_TOKEN, align 4
  %178 = call i32 @add_object_attribute(%struct.st_object* %176, i32 0, i32 %177, i8* %10, i32 1)
  %179 = load %struct.st_object*, %struct.st_object** %8, align 8
  %180 = load i32, i32* @CKA_PRIVATE, align 4
  %181 = call i32 @add_object_attribute(%struct.st_object* %179, i32 0, i32 %180, i8* %11, i32 1)
  %182 = load %struct.st_object*, %struct.st_object** %8, align 8
  %183 = load i32, i32* @CKA_MODIFIABLE, align 4
  %184 = call i32 @add_object_attribute(%struct.st_object* %182, i32 0, i32 %183, i8* %11, i32 1)
  %185 = load %struct.st_object*, %struct.st_object** %8, align 8
  %186 = load i32, i32* @CKA_LABEL, align 4
  %187 = load %struct.foo*, %struct.foo** %7, align 8
  %188 = getelementptr inbounds %struct.foo, %struct.foo* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.foo*, %struct.foo** %7, align 8
  %191 = getelementptr inbounds %struct.foo, %struct.foo* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strlen(i8* %192)
  %194 = call i32 @add_object_attribute(%struct.st_object* %185, i32 0, i32 %186, i8* %189, i32 %193)
  %195 = load %struct.st_object*, %struct.st_object** %8, align 8
  %196 = load i32, i32* @CKA_KEY_TYPE, align 4
  %197 = call i32 @add_object_attribute(%struct.st_object* %195, i32 0, i32 %196, i8* %13, i32 1)
  %198 = load %struct.st_object*, %struct.st_object** %8, align 8
  %199 = load i32, i32* @CKA_ID, align 4
  %200 = load %struct.foo*, %struct.foo** %7, align 8
  %201 = getelementptr inbounds %struct.foo, %struct.foo* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.foo*, %struct.foo** %7, align 8
  %204 = getelementptr inbounds %struct.foo, %struct.foo* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @strlen(i8* %205)
  %207 = call i32 @add_object_attribute(%struct.st_object* %198, i32 0, i32 %199, i8* %202, i32 %206)
  %208 = load %struct.st_object*, %struct.st_object** %8, align 8
  %209 = load i32, i32* @CKA_START_DATE, align 4
  %210 = call i32 @add_object_attribute(%struct.st_object* %208, i32 0, i32 %209, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @add_cert.empty, i64 0, i64 0), i32 1)
  %211 = load %struct.st_object*, %struct.st_object** %8, align 8
  %212 = load i32, i32* @CKA_END_DATE, align 4
  %213 = call i32 @add_object_attribute(%struct.st_object* %211, i32 0, i32 %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @add_cert.empty, i64 0, i64 0), i32 1)
  %214 = load %struct.st_object*, %struct.st_object** %8, align 8
  %215 = load i32, i32* @CKA_DERIVE, align 4
  %216 = call i32 @add_object_attribute(%struct.st_object* %214, i32 0, i32 %215, i8* %11, i32 1)
  %217 = load %struct.st_object*, %struct.st_object** %8, align 8
  %218 = load i32, i32* @CKA_LOCAL, align 4
  %219 = call i32 @add_object_attribute(%struct.st_object* %217, i32 0, i32 %218, i8* %11, i32 1)
  %220 = load i8, i8* @CKM_RSA_X_509, align 1
  store i8 %220, i8* %14, align 1
  %221 = load %struct.st_object*, %struct.st_object** %8, align 8
  %222 = load i32, i32* @CKA_KEY_GEN_MECHANISM, align 4
  %223 = call i32 @add_object_attribute(%struct.st_object* %221, i32 0, i32 %222, i8* %14, i32 1)
  %224 = load %struct.st_object*, %struct.st_object** %8, align 8
  %225 = load i32, i32* @CKA_SUBJECT, align 4
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @add_object_attribute(%struct.st_object* %224, i32 0, i32 %225, i8* %227, i32 %229)
  %231 = load %struct.st_object*, %struct.st_object** %8, align 8
  %232 = load i32, i32* @CKA_ENCRYPT, align 4
  %233 = call i32 @add_object_attribute(%struct.st_object* %231, i32 0, i32 %232, i8* %10, i32 1)
  %234 = load %struct.st_object*, %struct.st_object** %8, align 8
  %235 = load i32, i32* @CKA_VERIFY, align 4
  %236 = call i32 @add_object_attribute(%struct.st_object* %234, i32 0, i32 %235, i8* %10, i32 1)
  %237 = load %struct.st_object*, %struct.st_object** %8, align 8
  %238 = load i32, i32* @CKA_VERIFY_RECOVER, align 4
  %239 = call i32 @add_object_attribute(%struct.st_object* %237, i32 0, i32 %238, i8* %11, i32 1)
  %240 = load %struct.st_object*, %struct.st_object** %8, align 8
  %241 = load i32, i32* @CKA_WRAP, align 4
  %242 = call i32 @add_object_attribute(%struct.st_object* %240, i32 0, i32 %241, i8* %10, i32 1)
  %243 = load %struct.st_object*, %struct.st_object** %8, align 8
  %244 = load i32, i32* @CKA_TRUSTED, align 4
  %245 = call i32 @add_object_attribute(%struct.st_object* %243, i32 0, i32 %244, i8* %10, i32 1)
  %246 = load i32, i32* %4, align 4
  %247 = load %struct.st_object*, %struct.st_object** %8, align 8
  %248 = load i8, i8* %13, align 1
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @add_pubkey_info(i32 %246, %struct.st_object* %247, i8 signext %248, i32 %249)
  %251 = load %struct.st_object*, %struct.st_object** %8, align 8
  %252 = call i64 @OBJECT_ID(%struct.st_object* %251)
  %253 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %252)
  %254 = load i32, i32* %6, align 4
  %255 = call i64 @hx509_cert_have_private_key(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %359

257:                                              ; preds = %168
  %258 = load i8, i8* @CKO_PRIVATE_KEY, align 1
  store i8 %258, i8* %9, align 1
  %259 = call %struct.st_object* (...) @add_st_object()
  store %struct.st_object* %259, %struct.st_object** %8, align 8
  %260 = load %struct.st_object*, %struct.st_object** %8, align 8
  %261 = icmp eq %struct.st_object* %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = load i64, i64* @CKR_DEVICE_MEMORY, align 8
  store i64 %263, i64* %15, align 8
  br label %361

264:                                              ; preds = %257
  %265 = load i32, i32* %6, align 4
  %266 = call i8* @hx509_cert_ref(i32 %265)
  %267 = load %struct.st_object*, %struct.st_object** %8, align 8
  %268 = getelementptr inbounds %struct.st_object, %struct.st_object* %267, i32 0, i32 0
  store i8* %266, i8** %268, align 8
  %269 = load %struct.st_object*, %struct.st_object** %8, align 8
  %270 = load i32, i32* @CKA_CLASS, align 4
  %271 = call i32 @add_object_attribute(%struct.st_object* %269, i32 0, i32 %270, i8* %9, i32 1)
  %272 = load %struct.st_object*, %struct.st_object** %8, align 8
  %273 = load i32, i32* @CKA_TOKEN, align 4
  %274 = call i32 @add_object_attribute(%struct.st_object* %272, i32 0, i32 %273, i8* %10, i32 1)
  %275 = load %struct.st_object*, %struct.st_object** %8, align 8
  %276 = load i32, i32* @CKA_PRIVATE, align 4
  %277 = call i32 @add_object_attribute(%struct.st_object* %275, i32 0, i32 %276, i8* %10, i32 1)
  %278 = load %struct.st_object*, %struct.st_object** %8, align 8
  %279 = load i32, i32* @CKA_MODIFIABLE, align 4
  %280 = call i32 @add_object_attribute(%struct.st_object* %278, i32 0, i32 %279, i8* %11, i32 1)
  %281 = load %struct.st_object*, %struct.st_object** %8, align 8
  %282 = load i32, i32* @CKA_LABEL, align 4
  %283 = load %struct.foo*, %struct.foo** %7, align 8
  %284 = getelementptr inbounds %struct.foo, %struct.foo* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.foo*, %struct.foo** %7, align 8
  %287 = getelementptr inbounds %struct.foo, %struct.foo* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @strlen(i8* %288)
  %290 = call i32 @add_object_attribute(%struct.st_object* %281, i32 0, i32 %282, i8* %285, i32 %289)
  %291 = load %struct.st_object*, %struct.st_object** %8, align 8
  %292 = load i32, i32* @CKA_KEY_TYPE, align 4
  %293 = call i32 @add_object_attribute(%struct.st_object* %291, i32 0, i32 %292, i8* %13, i32 1)
  %294 = load %struct.st_object*, %struct.st_object** %8, align 8
  %295 = load i32, i32* @CKA_ID, align 4
  %296 = load %struct.foo*, %struct.foo** %7, align 8
  %297 = getelementptr inbounds %struct.foo, %struct.foo* %296, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  %299 = load %struct.foo*, %struct.foo** %7, align 8
  %300 = getelementptr inbounds %struct.foo, %struct.foo* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strlen(i8* %301)
  %303 = call i32 @add_object_attribute(%struct.st_object* %294, i32 0, i32 %295, i8* %298, i32 %302)
  %304 = load %struct.st_object*, %struct.st_object** %8, align 8
  %305 = load i32, i32* @CKA_START_DATE, align 4
  %306 = call i32 @add_object_attribute(%struct.st_object* %304, i32 0, i32 %305, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @add_cert.empty, i64 0, i64 0), i32 1)
  %307 = load %struct.st_object*, %struct.st_object** %8, align 8
  %308 = load i32, i32* @CKA_END_DATE, align 4
  %309 = call i32 @add_object_attribute(%struct.st_object* %307, i32 0, i32 %308, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @add_cert.empty, i64 0, i64 0), i32 1)
  %310 = load %struct.st_object*, %struct.st_object** %8, align 8
  %311 = load i32, i32* @CKA_DERIVE, align 4
  %312 = call i32 @add_object_attribute(%struct.st_object* %310, i32 0, i32 %311, i8* %11, i32 1)
  %313 = load %struct.st_object*, %struct.st_object** %8, align 8
  %314 = load i32, i32* @CKA_LOCAL, align 4
  %315 = call i32 @add_object_attribute(%struct.st_object* %313, i32 0, i32 %314, i8* %11, i32 1)
  %316 = load i8, i8* @CKM_RSA_X_509, align 1
  store i8 %316, i8* %14, align 1
  %317 = load %struct.st_object*, %struct.st_object** %8, align 8
  %318 = load i32, i32* @CKA_KEY_GEN_MECHANISM, align 4
  %319 = call i32 @add_object_attribute(%struct.st_object* %317, i32 0, i32 %318, i8* %14, i32 1)
  %320 = load %struct.st_object*, %struct.st_object** %8, align 8
  %321 = load i32, i32* @CKA_SUBJECT, align 4
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @add_object_attribute(%struct.st_object* %320, i32 0, i32 %321, i8* %323, i32 %325)
  %327 = load %struct.st_object*, %struct.st_object** %8, align 8
  %328 = load i32, i32* @CKA_SENSITIVE, align 4
  %329 = call i32 @add_object_attribute(%struct.st_object* %327, i32 0, i32 %328, i8* %10, i32 1)
  %330 = load %struct.st_object*, %struct.st_object** %8, align 8
  %331 = load i32, i32* @CKA_SECONDARY_AUTH, align 4
  %332 = call i32 @add_object_attribute(%struct.st_object* %330, i32 0, i32 %331, i8* %11, i32 1)
  store i8 0, i8* %23, align 1
  %333 = load %struct.st_object*, %struct.st_object** %8, align 8
  %334 = load i32, i32* @CKA_AUTH_PIN_FLAGS, align 4
  %335 = call i32 @add_object_attribute(%struct.st_object* %333, i32 0, i32 %334, i8* %23, i32 1)
  %336 = load %struct.st_object*, %struct.st_object** %8, align 8
  %337 = load i32, i32* @CKA_DECRYPT, align 4
  %338 = call i32 @add_object_attribute(%struct.st_object* %336, i32 0, i32 %337, i8* %10, i32 1)
  %339 = load %struct.st_object*, %struct.st_object** %8, align 8
  %340 = load i32, i32* @CKA_SIGN, align 4
  %341 = call i32 @add_object_attribute(%struct.st_object* %339, i32 0, i32 %340, i8* %10, i32 1)
  %342 = load %struct.st_object*, %struct.st_object** %8, align 8
  %343 = load i32, i32* @CKA_SIGN_RECOVER, align 4
  %344 = call i32 @add_object_attribute(%struct.st_object* %342, i32 0, i32 %343, i8* %11, i32 1)
  %345 = load %struct.st_object*, %struct.st_object** %8, align 8
  %346 = load i32, i32* @CKA_UNWRAP, align 4
  %347 = call i32 @add_object_attribute(%struct.st_object* %345, i32 0, i32 %346, i8* %10, i32 1)
  %348 = load %struct.st_object*, %struct.st_object** %8, align 8
  %349 = load i32, i32* @CKA_EXTRACTABLE, align 4
  %350 = call i32 @add_object_attribute(%struct.st_object* %348, i32 0, i32 %349, i8* %10, i32 1)
  %351 = load %struct.st_object*, %struct.st_object** %8, align 8
  %352 = load i32, i32* @CKA_NEVER_EXTRACTABLE, align 4
  %353 = call i32 @add_object_attribute(%struct.st_object* %351, i32 0, i32 %352, i8* %11, i32 1)
  %354 = load i32, i32* %4, align 4
  %355 = load %struct.st_object*, %struct.st_object** %8, align 8
  %356 = load i8, i8* %13, align 1
  %357 = load i32, i32* %6, align 4
  %358 = call i32 @add_pubkey_info(i32 %354, %struct.st_object* %355, i8 signext %356, i32 %357)
  br label %359

359:                                              ; preds = %264, %168
  %360 = load i64, i64* @CKR_OK, align 8
  store i64 %360, i64* %15, align 8
  br label %361

361:                                              ; preds = %359, %262, %166, %86, %77, %70, %63, %57, %50, %44
  %362 = load i64, i64* %15, align 8
  %363 = load i64, i64* @CKR_OK, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %367

367:                                              ; preds = %365, %361
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @hx509_xfree(i8* %369)
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 @hx509_xfree(i8* %372)
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @hx509_xfree(i8* %375)
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @hx509_xfree(i8* %378)
  ret i32 0
}

declare dso_local i32 @st_logf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hx509_cert_binary(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @hx509_cert_get_issuer(i32, i32*) #1

declare dso_local i32 @hx509_name_binary(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @hx509_cert_get_subject(i32, i32*) #1

declare dso_local i32 @hx509_cert_get_SPKI_AlgorithmIdentifier(i32, i32, i32*) #1

declare dso_local i32 @free_AlgorithmIdentifier(i32*) #1

declare dso_local %struct.st_object* @add_st_object(...) #1

declare dso_local i8* @hx509_cert_ref(i32) #1

declare dso_local i32 @add_object_attribute(%struct.st_object*, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @OBJECT_ID(%struct.st_object*) #1

declare dso_local i32 @add_pubkey_info(i32, %struct.st_object*, i8 signext, i32) #1

declare dso_local i64 @hx509_cert_have_private_key(i32) #1

declare dso_local i32 @hx509_xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
