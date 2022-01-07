; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pbe_scrypt.c_EVP_PBE_scrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pbe_scrypt.c_EVP_PBE_scrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRYPT_PR_MAX = common dso_local global i32 0, align 4
@EVP_F_EVP_PBE_SCRYPT = common dso_local global i32 0, align 4
@EVP_R_MEMORY_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@LOG2_UINT64_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@SCRYPT_MAX_MEM = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_R_PBKDF2_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PBE_scrypt(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %18, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %35, %32, %10
  store i32 0, i32* %11, align 4
  br label %230

45:                                               ; preds = %38
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @SCRYPT_PR_MAX, align 4
  %48 = load i32, i32* %17, align 4
  %49 = sdiv i32 %47, %48
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %53 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %54 = call i32 @EVPerr(i32 %52, i32 %53)
  store i32 0, i32* %11, align 4
  br label %230

55:                                               ; preds = %45
  %56 = load i32, i32* %17, align 4
  %57 = mul nsw i32 16, %56
  %58 = load i32, i32* @LOG2_UINT64_MAX, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = mul nsw i32 16, %62
  %64 = shl i32 1, %63
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %68 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %69 = call i32 @EVPerr(i32 %67, i32 %68)
  store i32 0, i32* %11, align 4
  br label %230

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %72, 128
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %28, align 4
  %76 = load i32, i32* %28, align 4
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %81 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %82 = call i32 @EVPerr(i32 %80, i32 %81)
  store i32 0, i32* %11, align 4
  br label %230

83:                                               ; preds = %71
  %84 = load i32, i32* @UINT64_MAX, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 128
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %27, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 2
  %90 = load i32, i32* %27, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sdiv i32 %90, %91
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %96 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %97 = call i32 @EVPerr(i32 %95, i32 %96)
  store i32 0, i32* %11, align 4
  br label %230

98:                                               ; preds = %83
  %99 = load i32, i32* %17, align 4
  %100 = mul nsw i32 32, %99
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 2
  %103 = mul nsw i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %29, align 4
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* @UINT64_MAX, align 4
  %109 = load i32, i32* %29, align 4
  %110 = sub nsw i32 %108, %109
  %111 = icmp sgt i32 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %98
  %113 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %114 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %115 = call i32 @EVPerr(i32 %113, i32 %114)
  store i32 0, i32* %11, align 4
  br label %230

116:                                              ; preds = %98
  %117 = load i32, i32* %19, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @SCRYPT_MAX_MEM, align 4
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* @SIZE_MAX, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @SIZE_MAX, align 4
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i32, i32* %28, align 4
  %129 = load i32, i32* %29, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %19, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %135 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %136 = call i32 @EVPerr(i32 %134, i32 %135)
  store i32 0, i32* %11, align 4
  br label %230

137:                                              ; preds = %127
  %138 = load i8*, i8** %20, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 1, i32* %11, align 4
  br label %230

141:                                              ; preds = %137
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %29, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = call i8* @OPENSSL_malloc(i64 %145)
  store i8* %146, i8** %23, align 8
  %147 = load i8*, i8** %23, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %151 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %152 = call i32 @EVPerr(i32 %150, i32 %151)
  store i32 0, i32* %11, align 4
  br label %230

153:                                              ; preds = %141
  %154 = load i8*, i8** %23, align 8
  %155 = load i32, i32* %28, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = bitcast i8* %157 to i32*
  store i32* %158, i32** %24, align 8
  %159 = load i32*, i32** %24, align 8
  %160 = load i32, i32* %17, align 4
  %161 = mul nsw i32 32, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32* %163, i32** %26, align 8
  %164 = load i32*, i32** %26, align 8
  %165 = load i32, i32* %17, align 4
  %166 = mul nsw i32 32, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32* %168, i32** %25, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = load i64, i64* %15, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 (...) @EVP_sha256()
  %175 = load i32, i32* %28, align 4
  %176 = sext i32 %175 to i64
  %177 = load i8*, i8** %23, align 8
  %178 = call i64 @PKCS5_PBKDF2_HMAC(i8* %169, i64 %170, i8* %171, i32 %173, i32 1, i32 %174, i64 %176, i8* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %153
  br label %215

181:                                              ; preds = %153
  store i32 0, i32* %27, align 4
  br label %182

182:                                              ; preds = %200, %181
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = load i8*, i8** %23, align 8
  %188 = load i32, i32* %17, align 4
  %189 = mul nsw i32 128, %188
  %190 = load i32, i32* %27, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %187, i64 %192
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32*, i32** %24, align 8
  %197 = load i32*, i32** %26, align 8
  %198 = load i32*, i32** %25, align 8
  %199 = call i32 @scryptROMix(i8* %193, i32 %194, i32 %195, i32* %196, i32* %197, i32* %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %27, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %27, align 4
  br label %182

203:                                              ; preds = %182
  %204 = load i8*, i8** %12, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i8*, i8** %23, align 8
  %207 = load i32, i32* %28, align 4
  %208 = call i32 (...) @EVP_sha256()
  %209 = load i64, i64* %21, align 8
  %210 = load i8*, i8** %20, align 8
  %211 = call i64 @PKCS5_PBKDF2_HMAC(i8* %204, i64 %205, i8* %206, i32 %207, i32 1, i32 %208, i64 %209, i8* %210)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %215

214:                                              ; preds = %203
  store i32 1, i32* %22, align 4
  br label %215

215:                                              ; preds = %214, %213, %180
  %216 = load i32, i32* %22, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %220 = load i32, i32* @EVP_R_PBKDF2_ERROR, align 4
  %221 = call i32 @EVPerr(i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %215
  %223 = load i8*, i8** %23, align 8
  %224 = load i32, i32* %28, align 4
  %225 = load i32, i32* %29, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = call i32 @OPENSSL_clear_free(i8* %223, i64 %227)
  %229 = load i32, i32* %22, align 4
  store i32 %229, i32* %11, align 4
  br label %230

230:                                              ; preds = %222, %149, %140, %133, %112, %94, %79, %66, %51, %44
  %231 = load i32, i32* %11, align 4
  ret i32 %231
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @PKCS5_PBKDF2_HMAC(i8*, i64, i8*, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @scryptROMix(i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
