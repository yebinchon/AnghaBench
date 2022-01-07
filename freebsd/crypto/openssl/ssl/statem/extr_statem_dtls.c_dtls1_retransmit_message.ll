; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_retransmit_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_retransmit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.dtls1_retransmit_state = type { i32, i32, i32, i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DTLS1_RETRANSMIT_MESSAGE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@DTLS1_CCS_HEADER_LENGTH = common dso_local global i64 0, align 8
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_retransmit_message(%struct.TYPE_19__* %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca %struct.dtls1_retransmit_state, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 8)
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 6
  store i8 %19, i8* %20, align 1
  %21 = load i16, i16* %6, align 2
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  store i8 %22, i8* %23, align 1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %30 = call %struct.TYPE_17__* @pqueue_find(i32 %28, i8* %29)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %9, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = icmp eq %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %36 = load i32, i32* @SSL_F_DTLS1_RETRANSMIT_MESSAGE, align 4
  %37 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %38 = call i32 @SSLfatal(%struct.TYPE_19__* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %200

40:                                               ; preds = %3
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %10, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i64, i64* @DTLS1_CCS_HEADER_LENGTH, align 8
  store i64 %52, i64* %11, align 8
  br label %55

53:                                               ; preds = %40
  %54 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @memcpy(i32 %60, i32 %63, i64 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %74, %75
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 7
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dtls1_set_message_header_int(%struct.TYPE_19__* %79, i32 %83, i64 %87, i32 %91, i32 0, i32 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 4
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 3
  store i32 %103, i32* %104, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = call i32 @DTLS_RECORD_LAYER_get_w_epoch(i32* %114)
  %116 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @DTLS_RECORD_LAYER_set_saved_w_epoch(i32* %150, i32 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %55
  %164 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  br label %167

165:                                              ; preds = %55
  %166 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = call i32 @dtls1_do_write(%struct.TYPE_19__* %157, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.dtls1_retransmit_state, %struct.dtls1_retransmit_state* %13, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @DTLS_RECORD_LAYER_set_saved_w_epoch(i32* %187, i32 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @BIO_flush(i32 %197)
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %167, %33
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @pqueue_find(i32, i8*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @dtls1_set_message_header_int(%struct.TYPE_19__*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @DTLS_RECORD_LAYER_get_w_epoch(i32*) #1

declare dso_local i32 @DTLS_RECORD_LAYER_set_saved_w_epoch(i32*, i32) #1

declare dso_local i32 @dtls1_do_write(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @BIO_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
