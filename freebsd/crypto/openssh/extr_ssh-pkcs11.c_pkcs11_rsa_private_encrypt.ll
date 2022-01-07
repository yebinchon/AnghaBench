; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_rsa_private_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_rsa_private_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs11_key = type { i64, %struct.TYPE_12__*, i32, i32* }
%struct.TYPE_12__ = type { %struct.pkcs11_slotinfo*, %struct.TYPE_10__*, i32 }
%struct.pkcs11_slotinfo = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_10__ = type { i8* (i32, i32, i32*, i32)*, i8* (i32, %struct.TYPE_9__*, i32)*, i8* (i32, i32*, i32, i32*, i32*)* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32*, i32 }

@CKO_PRIVATE_KEY = common dso_local global i32 0, align 4
@CK_TRUE = common dso_local global i32 0, align 4
@CKM_RSA_PKCS = common dso_local global i32 0, align 4
@NULL_PTR = common dso_local global i32 0, align 4
@CKA_CLASS = common dso_local global i32 0, align 4
@CKA_ID = common dso_local global i32 0, align 4
@CKA_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RSA_get_app_data failed for rsa %p\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"no pkcs11 (valid) provider for rsa %p\00", align 1
@CKF_LOGIN_REQUIRED = common dso_local global i32 0, align 4
@pkcs11_interactive = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"need pin entry%s\00", align 1
@CKF_PROTECTED_AUTHENTICATION_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c" on reader keypad\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Deferring PIN entry to reader keypad.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Enter PIN for '%s': \00", align 1
@RP_ALLOW_EOF = common dso_local global i32 0, align 4
@CKU_USER = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i8* null, align 8
@CKR_USER_ALREADY_LOGGED_IN = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"C_Login failed: %lu\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"cannot find private key\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"C_SignInit failed: %lu\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"C_Sign failed: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i8*, i32)* @pkcs11_rsa_private_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs11_rsa_private_encrypt(i32 %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pkcs11_key*, align 8
  %13 = alloca %struct.pkcs11_slotinfo*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 4
  %21 = alloca [3 x %struct.TYPE_11__], align 16
  %22 = alloca i8*, align 8
  %23 = alloca [1024 x i8], align 16
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* @CKO_PRIVATE_KEY, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @CK_TRUE, align 4
  store i32 %26, i32* %19, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %28 = load i32, i32* @CKM_RSA_PKCS, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %30 = load i32, i32* @NULL_PTR, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* @CKA_CLASS, align 4
  store i32 %34, i32* %33, align 16
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32* inttoptr (i64 4 to i32*), i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  store i32* null, i32** %37, align 16
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 1
  %40 = bitcast %struct.TYPE_11__* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 32, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %42 = load i32, i32* @CKA_ID, align 4
  store i32 %42, i32* %41, align 16
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* @CKA_SIGN, align 4
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  store i32* inttoptr (i64 4 to i32*), i32** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store i32* null, i32** %49, align 16
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  store i32 0, i32* %50, align 8
  store i8* null, i8** %22, align 8
  store i32 -1, i32* %24, align 4
  %51 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  store i32* %18, i32** %52, align 8
  %53 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i32* %19, i32** %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call %struct.pkcs11_key* @RSA_get_app_data(i8* %55)
  store %struct.pkcs11_key* %56, %struct.pkcs11_key** %12, align 8
  %57 = icmp eq %struct.pkcs11_key* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %5
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %59)
  store i32 -1, i32* %6, align 4
  br label %254

61:                                               ; preds = %5
  %62 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %63 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %68 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66, %61
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %6, align 4
  br label %254

76:                                               ; preds = %66
  %77 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %78 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %14, align 8
  %82 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %83 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %85, align 8
  %87 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %88 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %86, i64 %89
  store %struct.pkcs11_slotinfo* %90, %struct.pkcs11_slotinfo** %13, align 8
  %91 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %92 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CKF_LOGIN_REQUIRED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %183

98:                                               ; preds = %76
  %99 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %100 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %183, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @pkcs11_interactive, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %108 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CKF_PROTECTED_AUTHENTICATION_PATH, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  store i32 -1, i32* %6, align 4
  br label %254

