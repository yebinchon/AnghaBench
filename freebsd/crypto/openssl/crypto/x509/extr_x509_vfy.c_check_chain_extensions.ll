; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_chain_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_check_chain_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@X509_PURPOSE_CRL_SIGN = common dso_local global i32 0, align 4
@X509_V_FLAG_ALLOW_PROXY_CERTS = common dso_local global i32 0, align 4
@X509_V_FLAG_IGNORE_CRITICAL = common dso_local global i32 0, align 4
@EXFLAG_CRITICAL = common dso_local global i32 0, align 4
@X509_V_ERR_UNHANDLED_CRITICAL_EXTENSION = common dso_local global i32 0, align 4
@EXFLAG_PROXY = common dso_local global i32 0, align 4
@X509_V_ERR_PROXY_CERTIFICATES_NOT_ALLOWED = common dso_local global i32 0, align 4
@X509_V_FLAG_X509_STRICT = common dso_local global i32 0, align 4
@X509_V_ERR_INVALID_CA = common dso_local global i8* null, align 8
@X509_V_ERR_INVALID_NON_CA = common dso_local global i8* null, align 8
@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_ERR_PATH_LENGTH_EXCEEDED = common dso_local global i32 0, align 4
@EXFLAG_SI = common dso_local global i32 0, align 4
@X509_V_ERR_PROXY_PATH_LENGTH_EXCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @check_chain_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_chain_extensions(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sk_X509_num(i32 %15)
  store i32 %16, i32* %11, align 4
  store i32 -1, i32* %5, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @X509_PURPOSE_CRL_SIGN, align 4
  store i32 %22, i32* %9, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @X509_V_FLAG_ALLOW_PROXY_CERTS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %23, %21
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %251, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %254

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call %struct.TYPE_13__* @sk_X509_value(i32 %48, i32 %49)
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %7, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @X509_V_FLAG_IGNORE_CRITICAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %45
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EXFLAG_CRITICAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @X509_V_ERR_UNHANDLED_CRITICAL_EXTENSION, align 4
  %71 = call i32 @verify_cb_cert(%struct.TYPE_12__* %67, %struct.TYPE_13__* %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %255

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %59, %45
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EXFLAG_PROXY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @X509_V_ERR_PROXY_CERTIFICATES_NOT_ALLOWED, align 4
  %90 = call i32 @verify_cb_cert(%struct.TYPE_12__* %86, %struct.TYPE_13__* %87, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %255

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %78, %75
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = call i32 @X509_check_ca(%struct.TYPE_13__* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %5, align 4
  switch i32 %97, label %128 [
    i32 -1, label %98
    i32 0, label %119
  ]

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @X509_V_FLAG_X509_STRICT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  %114 = load i8*, i8** @X509_V_ERR_INVALID_CA, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %118

117:                                              ; preds = %110, %107, %98
  store i32 1, i32* %12, align 4
  br label %118

118:                                              ; preds = %117, %113
  br label %154

119:                                              ; preds = %94
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  %123 = load i8*, i8** @X509_V_ERR_INVALID_NON_CA, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %127

126:                                              ; preds = %119
  store i32 1, i32* %12, align 4
  br label %127

127:                                              ; preds = %126, %122
  br label %154

128:                                              ; preds = %94
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @X509_V_FLAG_X509_STRICT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %136, %131
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %145, %128
  store i32 0, i32* %12, align 4
  %149 = load i8*, i8** @X509_V_ERR_INVALID_CA, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %153

152:                                              ; preds = %145, %136
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %148
  br label %154

154:                                              ; preds = %153, %127, %118
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @X509_V_OK, align 4
  %162 = call i32 @verify_cb_cert(%struct.TYPE_12__* %158, %struct.TYPE_13__* %159, i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %255

165:                                              ; preds = %157, %154
  %166 = load i32, i32* %9, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @check_purpose(%struct.TYPE_12__* %169, %struct.TYPE_13__* %170, i32 %171, i32 %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %255

177:                                              ; preds = %168, %165
  %178 = load i32, i32* %4, align 4
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %180, label %202

180:                                              ; preds = %177
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %202

185:                                              ; preds = %180
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %189, %190
  %192 = icmp sgt i32 %186, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @X509_V_ERR_PATH_LENGTH_EXCEEDED, align 4
  %198 = call i32 @verify_cb_cert(%struct.TYPE_12__* %194, %struct.TYPE_13__* %195, i32 %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %255

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %185, %180, %177
  %203 = load i32, i32* %4, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @EXFLAG_SI, align 4
  %210 = and i32 %208, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %212, %205, %202
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @EXFLAG_PROXY, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %249

222:                                              ; preds = %215
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, -1
  br i1 %226, label %227, label %246

227:                                              ; preds = %222
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %228, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %227
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @X509_V_ERR_PROXY_PATH_LENGTH_EXCEEDED, align 4
  %238 = call i32 @verify_cb_cert(%struct.TYPE_12__* %234, %struct.TYPE_13__* %235, i32 %236, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %255

241:                                              ; preds = %233
  br label %242

242:                                              ; preds = %241, %227
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %8, align 4
  br label %246

246:                                              ; preds = %242, %222
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %250

249:                                              ; preds = %215
  store i32 1, i32* %5, align 4
  br label %250

250:                                              ; preds = %249, %246
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %4, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %4, align 4
  br label %41

254:                                              ; preds = %41
  store i32 1, i32* %2, align 4
  br label %255

255:                                              ; preds = %254, %240, %200, %176, %164, %92, %73
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local %struct.TYPE_13__* @sk_X509_value(i32, i32) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @X509_check_ca(%struct.TYPE_13__*) #1

declare dso_local i32 @check_purpose(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
