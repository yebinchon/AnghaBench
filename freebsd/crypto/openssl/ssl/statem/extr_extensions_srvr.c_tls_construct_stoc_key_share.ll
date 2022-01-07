; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_key_share.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32* }

@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_key_share = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_key_share(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SSL_HRR_PENDING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %5
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %30, i32* %6, align 4
  br label %173

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %34 = call i32 @WPACKET_put_bytes_u16(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @WPACKET_start_sub_packet_u16(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @WPACKET_put_bytes_u16(i32* %41, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @WPACKET_close(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49, %40, %36, %31
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %56 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %57 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %58 = call i32 @SSLfatal(%struct.TYPE_10__* %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %59, i32* %6, align 4
  br label %173

60:                                               ; preds = %49
  %61 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %61, i32* %6, align 4
  br label %173

62:                                               ; preds = %5
  %63 = load i32*, i32** %14, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = call i32 @tls13_generate_handshake_secret(%struct.TYPE_10__* %71, i32* null, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %78 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_10__* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %80, i32* %6, align 4
  br label %173

81:                                               ; preds = %70
  %82 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %82, i32* %6, align 4
  br label %173

83:                                               ; preds = %62
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %86 = call i32 @WPACKET_put_bytes_u16(i32* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @WPACKET_start_sub_packet_u16(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @WPACKET_put_bytes_u16(i32* %93, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %92, %88, %83
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %104 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %105 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %106 = call i32 @SSLfatal(%struct.TYPE_10__* %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %107, i32* %6, align 4
  br label %173

108:                                              ; preds = %92
  %109 = load i32*, i32** %14, align 8
  %110 = call i32* @ssl_generate_pkey(i32* %109)
  store i32* %110, i32** %15, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %116 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %117 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %118 = call i32 @SSLfatal(%struct.TYPE_10__* %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %119, i32* %6, align 4
  br label %173

120:                                              ; preds = %108
  %121 = load i32*, i32** %15, align 8
  %122 = call i64 @EVP_PKEY_get1_tls_encodedpoint(i32* %121, i8** %12)
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %128 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %129 = load i32, i32* @ERR_R_EC_LIB, align 4
  %130 = call i32 @SSLfatal(%struct.TYPE_10__* %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @EVP_PKEY_free(i32* %131)
  %133 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %133, i32* %6, align 4
  br label %173

134:                                              ; preds = %120
  %135 = load i32*, i32** %8, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @WPACKET_sub_memcpy_u16(i32* %135, i8* %136, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @WPACKET_close(i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %140, %134
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %147 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %148 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %149 = call i32 @SSLfatal(%struct.TYPE_10__* %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @EVP_PKEY_free(i32* %150)
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @OPENSSL_free(i8* %152)
  %154 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %154, i32* %6, align 4
  br label %173

155:                                              ; preds = %140
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @OPENSSL_free(i8* %156)
  %158 = load i32*, i32** %15, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32* %158, i32** %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = call i64 @ssl_derive(%struct.TYPE_10__* %164, i32* %165, i32* %166, i32 1)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %170, i32* %6, align 4
  br label %173

171:                                              ; preds = %155
  %172 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %171, %169, %144, %125, %113, %101, %81, %74, %60, %53, %29
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @tls13_generate_handshake_secret(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32* @ssl_generate_pkey(i32*) #1

declare dso_local i64 @EVP_PKEY_get1_tls_encodedpoint(i32*, i8**) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_10__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
