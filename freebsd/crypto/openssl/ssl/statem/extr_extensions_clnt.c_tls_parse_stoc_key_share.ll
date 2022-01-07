; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_key_share.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_BAD_ECPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_key_share(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %27, %5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %37 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %38 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %39 = call i32 @SSLfatal(%struct.TYPE_11__* %35, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %6, align 4
  br label %203

40:                                               ; preds = %27
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @PACKET_get_net_2(i32* %41, i32* %12)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %47 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %48 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %49 = call i32 @SSLfatal(%struct.TYPE_11__* %45, i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %6, align 4
  br label %203

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %132

55:                                               ; preds = %50
  store i32* null, i32** %16, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @PACKET_remaining(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %62 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %63 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %64 = call i32 @SSLfatal(%struct.TYPE_11__* %60, i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %203

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %66, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %76 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %77 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_11__* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %6, align 4
  br label %203

79:                                               ; preds = %65
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = call i32 @tls1_get_supported_groups(%struct.TYPE_11__* %80, i32** %16, i64* %18)
  store i64 0, i64* %17, align 8
  br label %82

82:                                               ; preds = %95, %79
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %18, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %98

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %17, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %17, align 8
  br label %82

98:                                               ; preds = %93, %82
  %99 = load i64, i64* %17, align 8
  %100 = load i64, i64* %18, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %106 = call i32 @tls_curve_allowed(%struct.TYPE_11__* %103, i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102, %98
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %111 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %112 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %113 = call i32 @SSLfatal(%struct.TYPE_11__* %109, i32 %110, i32 %111, i32 %112)
  store i32 0, i32* %6, align 4
  br label %203

114:                                              ; preds = %102
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @EVP_PKEY_free(i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  store i32 1, i32* %6, align 4
  br label %203

132:                                              ; preds = %50
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %133, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %143 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %144 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %145 = call i32 @SSLfatal(%struct.TYPE_11__* %141, i32 %142, i32 %143, i32 %144)
  store i32 0, i32* %6, align 4
  br label %203

146:                                              ; preds = %132
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @PACKET_as_length_prefixed_2(i32* %147, i32* %13)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = call i64 @PACKET_remaining(i32* %13)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150, %146
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %156 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %157 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %158 = call i32 @SSLfatal(%struct.TYPE_11__* %154, i32 %155, i32 %156, i32 %157)
  store i32 0, i32* %6, align 4
  br label %203

159:                                              ; preds = %150
  %160 = call i32* (...) @EVP_PKEY_new()
  store i32* %160, i32** %15, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32*, i32** %15, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = call i64 @EVP_PKEY_copy_parameters(i32* %164, i32* %165)
  %167 = icmp sle i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163, %159
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %170 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %171 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %172 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %173 = call i32 @SSLfatal(%struct.TYPE_11__* %169, i32 %170, i32 %171, i32 %172)
  store i32 0, i32* %6, align 4
  br label %203

174:                                              ; preds = %163
  %175 = load i32*, i32** %15, align 8
  %176 = call i32 @PACKET_data(i32* %13)
  %177 = call i64 @PACKET_remaining(i32* %13)
  %178 = call i32 @EVP_PKEY_set1_tls_encodedpoint(i32* %175, i32 %176, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %182 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %183 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %184 = load i32, i32* @SSL_R_BAD_ECPOINT, align 4
  %185 = call i32 @SSLfatal(%struct.TYPE_11__* %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @EVP_PKEY_free(i32* %186)
  store i32 0, i32* %6, align 4
  br label %203

188:                                              ; preds = %174
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = call i64 @ssl_derive(%struct.TYPE_11__* %189, i32* %190, i32* %191, i32 1)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32*, i32** %15, align 8
  %196 = call i32 @EVP_PKEY_free(i32* %195)
  store i32 0, i32* %6, align 4
  br label %203

197:                                              ; preds = %188
  %198 = load i32*, i32** %15, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  store i32* %198, i32** %202, align 8
  store i32 1, i32* %6, align 4
  br label %203

203:                                              ; preds = %197, %194, %180, %168, %153, %140, %114, %108, %73, %59, %44, %34
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_11__*, i32**, i64*) #1

declare dso_local i32 @tls_curve_allowed(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_copy_parameters(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_set1_tls_encodedpoint(i32*, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_11__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
