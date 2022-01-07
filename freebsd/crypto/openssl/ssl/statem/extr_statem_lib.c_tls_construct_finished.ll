; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_construct_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_construct_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, i64, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i64, i8*, i64, i64 (%struct.TYPE_20__*, i8*, i64, i32)*, i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_14__ = type { i32 }

@SSL_PHA_REQUESTED = common dso_local global i64 0, align 8
@SSL3_CC_HANDSHAKE = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_FINISHED = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MASTER_SECRET_LABEL = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_finished(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %13, %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 5
  %47 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = load i32, i32* @SSL3_CC_HANDSHAKE, align 4
  %50 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 %47(%struct.TYPE_20__* %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %211

55:                                               ; preds = %40, %32, %27, %23
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %7, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %8, align 8
  br label %90

75:                                               ; preds = %55
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %7, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %75, %60
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  %97 = load i64 (%struct.TYPE_20__*, i8*, i64, i32)*, i64 (%struct.TYPE_20__*, i8*, i64, i32)** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 %97(%struct.TYPE_20__* %98, i8* %99, i64 %100, i32 %106)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %211

111:                                              ; preds = %90
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  store i64 %112, i64* %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @WPACKET_memcpy(i32* %118, i32 %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %111
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %131 = load i32, i32* @SSL_F_TLS_CONSTRUCT_FINISHED, align 4
  %132 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %133 = call i32 @SSLfatal(%struct.TYPE_20__* %129, i32 %130, i32 %131, i32 %132)
  store i32 0, i32* %3, align 4
  br label %211

134:                                              ; preds = %111
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = load i32, i32* @MASTER_SECRET_LABEL, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ssl_log_secret(%struct.TYPE_20__* %139, i32 %140, i32 %145, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %211

154:                                              ; preds = %138, %134
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %157 = icmp ule i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @ossl_assert(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %154
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %163 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %164 = load i32, i32* @SSL_F_TLS_CONSTRUCT_FINISHED, align 4
  %165 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_20__* %162, i32 %163, i32 %164, i32 %165)
  store i32 0, i32* %3, align 4
  br label %211

167:                                              ; preds = %154
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i64, i64* %6, align 8
  %185 = call i32 @memcpy(i32 %177, i32 %183, i64 %184)
  %186 = load i64, i64* %6, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  store i64 %186, i64* %190, align 8
  br label %210

191:                                              ; preds = %167
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i64, i64* %6, align 8
  %204 = call i32 @memcpy(i32 %196, i32 %202, i64 %203)
  %205 = load i64, i64* %6, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  store i64 %205, i64* %209, align 8
  br label %210

210:                                              ; preds = %191, %172
  store i32 1, i32* %3, align 4
  br label %211

211:                                              ; preds = %210, %161, %153, %128, %110, %54
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_20__*) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i32, i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ssl_log_secret(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
