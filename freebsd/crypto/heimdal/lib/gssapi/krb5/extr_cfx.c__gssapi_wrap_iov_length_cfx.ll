; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gssapi_wrap_iov_length_cfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gssapi_wrap_iov_length_cfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@KRB5_CRYPTO_TYPE_HEADER = common dso_local global i32 0, align 4
@KRB5_CRYPTO_TYPE_TRAILER = common dso_local global i32 0, align 4
@KRB5_CRYPTO_TYPE_PADDING = common dso_local global i32 0, align 4
@KRB5_CRYPTO_TYPE_CHECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_wrap_iov_length_cfx(i64* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4, i32* %5, %struct.TYPE_13__* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %32 = call i32 @GSSAPI_KRB5_INIT(i32* %12)
  %33 = load i64*, i64** %10, align 8
  store i64 0, i64* %33, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  br label %34

34:                                               ; preds = %96, %8
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @GSS_IOV_BUFFER_TYPE(i32 %44)
  switch i32 %45, label %91 [
    i32 132, label %46
    i32 133, label %47
    i32 131, label %57
    i32 128, label %68
    i32 130, label %79
    i32 129, label %90
  ]

46:                                               ; preds = %38
  br label %95

47:                                               ; preds = %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %19, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %19, align 8
  br label %95

57:                                               ; preds = %38
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64*, i64** %10, align 8
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %62, i64* %9, align 8
  br label %241

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %21, align 8
  br label %95

68:                                               ; preds = %38
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64*, i64** %10, align 8
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %73, i64* %9, align 8
  br label %241

74:                                               ; preds = %68
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %77
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %23, align 8
  br label %95

79:                                               ; preds = %38
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %81 = icmp ne %struct.TYPE_13__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64*, i64** %10, align 8
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %84, i64* %9, align 8
  br label %241

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %88
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %22, align 8
  br label %95

90:                                               ; preds = %38
  br label %95

91:                                               ; preds = %38
  %92 = load i64, i64* @EINVAL, align 8
  %93 = load i64*, i64** %10, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %94, i64* %9, align 8
  br label %241

95:                                               ; preds = %90, %85, %74, %63, %47, %46
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %20, align 4
  br label %34

99:                                               ; preds = %34
  %100 = load i64*, i64** %10, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %105 = call i64 @_gk_verify_buffers(i64* %100, %struct.TYPE_12__* %101, %struct.TYPE_13__* %102, %struct.TYPE_13__* %103, %struct.TYPE_13__* %104)
  store i64 %105, i64* %18, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* @GSS_S_COMPLETE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i64, i64* %18, align 8
  store i64 %110, i64* %9, align 8
  br label %241

111:                                              ; preds = %99
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %195

114:                                              ; preds = %111
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i64 0, i64* %31, align 8
  %115 = load i64, i64* %19, align 8
  %116 = add i64 %115, 4
  store i64 %116, i64* %19, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @KRB5_CRYPTO_TYPE_HEADER, align 4
  %122 = call i64 @krb5_crypto_length(i32 %117, i32 %120, i32 %121, i64* %26)
  %123 = load i64*, i64** %10, align 8
  store i64 %122, i64* %123, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %128, i64* %9, align 8
  br label %241

129:                                              ; preds = %114
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @KRB5_CRYPTO_TYPE_TRAILER, align 4
  %135 = call i64 @krb5_crypto_length(i32 %130, i32 %133, i32 %134, i64* %27)
  %136 = load i64*, i64** %10, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i64*, i64** %10, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %141, i64* %9, align 8
  br label %241

142:                                              ; preds = %129
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @KRB5_CRYPTO_TYPE_PADDING, align 4
  %148 = call i64 @krb5_crypto_length(i32 %143, i32 %146, i32 %147, i64* %29)
  %149 = load i64*, i64** %10, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i64*, i64** %10, align 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %154, i64* %9, align 8
  br label %241

155:                                              ; preds = %142
  %156 = load i64, i64* %29, align 8
  %157 = icmp ugt i64 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i64, i64* %29, align 8
  %160 = load i64, i64* %19, align 8
  %161 = load i64, i64* %29, align 8
  %162 = urem i64 %160, %161
  %163 = sub i64 %159, %162
  store i64 %163, i64* %28, align 8
  br label %165

164:                                              ; preds = %155
  store i64 0, i64* %28, align 8
  br label %165

165:                                              ; preds = %164, %158
  %166 = load i64, i64* %28, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %170 = call i64 @IS_DCE_STYLE(%struct.TYPE_12__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @krb5_crypto_getblocksize(i32 %173, i32 %176, i64* %30)
  %178 = load i64*, i64** %10, align 8
  store i64 %177, i64* %178, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %183, i64* %9, align 8
  br label %241

184:                                              ; preds = %172
  %185 = load i64, i64* %30, align 8
  store i64 %185, i64* %31, align 8
  br label %188

186:                                              ; preds = %168, %165
  %187 = load i64, i64* %28, align 8
  store i64 %187, i64* %31, align 8
  br label %188

188:                                              ; preds = %186, %184
  %189 = load i64, i64* %26, align 8
  %190 = add i64 4, %189
  store i64 %190, i64* %24, align 8
  %191 = load i64, i64* %31, align 8
  %192 = add i64 4, %191
  %193 = load i64, i64* %27, align 8
  %194 = add i64 %192, %193
  store i64 %194, i64* %25, align 8
  br label %210

195:                                              ; preds = %111
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @KRB5_CRYPTO_TYPE_CHECKSUM, align 4
  %201 = call i64 @krb5_crypto_length(i32 %196, i32 %199, i32 %200, i64* %27)
  %202 = load i64*, i64** %10, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i64*, i64** %10, align 8
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %195
  %207 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %207, i64* %9, align 8
  br label %241

208:                                              ; preds = %195
  store i64 4, i64* %24, align 8
  %209 = load i64, i64* %27, align 8
  store i64 %209, i64* %25, align 8
  br label %210

210:                                              ; preds = %208, %188
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %212 = icmp ne %struct.TYPE_13__* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i64, i64* %25, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store i64 %214, i64* %217, align 8
  br label %222

218:                                              ; preds = %210
  %219 = load i64, i64* %25, align 8
  %220 = load i64, i64* %24, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %24, align 8
  br label %222

222:                                              ; preds = %218, %213
  %223 = load i64, i64* %24, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  store i64 %223, i64* %226, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %228 = icmp ne %struct.TYPE_13__* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  br label %233

233:                                              ; preds = %229, %222
  %234 = load i32*, i32** %15, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, i32* %13, align 4
  %238 = load i32*, i32** %15, align 8
  store i32 %237, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %240, i64* %9, align 8
  br label %241

241:                                              ; preds = %239, %206, %182, %153, %140, %127, %109, %91, %82, %71, %60
  %242 = load i64, i64* %9, align 8
  ret i64 %242
}

declare dso_local i32 @GSSAPI_KRB5_INIT(i32*) #1

declare dso_local i32 @GSS_IOV_BUFFER_TYPE(i32) #1

declare dso_local i64 @_gk_verify_buffers(i64*, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @krb5_crypto_length(i32, i32, i32, i64*) #1

declare dso_local i64 @IS_DCE_STYLE(%struct.TYPE_12__*) #1

declare dso_local i64 @krb5_crypto_getblocksize(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
