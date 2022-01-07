; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_security_callback_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_security_callback_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i32, i32, i8*, i8*)*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Security callback: \00", align 1
@callback_types = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Version=%s\00", align 1
@ssl_versions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@SSL_SECOP_OTHER_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s, bits=%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"s_cb.c:security_callback_debug op=0x%x\00", align 1
@signature_tls13_scheme_list = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c" scheme=%s\00", align 1
@signature_tls12_alg_list = common dso_local global i32 0, align 4
@signature_tls12_hash_list = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c" digest=%s, algorithm=%s\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c" scheme=unknown(0x%04x)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c", security bits=%d\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i8*, i8*)* @security_callback_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_callback_debug(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %16, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32*, i32*, i32, i32, i32, i8*, i8*)*, i32 (i32*, i32*, i32, i32, i32, i8*, i8*)** %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = call i32 %38(i32* %39, i32* %40, i32 %41, i32 %42, i32 %43, i8* %44, i8* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %7
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %239

55:                                               ; preds = %49, %7
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BIO_puts(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @callback_types, align 4
  %62 = call i8* @lookup(i32 %60, i32 %61, i8* null)
  store i8* %62, i8** %20, align 8
  %63 = load i8*, i8** %20, align 8
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %11, align 4
  switch i32 %66, label %78 [
    i32 129, label %67
    i32 140, label %67
    i32 128, label %68
    i32 141, label %76
    i32 134, label %76
    i32 130, label %77
    i32 131, label %77
    i32 133, label %77
    i32 132, label %77
  ]

67:                                               ; preds = %55, %55
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %78

68:                                               ; preds = %55
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @ssl_versions, align 4
  %74 = call i8* @lookup(i32 %72, i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (i32, i8*, ...) @BIO_printf(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %78

76:                                               ; preds = %55, %55
  store i32 1, i32* %19, align 4
  br label %78

77:                                               ; preds = %55, %55, %55, %55
  store i32 0, i32* %21, align 4
  br label %78

78:                                               ; preds = %55, %77, %76, %68, %67
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %20, align 8
  %86 = call i32 (i32, i8*, ...) @BIO_printf(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SSL_SECOP_OTHER_TYPE, align 4
  %90 = and i32 %88, %89
  switch i32 %90, label %220 [
    i32 138, label %91
    i32 137, label %98
    i32 136, label %112
    i32 139, label %121
    i32 135, label %147
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = call i8* @SSL_CIPHER_get_name(i8* %95)
  %97 = call i32 @BIO_puts(i32 %94, i8* %96)
  br label %220

98:                                               ; preds = %87
  %99 = load i32, i32* %13, align 4
  %100 = call i8* @EC_curve_nid2nist(i32 %99)
  store i8* %100, i8** %22, align 8
  %101 = load i8*, i8** %22, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = call i8* @OBJ_nid2sn(i32 %104)
  store i8* %105, i8** %22, align 8
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %22, align 8
  %111 = call i32 @BIO_puts(i32 %109, i8* %110)
  br label %220

112:                                              ; preds = %87
  %113 = load i8*, i8** %14, align 8
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %23, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %23, align 8
  %119 = call i8* @DH_bits(i32* %118)
  %120 = call i32 (i32, i8*, ...) @BIO_printf(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  br label %220

121:                                              ; preds = %87
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i8*, i8** %14, align 8
  %126 = call i32 @X509_get_signature_nid(i8* %125)
  store i32 %126, i32* %24, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %24, align 4
  %131 = call i8* @OBJ_nid2sn(i32 %130)
  %132 = call i32 @BIO_puts(i32 %129, i8* %131)
  br label %146

133:                                              ; preds = %121
  %134 = load i8*, i8** %14, align 8
  %135 = call i32* @X509_get0_pubkey(i8* %134)
  store i32* %135, i32** %25, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %26, align 8
  %136 = load i32*, i32** %25, align 8
  %137 = call i32 @EVP_PKEY_get0_asn1(i32* %136)
  %138 = call i32 @EVP_PKEY_asn1_get0_info(i32* null, i32* null, i32* null, i32* null, i8** %26, i32 %137)
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %26, align 8
  %143 = load i32*, i32** %25, align 8
  %144 = call i32 @EVP_PKEY_bits(i32* %143)
  %145 = call i32 (i32, i8*, ...) @BIO_printf(i32 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %142, i32 %144)
  br label %146

146:                                              ; preds = %133, %124
  br label %220

147:                                              ; preds = %87
  %148 = load i8*, i8** %14, align 8
  store i8* %148, i8** %27, align 8
  store i8* null, i8** %28, align 8
  %149 = load i8*, i8** %27, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl i32 %152, 8
  %154 = load i8*, i8** %27, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %153, %157
  store i32 %158, i32* %29, align 4
  %159 = load i8*, i8** %20, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %147
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %20, align 8
  %166 = call i32 (i32, i8*, ...) @BIO_printf(i32 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %165)
  br label %173

167:                                              ; preds = %147
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 (i32, i8*, ...) @BIO_printf(i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %167, %161
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* @signature_tls13_scheme_list, align 4
  %176 = call i8* @lookup(i32 %174, i32 %175, i8* null)
  store i8* %176, i8** %28, align 8
  %177 = load i8*, i8** %28, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %28, align 8
  %184 = call i32 (i32, i8*, ...) @BIO_printf(i32 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %183)
  br label %219

185:                                              ; preds = %173
  %186 = load i8*, i8** %27, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  store i32 %189, i32* %30, align 4
  %190 = load i8*, i8** %27, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  store i32 %193, i32* %31, align 4
  %194 = load i32, i32* %30, align 4
  %195 = load i32, i32* @signature_tls12_alg_list, align 4
  %196 = call i8* @lookup(i32 %194, i32 %195, i8* null)
  store i8* %196, i8** %32, align 8
  %197 = load i32, i32* %31, align 4
  %198 = load i32, i32* @signature_tls12_hash_list, align 4
  %199 = call i8* @lookup(i32 %197, i32 %198, i8* null)
  store i8* %199, i8** %33, align 8
  %200 = load i8*, i8** %32, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %185
  %203 = load i8*, i8** %33, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %33, align 8
  %210 = load i8*, i8** %32, align 8
  %211 = call i32 (i32, i8*, ...) @BIO_printf(i32 %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %209, i8* %210)
  br label %218

212:                                              ; preds = %202, %185
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %29, align 4
  %217 = call i32 (i32, i8*, ...) @BIO_printf(i32 %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %212, %205
  br label %219

219:                                              ; preds = %218, %179
  br label %220

220:                                              ; preds = %219, %87, %146, %112, %106, %91
  %221 = load i32, i32* %18, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 (i32, i8*, ...) @BIO_printf(i32 %226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %223, %220
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)
  %237 = call i32 (i32, i8*, ...) @BIO_printf(i32 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %236)
  %238 = load i32, i32* %17, align 4
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %229, %54
  %240 = load i32, i32* %8, align 4
  ret i32 %240
}

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i8* @lookup(i32, i32, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i8* @SSL_CIPHER_get_name(i8*) #1

declare dso_local i8* @EC_curve_nid2nist(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i8* @DH_bits(i32*) #1

declare dso_local i32 @X509_get_signature_nid(i8*) #1

declare dso_local i32* @X509_get0_pubkey(i8*) #1

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32*, i32*, i32*, i32*, i8**, i32) #1

declare dso_local i32 @EVP_PKEY_get0_asn1(i32*) #1

declare dso_local i32 @EVP_PKEY_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
