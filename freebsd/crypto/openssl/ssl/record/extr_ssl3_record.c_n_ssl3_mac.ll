; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_n_ssl3_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_n_ssl3_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8, i32, i8*, i32 }

@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@ssl3_pad_1 = common dso_local global i8* null, align 8
@ssl3_pad_2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @n_ssl3_mac(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [75 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = call i8* @RECORD_LAYER_get_write_sequence(i32* %32)
  store i8* %33, i8** %11, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  br label %50

37:                                               ; preds = %4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8* %43, i8** %10, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = call i8* @RECORD_LAYER_get_read_sequence(i32* %45)
  store i8* %46, i8** %11, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %12, align 8
  br label %50

50:                                               ; preds = %37, %24
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @EVP_MD_CTX_size(i32* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %246

56:                                               ; preds = %50
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = udiv i64 48, %59
  %61 = load i64, i64* %15, align 8
  %62 = mul i64 %60, %61
  store i64 %62, i64* %16, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %148, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @EVP_CIPHER_CTX_mode(i32 %68)
  %70 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %148

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @ssl3_cbc_record_digest_supported(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %148

76:                                               ; preds = %72
  store i64 0, i64* %19, align 8
  %77 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %78 = load i64, i64* %19, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %15, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i8* %79, i8* %80, i32 %82)
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %19, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %19, align 8
  %87 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %88 = load i64, i64* %19, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8*, i8** @ssl3_pad_1, align 8
  %91 = load i64, i64* %16, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memcpy(i8* %89, i8* %90, i32 %92)
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %19, align 8
  %97 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %98 = load i64, i64* %19, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @memcpy(i8* %99, i8* %100, i32 8)
  %102 = load i64, i64* %19, align 8
  %103 = add i64 %102, 8
  store i64 %103, i64* %19, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 8
  %107 = load i64, i64* %19, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %19, align 8
  %109 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 %107
  store i8 %106, i8* %109, align 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = trunc i32 %113 to i8
  %115 = load i64, i64* %19, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %19, align 8
  %117 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 %115
  store i8 %114, i8* %117, align 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 255
  %122 = trunc i32 %121 to i8
  %123 = load i64, i64* %19, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %19, align 8
  %125 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 %123
  store i8 %122, i8* %125, align 1
  %126 = load i32*, i32** %12, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %15, align 8
  %137 = add i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i64 @ssl3_cbc_digest_record(i32* %126, i8* %127, i64* %15, i8* %128, i8* %131, i32 %138, i32 %141, i8* %142, i64 %143, i32 1)
  %145 = icmp sle i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %76
  store i32 0, i32* %5, align 4
  br label %246

147:                                              ; preds = %76
  br label %243

148:                                              ; preds = %72, %65, %56
  %149 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %149, i32** %21, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %246

153:                                              ; preds = %148
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i8, i8* %155, align 8
  store i8 %156, i8* %14, align 1
  %157 = load i8*, i8** %8, align 8
  store i8* %157, i8** %13, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @s2n(i32 %160, i8* %161)
  %163 = load i32*, i32** %21, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = call i64 @EVP_MD_CTX_copy_ex(i32* %163, i32* %164)
  %166 = icmp sle i64 %165, 0
  br i1 %166, label %237, label %167

167:                                              ; preds = %153
  %168 = load i32*, i32** %21, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i64 @EVP_DigestUpdate(i32* %168, i8* %169, i64 %170)
  %172 = icmp sle i64 %171, 0
  br i1 %172, label %237, label %173

173:                                              ; preds = %167
  %174 = load i32*, i32** %21, align 8
  %175 = load i8*, i8** @ssl3_pad_1, align 8
  %176 = load i64, i64* %16, align 8
  %177 = call i64 @EVP_DigestUpdate(i32* %174, i8* %175, i64 %176)
  %178 = icmp sle i64 %177, 0
  br i1 %178, label %237, label %179

179:                                              ; preds = %173
  %180 = load i32*, i32** %21, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = call i64 @EVP_DigestUpdate(i32* %180, i8* %181, i64 8)
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %237, label %184

184:                                              ; preds = %179
  %185 = load i32*, i32** %21, align 8
  %186 = call i64 @EVP_DigestUpdate(i32* %185, i8* %14, i64 1)
  %187 = icmp sle i64 %186, 0
  br i1 %187, label %237, label %188

188:                                              ; preds = %184
  %189 = load i32*, i32** %21, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = call i64 @EVP_DigestUpdate(i32* %189, i8* %190, i64 2)
  %192 = icmp sle i64 %191, 0
  br i1 %192, label %237, label %193

193:                                              ; preds = %188
  %194 = load i32*, i32** %21, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = call i64 @EVP_DigestUpdate(i32* %194, i8* %197, i64 %201)
  %203 = icmp sle i64 %202, 0
  br i1 %203, label %237, label %204

204:                                              ; preds = %193
  %205 = load i32*, i32** %21, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = call i64 @EVP_DigestFinal_ex(i32* %205, i8* %206, i32* null)
  %208 = icmp sle i64 %207, 0
  br i1 %208, label %237, label %209

209:                                              ; preds = %204
  %210 = load i32*, i32** %21, align 8
  %211 = load i32*, i32** %12, align 8
  %212 = call i64 @EVP_MD_CTX_copy_ex(i32* %210, i32* %211)
  %213 = icmp sle i64 %212, 0
  br i1 %213, label %237, label %214

214:                                              ; preds = %209
  %215 = load i32*, i32** %21, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %15, align 8
  %218 = call i64 @EVP_DigestUpdate(i32* %215, i8* %216, i64 %217)
  %219 = icmp sle i64 %218, 0
  br i1 %219, label %237, label %220

220:                                              ; preds = %214
  %221 = load i32*, i32** %21, align 8
  %222 = load i8*, i8** @ssl3_pad_2, align 8
  %223 = load i64, i64* %16, align 8
  %224 = call i64 @EVP_DigestUpdate(i32* %221, i8* %222, i64 %223)
  %225 = icmp sle i64 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %220
  %227 = load i32*, i32** %21, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = load i64, i64* %15, align 8
  %230 = call i64 @EVP_DigestUpdate(i32* %227, i8* %228, i64 %229)
  %231 = icmp sle i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %226
  %233 = load i32*, i32** %21, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = call i64 @EVP_DigestFinal_ex(i32* %233, i8* %234, i32* %20)
  %236 = icmp sle i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232, %226, %220, %214, %209, %204, %193, %188, %184, %179, %173, %167, %153
  %238 = load i32*, i32** %21, align 8
  %239 = call i32 @EVP_MD_CTX_free(i32* %238)
  store i32 0, i32* %5, align 4
  br label %246

240:                                              ; preds = %232
  %241 = load i32*, i32** %21, align 8
  %242 = call i32 @EVP_MD_CTX_free(i32* %241)
  br label %243

243:                                              ; preds = %240, %147
  %244 = load i8*, i8** %11, align 8
  %245 = call i32 @ssl3_record_sequence_update(i8* %244)
  store i32 1, i32* %5, align 4
  br label %246

246:                                              ; preds = %243, %237, %152, %146, %55
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i8* @RECORD_LAYER_get_write_sequence(i32*) #1

declare dso_local i8* @RECORD_LAYER_get_read_sequence(i32*) #1

declare dso_local i32 @EVP_MD_CTX_size(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_mode(i32) #1

declare dso_local i64 @ssl3_cbc_record_digest_supported(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ssl3_cbc_digest_record(i32*, i8*, i64*, i8*, i8*, i32, i32, i8*, i64, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i64 @EVP_MD_CTX_copy_ex(i32*, i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @ssl3_record_sequence_update(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
