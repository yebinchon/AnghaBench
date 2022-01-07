; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_alpn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64 }

@SSL_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_ALPN = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_alpn(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = load i32, i32* @SSL_AD_UNSUPPORTED_EXTENSION, align 4
  %22 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %23 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_12__* %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %6, align 4
  br label %195

25:                                               ; preds = %5
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @PACKET_get_net_2_len(i32* %26, i64* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @PACKET_remaining(i32* %30)
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @PACKET_get_1_len(i32* %35, i64* %12)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @PACKET_remaining(i32* %39)
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %34, %29, %25
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %46 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %47 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %48 = call i32 @SSLfatal(%struct.TYPE_12__* %44, i32 %45, i32 %46, i32 %47)
  store i32 0, i32* %6, align 4
  br label %195

49:                                               ; preds = %38
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @OPENSSL_free(i32* %54)
  %56 = load i64, i64* %12, align 8
  %57 = call i32* @OPENSSL_malloc(i64 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32* %57, i32** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %49
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %71 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %72 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %73 = call i32 @SSLfatal(%struct.TYPE_12__* %69, i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %6, align 4
  br label %195

74:                                               ; preds = %49
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @PACKET_copy_bytes(i32* %75, i32* %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %74
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %87 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %88 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %89 = call i32 @SSLfatal(%struct.TYPE_12__* %85, i32 %86, i32 %87, i32 %88)
  store i32 0, i32* %6, align 4
  br label %195

90:                                               ; preds = %74
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %127, label %103

103:                                              ; preds = %90
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %127, label %112

112:                                              ; preds = %103
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @memcmp(i32* %118, i32* %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %112, %103, %90
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %112
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %194, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  %144 = zext i1 %143 to i32
  %145 = call i32 @ossl_assert(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %136
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %150 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %151 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %152 = call i32 @SSLfatal(%struct.TYPE_12__* %148, i32 %149, i32 %150, i32 %151)
  store i32 0, i32* %6, align 4
  br label %195

153:                                              ; preds = %136
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32* @OPENSSL_memdup(i32* %158, i64 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  store i32* %164, i32** %169, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %153
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %180 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %181 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %182 = call i32 @SSLfatal(%struct.TYPE_12__* %178, i32 %179, i32 %180, i32 %181)
  store i32 0, i32* %6, align 4
  br label %195

183:                                              ; preds = %153
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  store i64 %188, i64* %193, align 8
  br label %194

194:                                              ; preds = %183, %131
  store i32 1, i32* %6, align 4
  br label %195

195:                                              ; preds = %194, %177, %147, %84, %68, %43, %19
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_net_2_len(i32*, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_1_len(i32*, i64*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32*, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32* @OPENSSL_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
