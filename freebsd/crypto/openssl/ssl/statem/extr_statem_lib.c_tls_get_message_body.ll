; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i8*, i32, %struct.TYPE_16__*, i32, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, %struct.TYPE_15__*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i32, i32*, i8*, i64, i32, i64*)* }

@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i64 0, align 8
@SSL2_VERSION = common dso_local global i32 0, align 4
@SSL3_MT_NEWSESSION_TICKET = common dso_local global i64 0, align 8
@SSL3_MT_KEY_UPDATE = common dso_local global i64 0, align 8
@SSL3_MT_SERVER_HELLO = common dso_local global i64 0, align 8
@SSL3_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@hrrrandom = common dso_local global i32 0, align 4
@SERVER_HELLO_RANDOM_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_message_body(%struct.TYPE_17__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSL3_MT_CHANGE_CIPHER_SPEC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  store i32 1, i32* %3, align 4
  br label %237

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %62, %23
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 9
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_17__*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.TYPE_17__*, i32, i32*, i8*, i64, i32, i64*)** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i64, i64* %6, align 8
  %54 = call i32 %45(%struct.TYPE_17__* %46, i32 %47, i32* null, i8* %52, i64 %53, i32 0, i64* %7)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load i32, i32* @SSL_READING, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load i64*, i64** %5, align 8
  store i64 0, i64* %61, align 8
  store i32 0, i32* %3, align 4
  br label %237

62:                                               ; preds = %40
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %6, align 8
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SSL3_MT_FINISHED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @ssl3_take_mac(%struct.TYPE_17__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i64*, i64** %5, align 8
  store i64 0, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %237

86:                                               ; preds = %80, %71
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 7
  %89 = call i64 @RECORD_LAYER_is_sslv2_record(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = bitcast i64* %97 to i8*
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ssl3_finish_mac(%struct.TYPE_17__* %92, i8* %98, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %91
  %105 = load i64*, i64** %5, align 8
  store i64 0, i64* %105, align 8
  store i32 0, i32* %3, align 4
  br label %237

106:                                              ; preds = %91
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 5
  %109 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %108, align 8
  %110 = icmp ne i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 5
  %114 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %113, align 8
  %115 = load i32, i32* @SSL2_VERSION, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 %114(i32 0, i32 %115, i32 0, i64* %120, i64 %123, %struct.TYPE_17__* %124, i32 %127)
  br label %129

129:                                              ; preds = %111, %106
  br label %232

130:                                              ; preds = %86
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = call i32 @SSL_IS_TLS13(%struct.TYPE_17__* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SSL3_MT_NEWSESSION_TICKET, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %203

143:                                              ; preds = %134
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SSL3_MT_KEY_UPDATE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %203

152:                                              ; preds = %143, %130
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SSL3_MT_SERVER_HELLO, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %184, label %161

161:                                              ; preds = %152
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %166 = add i64 %165, 2
  %167 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = icmp ult i64 %164, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* @hrrrandom, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %179 = add i64 %178, 2
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %182 = call i64 @memcmp(i32 %172, i64* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %171, %161, %152
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = bitcast i64* %190 to i8*
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %196 = add i64 %194, %195
  %197 = call i32 @ssl3_finish_mac(%struct.TYPE_17__* %185, i8* %191, i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %184
  %200 = load i64*, i64** %5, align 8
  store i64 0, i64* %200, align 8
  store i32 0, i32* %3, align 4
  br label %237

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201, %171
  br label %203

203:                                              ; preds = %202, %143, %134
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 5
  %206 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %205, align 8
  %207 = icmp ne i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)* %206, null
  br i1 %207, label %208, label %231

208:                                              ; preds = %203
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 5
  %211 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %225 = add i64 %223, %224
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 %211(i32 0, i32 %214, i32 %215, i64* %220, i64 %225, %struct.TYPE_17__* %226, i32 %229)
  br label %231

231:                                              ; preds = %208, %203
  br label %232

232:                                              ; preds = %231, %129
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64*, i64** %5, align 8
  store i64 %235, i64* %236, align 8
  store i32 1, i32* %3, align 4
  br label %237

237:                                              ; preds = %232, %199, %104, %84, %57, %18
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @ssl3_take_mac(%struct.TYPE_17__*) #1

declare dso_local i64 @RECORD_LAYER_is_sslv2_record(i32*) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_17__*, i8*, i64) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_17__*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
