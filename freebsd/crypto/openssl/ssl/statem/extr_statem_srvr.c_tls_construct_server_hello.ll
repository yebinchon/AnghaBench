; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_server_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, i8*, i32, i64, %struct.TYPE_14__*, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i8*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 (i32, i32*, i64*)* }
%struct.TYPE_15__ = type { i32 }

@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@hrrrandom = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_SERVER_HELLO = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_server_hello(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSL_HRR_PENDING, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TLS1_2_VERSION, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @WPACKET_put_bytes_u16(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SSL_HRR_PENDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @hrrrandom, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi i32 [ %46, %45 ], [ %52, %47 ]
  %55 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %56 = call i32 @WPACKET_memcpy(i32* %39, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53, %32
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %61 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_HELLO, align 4
  %62 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %63 = call i32 @SSLfatal(%struct.TYPE_20__* %59, i32 %60, i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %232

64:                                               ; preds = %53
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 9
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80, %64
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %80, %71
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %7, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %10, align 8
  br label %111

100:                                              ; preds = %90
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 6
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %7, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %10, align 8
  br label %111

111:                                              ; preds = %100, %93
  %112 = load i64, i64* %7, align 8
  %113 = icmp ugt i64 %112, 8
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %117 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_HELLO, align 4
  %118 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %119 = call i32 @SSLfatal(%struct.TYPE_20__* %115, i32 %116, i32 %117, i32 %118)
  store i32 0, i32* %3, align 4
  br label %232

120:                                              ; preds = %111
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = icmp eq %struct.TYPE_16__* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %123, %120
  store i32 0, i32* %6, align 4
  br label %141

132:                                              ; preds = %123
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %132, %131
  %142 = load i32*, i32** %5, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @WPACKET_sub_memcpy_u8(i32* %142, i8* %143, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %141
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32 (i32, i32*, i64*)*, i32 (i32, i32*, i64*)** %151, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 %152(i32 %158, i32* %159, i64* %8)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %147
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @WPACKET_put_bytes_u8(i32* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162, %147, %141
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %170 = load i32, i32* @SSL_F_TLS_CONSTRUCT_SERVER_HELLO, align 4
  %171 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %172 = call i32 @SSLfatal(%struct.TYPE_20__* %168, i32 %169, i32 %170, i32 %171)
  store i32 0, i32* %3, align 4
  br label %232

173:                                              ; preds = %162
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SSL_HRR_PENDING, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  br label %193

183:                                              ; preds = %173
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %185 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @SSL_EXT_TLS1_3_SERVER_HELLO, align 4
  br label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  br label %193

193:                                              ; preds = %191, %181
  %194 = phi i32 [ %182, %181 ], [ %192, %191 ]
  %195 = call i32 @tls_construct_extensions(%struct.TYPE_20__* %174, i32* %175, i32 %194, i32* null, i32 0)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %232

198:                                              ; preds = %193
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @SSL_HRR_PENDING, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %198
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = call i32 @SSL_SESSION_free(%struct.TYPE_14__* %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 6
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %210, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 5
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %214 = call i32 @create_synthetic_message_hash(%struct.TYPE_20__* %213, i32* null, i32 0, i32* null, i32 0)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %232

217:                                              ; preds = %204
  br label %231

218:                                              ; preds = %198
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %218
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %227 = call i32 @ssl3_digest_cached_records(%struct.TYPE_20__* %226, i32 0)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %232

230:                                              ; preds = %225, %218
  br label %231

231:                                              ; preds = %230, %217
  store i32 1, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %229, %216, %197, %167, %114, %58
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_20__*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i32, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_20__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_14__*) #1

declare dso_local i32 @create_synthetic_message_hash(%struct.TYPE_20__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