117:                                              ; preds = %103
  %118 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %119 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CKF_PROTECTED_AUTHENTICATION_PATH, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 @verbose(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %141

127:                                              ; preds = %117
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %129 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %130 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @snprintf(i8* %128, i32 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %132)
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %135 = load i32, i32* @RP_ALLOW_EOF, align 4
  %136 = call i8* @read_passphrase(i8* %134, i32 %135)
  store i8* %136, i8** %22, align 8
  %137 = load i8*, i8** %22, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  store i32 -1, i32* %6, align 4
  br label %254

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140, %125
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i8* (i32, i32, i32*, i32)*, i8* (i32, i32, i32*, i32)** %143, align 8
  %145 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %146 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CKU_USER, align 4
  %149 = load i8*, i8** %22, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i8*, i8** %22, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %141
  %154 = load i8*, i8** %22, align 8
  %155 = call i32 @strlen(i8* %154)
  br label %157

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156, %153
  %158 = phi i32 [ %155, %153 ], [ 0, %156 ]
  %159 = call i8* %144(i32 %147, i32 %148, i32* %150, i32 %158)
  store i8* %159, i8** %17, align 8
  %160 = load i8*, i8** %22, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i8*, i8** %22, align 8
  %164 = load i8*, i8** %22, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = call i32 @explicit_bzero(i8* %163, i32 %165)
  %167 = load i8*, i8** %22, align 8
  %168 = call i32 @free(i8* %167)
  br label %169

169:                                              ; preds = %162, %157
  %170 = load i8*, i8** %17, align 8
  %171 = load i8*, i8** @CKR_OK, align 8
  %172 = icmp ne i8* %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load i8*, i8** %17, align 8
  %175 = load i8*, i8** @CKR_USER_ALREADY_LOGGED_IN, align 8
  %176 = icmp ne i8* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i8*, i8** %17, align 8
  %179 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  store i32 -1, i32* %6, align 4
  br label %254

180:                                              ; preds = %173, %169
  %181 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %182 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %98, %76
  %184 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %185 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  store i32* %186, i32** %188, align 8
  %189 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %190 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %195 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %194, i32 0, i32 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %198 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %201 = call i64 @pkcs11_find(%struct.TYPE_12__* %196, i64 %199, %struct.TYPE_11__* %200, i32 3, i32* %15)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %183
  %204 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %205 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %204, i32 0, i32 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load %struct.pkcs11_key*, %struct.pkcs11_key** %12, align 8
  %208 = getelementptr inbounds %struct.pkcs11_key, %struct.pkcs11_key* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %211 = call i64 @pkcs11_find(%struct.TYPE_12__* %206, i64 %209, %struct.TYPE_11__* %210, i32 2, i32* %15)
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %252

215:                                              ; preds = %203, %183
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i8* (i32, %struct.TYPE_9__*, i32)*, i8* (i32, %struct.TYPE_9__*, i32)** %217, align 8
  %219 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %220 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %15, align 4
  %223 = call i8* %218(i32 %221, %struct.TYPE_9__* %20, i32 %222)
  store i8* %223, i8** %17, align 8
  %224 = load i8*, i8** @CKR_OK, align 8
  %225 = icmp ne i8* %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %215
  %227 = load i8*, i8** %17, align 8
  %228 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %227)
  br label %251

229:                                              ; preds = %215
  %230 = load i8*, i8** %10, align 8
  %231 = call i32 @RSA_size(i8* %230)
  store i32 %231, i32* %16, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load i8* (i32, i32*, i32, i32*, i32*)*, i8* (i32, i32*, i32, i32*, i32*)** %233, align 8
  %235 = load %struct.pkcs11_slotinfo*, %struct.pkcs11_slotinfo** %13, align 8
  %236 = getelementptr inbounds %struct.pkcs11_slotinfo, %struct.pkcs11_slotinfo* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = call i8* %234(i32 %237, i32* %238, i32 %239, i32* %240, i32* %16)
  store i8* %241, i8** %17, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = load i8*, i8** @CKR_OK, align 8
  %244 = icmp eq i8* %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %229
  %246 = load i32, i32* %16, align 4
  store i32 %246, i32* %24, align 4
  br label %250

247:                                              ; preds = %229
  %248 = load i8*, i8** %17, align 8
  %249 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %247, %245
  br label %251

251:                                              ; preds = %250, %226
  br label %252

252:                                              ; preds = %251, %213
  %253 = load i32, i32* %24, align 4
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %252, %177, %139, %106, %73, %58
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pkcs11_key* @RSA_get_app_data(i8*) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @verbose(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @read_passphrase(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @explicit_bzero(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @pkcs11_find(%struct.TYPE_12__*, i64, %struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @RSA_size(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
