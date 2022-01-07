; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_handle_alpn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_handle_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8, i32* }
%struct.TYPE_13__ = type { i8, i64, i32*, i64, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)*, i32 }

@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_HANDLE_ALPN = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@SSL_AD_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4
@SSL_R_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_handle_alpn(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8 0, i8* %5, align 1
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)*, i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)* %12, null
  br i1 %13, label %14, label %185

14:                                               ; preds = %1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %185

21:                                               ; preds = %14
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)*, i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %27(%struct.TYPE_17__* %28, i8** %4, i8* %5, i32* %33, i32 %39, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %173

50:                                               ; preds = %21
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @OPENSSL_free(i32* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %5, align 1
  %59 = call i8* @OPENSSL_memdup(i8* %57, i8 zeroext %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32* %60, i32** %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %50
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %74 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %75 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %76 = call i32 @SSLfatal(%struct.TYPE_17__* %72, i32 %73, i32 %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %198

77:                                               ; preds = %50
  %78 = load i8, i8* %5, align 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i8 %78, i8* %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %116, label %94

94:                                               ; preds = %77
  %95 = load i8, i8* %5, align 1
  %96 = zext i8 %95 to i32
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 8
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %96, %103
  br i1 %104, label %116, label %105

105:                                              ; preds = %94
  %106 = load i8*, i8** %4, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i8, i8* %5, align 1
  %114 = call i64 @memcmp(i8* %106, i32* %112, i8 zeroext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %172

116:                                              ; preds = %105, %94, %77
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %171, label %124

124:                                              ; preds = %116
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 @ossl_assert(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %124
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %138 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %139 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %140 = call i32 @SSLfatal(%struct.TYPE_17__* %136, i32 %137, i32 %138, i32 %139)
  store i32 0, i32* %2, align 4
  br label %198

141:                                              ; preds = %124
  %142 = load i8*, i8** %4, align 8
  %143 = load i8, i8* %5, align 1
  %144 = call i8* @OPENSSL_memdup(i8* %142, i8 zeroext %143)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  store i32* %145, i32** %150, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %141
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %161 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %162 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %163 = call i32 @SSLfatal(%struct.TYPE_17__* %159, i32 %160, i32 %161, i32 %162)
  store i32 0, i32* %2, align 4
  br label %198

164:                                              ; preds = %141
  %165 = load i8, i8* %5, align 1
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i8 %165, i8* %170, align 8
  br label %171

171:                                              ; preds = %164, %116
  br label %172

172:                                              ; preds = %171, %105
  store i32 1, i32* %2, align 4
  br label %198

173:                                              ; preds = %21
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = load i32, i32* @SSL_AD_NO_APPLICATION_PROTOCOL, align 4
  %180 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %181 = load i32, i32* @SSL_R_NO_APPLICATION_PROTOCOL, align 4
  %182 = call i32 @SSLfatal(%struct.TYPE_17__* %178, i32 %179, i32 %180, i32 %181)
  store i32 0, i32* %2, align 4
  br label %198

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %14, %1
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %193, %185
  store i32 1, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %177, %172, %158, %135, %71
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i8* @OPENSSL_memdup(i8*, i8 zeroext) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i8 zeroext) #1

declare dso_local i32 @ossl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
