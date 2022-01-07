; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_gost.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_gost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@SSL_aGOST12 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_512 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_256 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST01 = common dso_local global i64 0, align 8
@SSL_aGOST01 = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_GOST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PEER_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*)* @tls_process_cke_gost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_gost(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 32, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @SSL_aGOST12, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load i64, i64* @SSL_PKEY_GOST12_512, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i64, i64* @SSL_PKEY_GOST12_256, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %42, %30
  %53 = load i32*, i32** %8, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = load i64, i64* @SSL_PKEY_GOST01, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %8, align 8
  br label %65

65:                                               ; preds = %55, %52
  br label %82

66:                                               ; preds = %2
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @SSL_aGOST01, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i64, i64* @SSL_PKEY_GOST01, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %8, align 8
  br label %81

81:                                               ; preds = %71, %66
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32*, i32** %8, align 8
  %84 = call i32* @EVP_PKEY_CTX_new(i32* %83, i32* null)
  store i32* %84, i32** %6, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %90 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %91 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %92 = call i32 @SSLfatal(%struct.TYPE_19__* %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %209

93:                                               ; preds = %82
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @EVP_PKEY_decrypt_init(i32* %94)
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %100 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %101 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %102 = call i32 @SSLfatal(%struct.TYPE_19__* %98, i32 %99, i32 %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %209

103:                                              ; preds = %93
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @X509_get0_pubkey(i32 %108)
  store i32* %109, i32** %7, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i64 @EVP_PKEY_derive_set_peer(i32* %113, i32* %114)
  %116 = icmp sle i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @ERR_clear_error()
  br label %119

119:                                              ; preds = %117, %112
  br label %120

120:                                              ; preds = %119, %103
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @PACKET_get_1(i32* %121, i32* %14)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %127 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %128 = or i32 %126, %127
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @PACKET_peek_1(i32* %131, i32* %15)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %130, %124, %120
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %137 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %138 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %139 = call i32 @SSLfatal(%struct.TYPE_19__* %135, i32 %136, i32 %137, i32 %138)
  br label %205

140:                                              ; preds = %130
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %141, 129
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @PACKET_forward(i32* %144, i32 1)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %150 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %151 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %152 = call i32 @SSLfatal(%struct.TYPE_19__* %148, i32 %149, i32 %150, i32 %151)
  br label %205

153:                                              ; preds = %143
  br label %164

154:                                              ; preds = %140
  %155 = load i32, i32* %15, align 4
  %156 = icmp uge i32 %155, 128
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %160 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %161 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %162 = call i32 @SSLfatal(%struct.TYPE_19__* %158, i32 %159, i32 %160, i32 %161)
  br label %205

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %153
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @PACKET_as_length_prefixed_1(i32* %165, i32* %17)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %171 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %172 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %173 = call i32 @SSLfatal(%struct.TYPE_19__* %169, i32 %170, i32 %171, i32 %172)
  br label %205

174:                                              ; preds = %164
  %175 = call i64 @PACKET_remaining(i32* %17)
  store i64 %175, i64* %12, align 8
  %176 = call i8* @PACKET_data(i32* %17)
  store i8* %176, i8** %10, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %179 = load i8*, i8** %10, align 8
  %180 = load i64, i64* %12, align 8
  %181 = call i64 @EVP_PKEY_decrypt(i32* %177, i8* %178, i64* %11, i8* %179, i64 %180)
  %182 = icmp sle i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %174
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %186 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_GOST, align 4
  %187 = load i32, i32* @SSL_R_DECRYPTION_FAILED, align 4
  %188 = call i32 @SSLfatal(%struct.TYPE_19__* %184, i32 %185, i32 %186, i32 %187)
  br label %205

189:                                              ; preds = %174
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %191 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %192 = call i32 @ssl_generate_master_secret(%struct.TYPE_19__* %190, i8* %191, i32 32, i32 0)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  br label %205

195:                                              ; preds = %189
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* @EVP_PKEY_CTRL_PEER_KEY, align 4
  %198 = call i64 @EVP_PKEY_CTX_ctrl(i32* %196, i32 -1, i32 -1, i32 %197, i32 2, i32* null)
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %195
  store i32 1, i32* %16, align 4
  br label %205

205:                                              ; preds = %204, %194, %183, %168, %157, %147, %134
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @EVP_PKEY_CTX_free(i32* %206)
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %97, %87
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i64 @EVP_PKEY_decrypt_init(i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32) #1

declare dso_local i64 @EVP_PKEY_derive_set_peer(i32*, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_peek_1(i32*, i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i32) #1

declare dso_local i32 @PACKET_as_length_prefixed_1(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i8* @PACKET_data(i32*) #1

declare dso_local i64 @EVP_PKEY_decrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_19__*, i8*, i32, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
