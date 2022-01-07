; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_tls1_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_tls1_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8, i32, i8*, i32*, i32 }

@SSL_MAC_FLAG_WRITE_MAC_STREAM = common dso_local global i32 0, align 4
@SSL_MAC_FLAG_READ_MAC_STREAM = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_mac(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [13 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [8 x i8], align 1
  %20 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SSL_MAC_FLAG_WRITE_MAC_STREAM, align 4
  %28 = and i32 %26, %27
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SSL_MAC_FLAG_READ_MAC_STREAM, align 4
  %34 = and i32 %32, %33
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i32 [ %28, %23 ], [ %34, %29 ]
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = call i8* @RECORD_LAYER_get_write_sequence(i32* %41)
  store i8* %42, i8** %10, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %11, align 8
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = call i8* @RECORD_LAYER_get_read_sequence(i32* %48)
  store i8* %49, i8** %10, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %11, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @EVP_MD_CTX_size(i32* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @ossl_assert(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %246

62:                                               ; preds = %53
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %12, align 8
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32*, i32** %11, align 8
  store i32* %68, i32** %15, align 8
  br label %83

69:                                               ; preds = %62
  %70 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @EVP_MD_CTX_copy(i32* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73, %69
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @EVP_MD_CTX_free(i32* %79)
  store i32 0, i32* %5, align 4
  br label %246

81:                                               ; preds = %73
  %82 = load i32*, i32** %14, align 8
  store i32* %82, i32** %15, align 8
  br label %83

83:                                               ; preds = %81, %67
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = call i64 @SSL_IS_DTLS(%struct.TYPE_10__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  store i8* %88, i8** %20, align 8
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = call i32 @DTLS_RECORD_LAYER_get_w_epoch(i32* %93)
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = call i32 @DTLS_RECORD_LAYER_get_r_epoch(i32* %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %94, %91 ], [ %98, %95 ]
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 @s2n(i32 %100, i8* %101)
  %103 = load i8*, i8** %20, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = call i32 @memcpy(i8* %103, i8* %105, i32 6)
  %107 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 0
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %109 = call i32 @memcpy(i8* %107, i8* %108, i32 8)
  br label %114

110:                                              ; preds = %83
  %111 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 0
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @memcpy(i8* %111, i8* %112, i32 8)
  br label %114

114:                                              ; preds = %110, %99
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i8, i8* %116, align 8
  %118 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 8
  store i8 %117, i8* %118, align 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 8
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 9
  store i8 %123, i8* %124, align 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 10
  store i8 %128, i8* %129, align 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 8
  %134 = trunc i32 %133 to i8
  %135 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 11
  store i8 %134, i8* %135, align 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 255
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 12
  store i8 %140, i8* %141, align 1
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %191, label %144

144:                                              ; preds = %114
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = call i32 @SSL_READ_ETM(%struct.TYPE_10__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %191, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @EVP_CIPHER_CTX_mode(i32 %151)
  %153 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %191

155:                                              ; preds = %148
  %156 = load i32*, i32** %15, align 8
  %157 = call i64 @ssl3_cbc_record_digest_supported(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %191

159:                                              ; preds = %155
  %160 = load i32*, i32** %15, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 0
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %12, align 8
  %171 = add i64 %169, %170
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @ssl3_cbc_digest_record(i32* %160, i8* %161, i64* %12, i8* %162, i8* %165, i64 %171, i32 %174, i32 %179, i32 %184, i32 0)
  %186 = icmp sle i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %159
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @EVP_MD_CTX_free(i32* %188)
  store i32 0, i32* %5, align 4
  br label %246

190:                                              ; preds = %159
  br label %215

191:                                              ; preds = %155, %148, %144, %114
  %192 = load i32*, i32** %15, align 8
  %193 = getelementptr inbounds [13 x i8], [13 x i8]* %16, i64 0, i64 0
  %194 = call i64 @EVP_DigestSignUpdate(i32* %192, i8* %193, i32 13)
  %195 = icmp sle i64 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %191
  %197 = load i32*, i32** %15, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @EVP_DigestSignUpdate(i32* %197, i8* %200, i32 %203)
  %205 = icmp sle i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %196
  %207 = load i32*, i32** %15, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = call i64 @EVP_DigestSignFinal(i32* %207, i8* %208, i64* %12)
  %210 = icmp sle i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206, %196, %191
  %212 = load i32*, i32** %14, align 8
  %213 = call i32 @EVP_MD_CTX_free(i32* %212)
  store i32 0, i32* %5, align 4
  br label %246

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214, %190
  %216 = load i32*, i32** %14, align 8
  %217 = call i32 @EVP_MD_CTX_free(i32* %216)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %219 = call i64 @SSL_IS_DTLS(%struct.TYPE_10__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %245, label %221

221:                                              ; preds = %215
  store i32 7, i32* %13, align 4
  br label %222

222:                                              ; preds = %241, %221
  %223 = load i32, i32* %13, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %222
  %226 = load i8*, i8** %10, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = add i8 %230, 1
  store i8 %231, i8* %229, align 1
  %232 = load i8*, i8** %10, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %225
  br label %244

240:                                              ; preds = %225
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %13, align 4
  br label %222

244:                                              ; preds = %239, %222
  br label %245

245:                                              ; preds = %244, %215
  store i32 1, i32* %5, align 4
  br label %246

246:                                              ; preds = %245, %211, %187, %78, %61
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i8* @RECORD_LAYER_get_write_sequence(i32*) #1

declare dso_local i8* @RECORD_LAYER_get_read_sequence(i32*) #1

declare dso_local i32 @EVP_MD_CTX_size(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_MD_CTX_copy(i32*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_10__*) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i32 @DTLS_RECORD_LAYER_get_w_epoch(i32*) #1

declare dso_local i32 @DTLS_RECORD_LAYER_get_r_epoch(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SSL_READ_ETM(%struct.TYPE_10__*) #1

declare dso_local i64 @EVP_CIPHER_CTX_mode(i32) #1

declare dso_local i64 @ssl3_cbc_record_digest_supported(i32*) #1

declare dso_local i64 @ssl3_cbc_digest_record(i32*, i8*, i64*, i8*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i32) #1

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
