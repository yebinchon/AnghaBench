; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_write_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_write_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_FINISHED = common dso_local global i32 0, align 4
@WRITE_TRAN_CONTINUE = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECTING = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_FINISHED_WRITING = common dso_local global i32 0, align 4
@TLS1_FLAGS_SKIP_CERT_VERIFY = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_write_transition(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 6
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call i64 @SSL_IS_TLS13(%struct.TYPE_14__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = call i32 @ossl_statem_client13_write_transition(%struct.TYPE_14__* %11)
  store i32 %12, i32* %2, align 4
  br label %223

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 128, label %24
    i32 141, label %32
    i32 133, label %36
    i32 137, label %59
    i32 129, label %80
    i32 142, label %82
    i32 138, label %86
    i32 136, label %102
    i32 131, label %106
    i32 135, label %134
    i32 134, label %138
    i32 130, label %177
    i32 132, label %181
    i32 140, label %192
    i32 139, label %205
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %20 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION, align 4
  %21 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %22 = call i32 @SSLfatal(%struct.TYPE_14__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %223

24:                                               ; preds = %13
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %30, i32* %2, align 4
  br label %223

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %13, %31
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i32 133, i32* %34, align 4
  %35 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %35, i32* %2, align 4
  br label %223

36:                                               ; preds = %13
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 134, i32* %51, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 129, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %56, i32* %2, align 4
  br label %223

57:                                               ; preds = %36
  %58 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %58, i32* %2, align 4
  br label %223

59:                                               ; preds = %13
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SSL_EARLY_DATA_FINISHED_WRITING, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 134, i32* %74, align 4
  br label %78

75:                                               ; preds = %66, %59
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i32 133, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %79, i32* %2, align 4
  br label %223

80:                                               ; preds = %13
  %81 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %81, i32* %2, align 4
  br label %223

82:                                               ; preds = %13
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 133, i32* %84, align 4
  %85 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %85, i32* %2, align 4
  br label %223

86:                                               ; preds = %13
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 136, i32* %96, align 4
  br label %100

97:                                               ; preds = %86
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 131, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %101, i32* %2, align 4
  br label %223

102:                                              ; preds = %13
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store i32 131, i32* %104, align 4
  %105 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %105, i32* %2, align 4
  br label %223

106:                                              ; preds = %13
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i32 135, i32* %116, align 4
  br label %120

117:                                              ; preds = %106
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  store i32 134, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @TLS1_FLAGS_SKIP_CERT_VERIFY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i32 134, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %120
  %133 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %133, i32* %2, align 4
  br label %223

134:                                              ; preds = %13
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  store i32 134, i32* %136, align 4
  %137 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %137, i32* %2, align 4
  br label %223

138:                                              ; preds = %13
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SSL_HRR_PENDING, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store i32 133, i32* %146, align 4
  br label %175

147:                                              ; preds = %138
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 129, i32* %155, align 4
  br label %174

156:                                              ; preds = %147
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = call i32 @SSL_IS_DTLS(%struct.TYPE_14__* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  store i32 130, i32* %169, align 4
  br label %173

170:                                              ; preds = %160, %156
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i32 132, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %144
  %176 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %176, i32* %2, align 4
  br label %223

177:                                              ; preds = %13
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  store i32 132, i32* %179, align 4
  %180 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %180, i32* %2, align 4
  br label %223

181:                                              ; preds = %13
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  store i32 128, i32* %188, align 4
  %189 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %189, i32* %2, align 4
  br label %223

190:                                              ; preds = %181
  %191 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %191, i32* %2, align 4
  br label %223

192:                                              ; preds = %13
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  store i32 134, i32* %199, align 4
  %200 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %200, i32* %2, align 4
  br label %223

201:                                              ; preds = %192
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  store i32 128, i32* %203, align 4
  %204 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %204, i32* %2, align 4
  br label %223

205:                                              ; preds = %13
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %207 = call i32 @ssl3_renegotiate_check(%struct.TYPE_14__* %206, i32 1)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %211 = call i32 @tls_setup_handshake(%struct.TYPE_14__* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %214, i32* %2, align 4
  br label %223

215:                                              ; preds = %209
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i32 133, i32* %217, align 4
  %218 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %218, i32* %2, align 4
  br label %223

219:                                              ; preds = %205
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  store i32 128, i32* %221, align 4
  %222 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %215, %213, %201, %197, %190, %186, %177, %175, %134, %132, %102, %100, %82, %80, %78, %57, %55, %32, %29, %17, %10
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_14__*) #1

declare dso_local i32 @ossl_statem_client13_write_transition(%struct.TYPE_14__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_14__*) #1

declare dso_local i32 @ssl3_renegotiate_check(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @tls_setup_handshake(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
