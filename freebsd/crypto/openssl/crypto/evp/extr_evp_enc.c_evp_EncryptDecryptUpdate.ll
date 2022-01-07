; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_evp_EncryptDecryptUpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_evp_EncryptDecryptUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 (%struct.TYPE_10__*, i8*, i8*, i32)* }

@EVP_CIPH_FLAG_LENGTH_BITS = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_CUSTOM_CIPHER = common dso_local global i32 0, align 4
@EVP_F_EVP_ENCRYPTDECRYPTUPDATE = common dso_local global i32 0, align 4
@EVP_R_PARTIALLY_OVERLAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, i8*, i32)* @evp_EncryptDecryptUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evp_EncryptDecryptUpdate(%struct.TYPE_10__* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = load i32, i32* @EVP_CIPH_FLAG_LENGTH_BITS, align 4
  %19 = call i64 @EVP_CIPHER_CTX_test_flags(%struct.TYPE_10__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %15, align 4
  %23 = add nsw i32 %22, 7
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %15, align 4
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_CIPHER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %25
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i64 @is_partially_overlapping(i8* %43, i8* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @EVP_F_EVP_ENCRYPTDECRYPTUPDATE, align 4
  %50 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %51 = call i32 @EVPerr(i32 %49, i32 %50)
  store i32 0, i32* %6, align 4
  br label %243

52:                                               ; preds = %42, %39
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 %57(%struct.TYPE_10__* %58, i8* %59, i8* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %243

66:                                               ; preds = %52
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  br label %243

70:                                               ; preds = %25
  %71 = load i32, i32* %11, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32*, i32** %9, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %6, align 4
  br label %243

78:                                               ; preds = %70
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @is_partially_overlapping(i8* %84, i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i32, i32* @EVP_F_EVP_ENCRYPTDECRYPTUPDATE, align 4
  %91 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %92 = call i32 @EVPerr(i32 %90, i32 %91)
  store i32 0, i32* %6, align 4
  br label %243

93:                                               ; preds = %78
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %99, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 %110(%struct.TYPE_10__* %111, i8* %112, i8* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load i32, i32* %11, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  store i32 1, i32* %6, align 4
  br label %243

120:                                              ; preds = %105
  %121 = load i32*, i32** %9, align 8
  store i32 0, i32* %121, align 4
  store i32 0, i32* %6, align 4
  br label %243

122:                                              ; preds = %98, %93
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp sle i32 %126, 8
  %128 = zext i1 %127 to i32
  %129 = call i32 @OPENSSL_assert(i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %196

132:                                              ; preds = %122
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @memcpy(i8* %144, i8* %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32*, i32** %9, align 8
  store i32 0, i32* %153, align 4
  store i32 1, i32* %6, align 4
  br label %243

154:                                              ; preds = %132
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %13, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8*, i8** %10, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @memcpy(i8* %163, i8* %164, i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i8*, i8** %10, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %10, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 %178(%struct.TYPE_10__* %179, i8* %180, i8* %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %243

188:                                              ; preds = %154
  %189 = load i32, i32* %14, align 4
  %190 = load i8*, i8** %8, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %8, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32*, i32** %9, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %188
  br label %198

196:                                              ; preds = %122
  %197 = load i32*, i32** %9, align 8
  store i32 0, i32* %197, align 4
  br label %198

198:                                              ; preds = %196, %195
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %14, align 4
  %201 = sub nsw i32 %200, 1
  %202 = and i32 %199, %201
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %198
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %212, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = load i32, i32* %11, align 4
  %218 = call i32 %213(%struct.TYPE_10__* %214, i8* %215, i8* %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %208
  store i32 0, i32* %6, align 4
  br label %243

221:                                              ; preds = %208
  %222 = load i32, i32* %11, align 4
  %223 = load i32*, i32** %9, align 8
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %222
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %221, %198
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %226
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = load i8*, i8** %10, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @memcpy(i8* %232, i8* %236, i32 %237)
  br label %239

239:                                              ; preds = %229, %226
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  store i32 1, i32* %6, align 4
  br label %243

243:                                              ; preds = %239, %220, %187, %138, %120, %117, %89, %73, %69, %65, %48
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i64 @EVP_CIPHER_CTX_test_flags(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @is_partially_overlapping(i8*, i8*, i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
