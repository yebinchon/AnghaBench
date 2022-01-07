; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_write_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_write_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_21__*, i32, %struct.TYPE_18__*, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_CONTINUE = common dso_local global i32 0, align 4
@WRITE_TRAN_FINISHED = common dso_local global i32 0, align 4
@SSL_OP_COOKIE_EXCHANGE = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_write_transition(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %5 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 5
  store %struct.TYPE_24__* %6, %struct.TYPE_24__** %4, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %8 = call i64 @SSL_IS_TLS13(%struct.TYPE_23__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = call i32 @ossl_statem_server13_write_transition(%struct.TYPE_23__* %11)
  store i32 %12, i32* %2, align 4
  br label %226

13:                                               ; preds = %1
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 140, label %24
    i32 141, label %42
    i32 132, label %44
    i32 139, label %48
    i32 142, label %87
    i32 128, label %89
    i32 137, label %148
    i32 135, label %159
    i32 131, label %168
    i32 136, label %177
    i32 129, label %181
    i32 138, label %183
    i32 130, label %207
    i32 134, label %211
    i32 133, label %215
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %20 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION, align 4
  %21 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %22 = call i32 @SSLfatal(%struct.TYPE_23__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %226

24:                                               ; preds = %13
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 132
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  store i32 132, i32* %31, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  store i32 141, i32* %33, align 4
  %34 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %34, i32* %2, align 4
  br label %226

35:                                               ; preds = %24
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %37 = call i32 @tls_setup_handshake(%struct.TYPE_23__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %226

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %13, %41
  %43 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %43, i32* %2, align 4
  br label %226

44:                                               ; preds = %13
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  store i32 140, i32* %46, align 4
  %47 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %47, i32* %2, align 4
  br label %226

48:                                               ; preds = %13
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = call i32 @SSL_IS_DTLS(%struct.TYPE_23__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = call i32 @SSL_get_options(%struct.TYPE_23__* %60)
  %62 = load i32, i32* @SSL_OP_COOKIE_EXCHANGE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  store i32 142, i32* %67, align 4
  br label %85

68:                                               ; preds = %59, %52, %48
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_23__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  store i32 140, i32* %79, align 4
  %80 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %80, i32* %2, align 4
  br label %226

81:                                               ; preds = %73, %68
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  store i32 128, i32* %83, align 4
  br label %84

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %86, i32* %2, align 4
  br label %226

87:                                               ; preds = %13
  %88 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %88, i32* %2, align 4
  br label %226

89:                                               ; preds = %13
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  store i32 130, i32* %102, align 4
  br label %106

103:                                              ; preds = %94
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  store i32 134, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %146

107:                                              ; preds = %89
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SSL_aNULL, align 4
  %117 = load i32, i32* @SSL_aSRP, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SSL_aPSK, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %115, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %107
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 137, i32* %125, align 4
  br label %145

126:                                              ; preds = %107
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %128 = call i32 @send_server_key_exchange(%struct.TYPE_23__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  store i32 131, i32* %132, align 4
  br label %144

133:                                              ; preds = %126
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %135 = call i32 @send_certificate_request(%struct.TYPE_23__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  store i32 136, i32* %139, align 4
  br label %143

140:                                              ; preds = %133
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  store i32 129, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %130
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %106
  %147 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %147, i32* %2, align 4
  br label %226

148:                                              ; preds = %13
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  store i32 135, i32* %156, align 4
  %157 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %157, i32* %2, align 4
  br label %226

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %13, %158
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %161 = call i32 @send_server_key_exchange(%struct.TYPE_23__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  store i32 131, i32* %165, align 4
  %166 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %166, i32* %2, align 4
  br label %226

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %13, %167
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %170 = call i32 @send_certificate_request(%struct.TYPE_23__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  store i32 136, i32* %174, align 4
  %175 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %175, i32* %2, align 4
  br label %226

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %13, %176
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 0
  store i32 129, i32* %179, align 4
  %180 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %180, i32* %2, align 4
  br label %226

181:                                              ; preds = %13
  %182 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %182, i32* %2, align 4
  br label %226

183:                                              ; preds = %13
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  store i32 140, i32* %190, align 4
  %191 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %191, i32* %2, align 4
  br label %226

192:                                              ; preds = %183
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  store i32 130, i32* %200, align 4
  br label %204

201:                                              ; preds = %192
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  store i32 134, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %206, i32* %2, align 4
  br label %226

207:                                              ; preds = %13
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  store i32 134, i32* %209, align 4
  %210 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %210, i32* %2, align 4
  br label %226

211:                                              ; preds = %13
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  store i32 133, i32* %213, align 4
  %214 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %214, i32* %2, align 4
  br label %226

215:                                              ; preds = %13
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %221, i32* %2, align 4
  br label %226

222:                                              ; preds = %215
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  store i32 140, i32* %224, align 4
  %225 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %222, %220, %211, %207, %205, %188, %181, %177, %172, %163, %154, %146, %87, %85, %77, %44, %42, %39, %29, %17, %10
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_23__*) #1

declare dso_local i32 @ossl_statem_server13_write_transition(%struct.TYPE_23__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @tls_setup_handshake(%struct.TYPE_23__*) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_23__*) #1

declare dso_local i32 @SSL_get_options(%struct.TYPE_23__*) #1

declare dso_local i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_23__*) #1

declare dso_local i32 @send_server_key_exchange(%struct.TYPE_23__*) #1

declare dso_local i32 @send_certificate_request(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
