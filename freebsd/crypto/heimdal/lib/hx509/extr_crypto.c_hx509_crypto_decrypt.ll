; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_crypto_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_crypto_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i64 }

@CIPHER_WEAK = common dso_local global i32 0, align 4
@ALLOW_WEAK = common dso_local global i32 0, align 4
@HX509_CRYPTO_ALGORITHM_BEST_BEFORE = common dso_local global i32 0, align 4
@HX509_CRYPTO_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PADDING_PKCS7 = common dso_local global i32 0, align 4
@HX509_CMS_PADDING_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_crypto_decrypt(%struct.TYPE_10__* %0, i8* %1, i64 %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  store i8* null, i8** %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CIPHER_WEAK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ALLOW_WEAK, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @HX509_CRYPTO_ALGORITHM_BEST_BEFORE, align 4
  store i32 %39, i32* %6, align 4
  br label %212

40:                                               ; preds = %31, %5
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EVP_CIPHER_iv_length(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %54, i32* %6, align 4
  br label %212

55:                                               ; preds = %43, %40
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %62, i32* %6, align 4
  br label %212

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %13, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %6, align 4
  br label %212

76:                                               ; preds = %70
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @EVP_CipherInit_ex(i32* %77, i32 %80, i32* null, i32* %84, i8* %85, i32 0)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @EVP_CIPHER_CTX_free(i32* %90)
  %92 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %92, i32* %6, align 4
  br label %212

93:                                               ; preds = %76
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i8* @malloc(i64 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @EVP_CIPHER_CTX_free(i32* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @ENOMEM, align 4
  store i32 %110, i32* %6, align 4
  br label %212

111:                                              ; preds = %93
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @EVP_Cipher(i32* %112, i8* %115, i8* %116, i64 %117)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @EVP_CIPHER_CTX_free(i32* %121)
  %123 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %123, i32* %6, align 4
  br label %212

124:                                              ; preds = %111
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @EVP_CIPHER_CTX_free(i32* %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PADDING_PKCS7, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %195

133:                                              ; preds = %124
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @EVP_CIPHER_block_size(i32 %136)
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %195

139:                                              ; preds = %133
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @EVP_CIPHER_block_size(i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* %18, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i32, i32* @HX509_CMS_PADDING_ERROR, align 4
  store i32 %151, i32* %14, align 4
  br label %196

152:                                              ; preds = %139
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %16, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 %158, 1
  %160 = load i8*, i8** %16, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %16, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %18, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %152
  %169 = load i32, i32* @HX509_CMS_PADDING_ERROR, align 4
  store i32 %169, i32* %14, align 4
  br label %196

170:                                              ; preds = %152
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %175, %172
  store i64 %176, i64* %174, align 8
  store i32 0, i32* %17, align 4
  br label %177

177:                                              ; preds = %191, %170
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = load i8*, i8** %16, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 -1
  store i8* %183, i8** %16, align 8
  %184 = load i8, i8* %182, align 1
  %185 = zext i8 %184 to i32
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @HX509_CMS_PADDING_ERROR, align 4
  store i32 %189, i32* %14, align 4
  br label %196

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %17, align 4
  br label %177

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %133, %124
  store i32 0, i32* %6, align 4
  br label %212

196:                                              ; preds = %188, %168, %150
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @free(i8* %204)
  br label %206

206:                                              ; preds = %201, %196
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  store i8* null, i8** %208, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %206, %195, %120, %105, %89, %74, %61, %53, %38
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i32 @EVP_CIPHER_iv_length(i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_block_size(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
