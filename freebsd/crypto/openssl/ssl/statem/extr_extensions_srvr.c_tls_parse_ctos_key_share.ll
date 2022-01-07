; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_key_share.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@TLSEXT_KEX_MODE_FLAG_KE_DHE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_MISSING_EXTENSION = common dso_local global i32 0, align 4
@SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS = common dso_local global i32 0, align 4
@SSL_R_BAD_ECPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_key_share(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE_DHE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %190

33:                                               ; preds = %24, %5
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %44 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_11__* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %6, align 4
  br label %190

46:                                               ; preds = %33
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @PACKET_as_length_prefixed_2(i32* %47, i32* %13)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %53 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %54 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %55 = call i32 @SSLfatal(%struct.TYPE_11__* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %6, align 4
  br label %190

56:                                               ; preds = %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = call i32 @tls1_get_supported_groups(%struct.TYPE_11__* %57, i32** %16, i64* %18)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = call i32 @tls1_get_peer_groups(%struct.TYPE_11__* %59, i32** %15, i64* %17)
  %61 = load i64, i64* %17, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = load i32, i32* @SSL_AD_MISSING_EXTENSION, align 4
  %66 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %67 = load i32, i32* @SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION, align 4
  %68 = call i32 @SSLfatal(%struct.TYPE_11__* %64, i32 %65, i32 %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %190

69:                                               ; preds = %56
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = call i64 @PACKET_remaining(i32* %13)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %82 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %83 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %84 = call i32 @SSLfatal(%struct.TYPE_11__* %80, i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %6, align 4
  br label %190

85:                                               ; preds = %76, %69
  br label %86

86:                                               ; preds = %188, %152, %107, %85
  %87 = call i64 @PACKET_remaining(i32* %13)
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %189

89:                                               ; preds = %86
  %90 = call i32 @PACKET_get_net_2(i32* %13, i32* %12)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = call i32 @PACKET_get_length_prefixed_2(i32* %13, i32* %14)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = call i64 @PACKET_remaining(i32* %14)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95, %92, %89
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %101 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %102 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %103 = call i32 @SSLfatal(%struct.TYPE_11__* %99, i32 %100, i32 %101, i32 %102)
  store i32 0, i32* %6, align 4
  br label %190

104:                                              ; preds = %95
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %86

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %116, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = call i64 @PACKET_remaining(i32* %13)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123, %115
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %129 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %130 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %131 = call i32 @SSLfatal(%struct.TYPE_11__* %127, i32 %128, i32 %129, i32 %130)
  store i32 0, i32* %6, align 4
  br label %190

132:                                              ; preds = %123, %108
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %15, align 8
  %136 = load i64, i64* %17, align 8
  %137 = call i32 @check_in_list(%struct.TYPE_11__* %133, i32 %134, i32* %135, i64 %136, i32 0)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %142 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %143 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %144 = call i32 @SSLfatal(%struct.TYPE_11__* %140, i32 %141, i32 %142, i32 %143)
  store i32 0, i32* %6, align 4
  br label %190

145:                                              ; preds = %132
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %16, align 8
  %149 = load i64, i64* %18, align 8
  %150 = call i32 @check_in_list(%struct.TYPE_11__* %146, i32 %147, i32* %148, i64 %149, i32 1)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  br label %86

153:                                              ; preds = %145
  %154 = load i32, i32* %12, align 4
  %155 = call i32* @ssl_generate_param_group(i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  store i32* %155, i32** %159, align 8
  %160 = icmp eq i32* %155, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %164 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %165 = load i32, i32* @SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_11__* %162, i32 %163, i32 %164, i32 %165)
  store i32 0, i32* %6, align 4
  br label %190

167:                                              ; preds = %153
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @PACKET_data(i32* %14)
  %179 = call i64 @PACKET_remaining(i32* %14)
  %180 = call i32 @EVP_PKEY_set1_tls_encodedpoint(i32* %177, i32 %178, i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %167
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %185 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %186 = load i32, i32* @SSL_R_BAD_ECPOINT, align 4
  %187 = call i32 @SSLfatal(%struct.TYPE_11__* %183, i32 %184, i32 %185, i32 %186)
  store i32 0, i32* %6, align 4
  br label %190

188:                                              ; preds = %167
  store i32 1, i32* %19, align 4
  br label %86

189:                                              ; preds = %86
  store i32 1, i32* %6, align 4
  br label %190

190:                                              ; preds = %189, %182, %161, %139, %126, %98, %79, %63, %50, %40, %32
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_11__*, i32**, i64*) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_11__*, i32**, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @check_in_list(%struct.TYPE_11__*, i32, i32*, i64, i32) #1

declare dso_local i32* @ssl_generate_param_group(i32) #1

declare dso_local i32 @EVP_PKEY_set1_tls_encodedpoint(i32*, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
