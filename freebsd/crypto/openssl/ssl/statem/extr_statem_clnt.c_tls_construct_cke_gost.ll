; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_gost.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_gost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@NID_id_GostR3411_94 = common dso_local global i32 0, align 4
@SSL_aGOST12 = common dso_local global i32 0, align 4
@NID_id_GostR3411_2012_256 = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CKE_GOST = common dso_local global i32 0, align 4
@SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_ENCRYPT = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_SET_IV = common dso_local global i32 0, align 4
@SSL_R_LIBRARY_BUG = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @tls_construct_cke_gost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_construct_cke_gost(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32, i32* @NID_id_GostR3411_94, align 4
  store i32 %16, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SSL_aGOST12, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @NID_id_GostR3411_2012_256, align 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %41 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %42 = load i32, i32* @SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_12__* %39, i32 %40, i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %201

44:                                               ; preds = %30
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @X509_get0_pubkey(i32* %45)
  %47 = call i32* @EVP_PKEY_CTX_new(i32 %46, i32* null)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %53 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @SSLfatal(%struct.TYPE_12__* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %201

56:                                               ; preds = %44
  store i64 32, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i8* @OPENSSL_malloc(i64 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %64 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %65 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %66 = call i32 @SSLfatal(%struct.TYPE_12__* %62, i32 %63, i32 %64, i32 %65)
  br label %193

67:                                               ; preds = %56
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @EVP_PKEY_encrypt_init(i32* %68)
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i64 @RAND_bytes(i8* %72, i32 %74)
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71, %67
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %80 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %81 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %82 = call i32 @SSLfatal(%struct.TYPE_12__* %78, i32 %79, i32 %80, i32 %81)
  br label %193

83:                                               ; preds = %71
  %84 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %118, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @EVP_get_digestbynid(i32 %89)
  %91 = call i64 @EVP_DigestInit(i32* %88, i32 %90)
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %87
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %101 = call i64 @EVP_DigestUpdate(i32* %94, i32 %99, i32 %100)
  %102 = icmp sle i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %93
  %104 = load i32*, i32** %12, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %111 = call i64 @EVP_DigestUpdate(i32* %104, i32 %109, i32 %110)
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %103
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %116 = call i64 @EVP_DigestFinal_ex(i32* %114, i8* %115, i32* %9)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113, %103, %93, %87, %83
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %121 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %122 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %123 = call i32 @SSLfatal(%struct.TYPE_12__* %119, i32 %120, i32 %121, i32 %122)
  br label %193

124:                                              ; preds = %113
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @EVP_MD_CTX_free(i32* %125)
  store i32* null, i32** %12, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @EVP_PKEY_OP_ENCRYPT, align 4
  %129 = load i32, i32* @EVP_PKEY_CTRL_SET_IV, align 4
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %131 = call i64 @EVP_PKEY_CTX_ctrl(i32* %127, i32 -1, i32 %128, i32 %129, i32 8, i8* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %136 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %137 = load i32, i32* @SSL_R_LIBRARY_BUG, align 4
  %138 = call i32 @SSLfatal(%struct.TYPE_12__* %134, i32 %135, i32 %136, i32 %137)
  br label %193

139:                                              ; preds = %124
  store i64 255, i64* %8, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %142 = load i8*, i8** %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i64 @EVP_PKEY_encrypt(i32* %140, i8* %141, i64* %8, i8* %142, i64 %143)
  %145 = icmp sle i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %149 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %150 = load i32, i32* @SSL_R_LIBRARY_BUG, align 4
  %151 = call i32 @SSLfatal(%struct.TYPE_12__* %147, i32 %148, i32 %149, i32 %150)
  br label %193

152:                                              ; preds = %139
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %155 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @WPACKET_put_bytes_u8(i32* %153, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load i64, i64* %8, align 8
  %161 = icmp uge i64 %160, 128
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @WPACKET_put_bytes_u8(i32* %163, i32 129)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162, %159
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @WPACKET_sub_memcpy_u8(i32* %167, i8* %168, i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %166, %162, %152
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %176 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %177 = call i32 @SSLfatal(%struct.TYPE_12__* %173, i32 %174, i32 %175, i32 %176)
  br label %193

178:                                              ; preds = %166
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @EVP_PKEY_CTX_free(i32* %179)
  %181 = load i8*, i8** %14, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i8* %181, i8** %186, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i64 %187, i64* %192, align 8
  store i32 1, i32* %3, align 4
  br label %201

193:                                              ; preds = %172, %146, %133, %118, %77, %61
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @EVP_PKEY_CTX_free(i32* %194)
  %196 = load i8*, i8** %14, align 8
  %197 = load i64, i64* %15, align 8
  %198 = call i32 @OPENSSL_clear_free(i8* %196, i64 %197)
  %199 = load i32*, i32** %12, align 8
  %200 = call i32 @EVP_MD_CTX_free(i32* %199)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %193, %178, %50, %38
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32, i32*) #1

declare dso_local i32 @X509_get0_pubkey(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestInit(i32*, i32) #1

declare dso_local i32 @EVP_get_digestbynid(i32) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i32, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @EVP_PKEY_encrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
