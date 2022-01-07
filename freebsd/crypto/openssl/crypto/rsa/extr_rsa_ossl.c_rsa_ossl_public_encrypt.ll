; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ossl.c_rsa_ossl_public_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ossl.c_rsa_ossl_public_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32*, i32*, i32*, i32)* }

@OPENSSL_RSA_MAX_MODULUS_BITS = common dso_local global i64 0, align 8
@RSA_F_RSA_OSSL_PUBLIC_ENCRYPT = common dso_local global i32 0, align 4
@RSA_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@RSA_R_BAD_E_VALUE = common dso_local global i32 0, align 4
@OPENSSL_RSA_SMALL_MODULUS_BITS = common dso_local global i64 0, align 8
@OPENSSL_RSA_MAX_PUBEXP_BITS = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_R_UNKNOWN_PADDING_TYPE = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_MODULUS = common dso_local global i32 0, align 4
@RSA_FLAG_CACHE_PUBLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.TYPE_5__*, i32)* @rsa_ossl_public_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_ossl_public_encrypt(i32 %0, i8* %1, i8* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @BN_num_bits(i32* %21)
  %23 = load i64, i64* @OPENSSL_RSA_MAX_MODULUS_BITS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_ENCRYPT, align 4
  %27 = load i32, i32* @RSA_R_MODULUS_TOO_LARGE, align 4
  %28 = call i32 @RSAerr(i32 %26, i32 %27)
  store i32 -1, i32* %6, align 4
  br label %195

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @BN_ucmp(i32* %32, i32* %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_ENCRYPT, align 4
  %40 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %41 = call i32 @RSAerr(i32 %39, i32 %40)
  store i32 -1, i32* %6, align 4
  br label %195

42:                                               ; preds = %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @BN_num_bits(i32* %45)
  %47 = load i64, i64* @OPENSSL_RSA_SMALL_MODULUS_BITS, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @BN_num_bits(i32* %52)
  %54 = load i64, i64* @OPENSSL_RSA_MAX_PUBEXP_BITS, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_ENCRYPT, align 4
  %58 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %59 = call i32 @RSAerr(i32 %57, i32 %58)
  store i32 -1, i32* %6, align 4
  br label %195

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = call i32* (...) @BN_CTX_new()
  store i32* %62, i32** %18, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %186

65:                                               ; preds = %61
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @BN_CTX_start(i32* %66)
  %68 = load i32*, i32** %18, align 8
  %69 = call i32* @BN_CTX_get(i32* %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call i32* @BN_CTX_get(i32* %70)
  store i32* %71, i32** %13, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @BN_num_bytes(i32* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @OPENSSL_malloc(i32 %76)
  store i8* %77, i8** %17, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load i8*, i8** %17, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %65
  %84 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_ENCRYPT, align 4
  %85 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %86 = call i32 @RSAerr(i32 %84, i32 %85)
  br label %186

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  switch i32 %88, label %113 [
    i32 129, label %89
    i32 130, label %95
    i32 128, label %101
    i32 131, label %107
  ]

89:                                               ; preds = %87
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @RSA_padding_add_PKCS1_type_2(i8* %90, i32 %91, i8* %92, i32 %93)
  store i32 %94, i32* %14, align 4
  br label %117

95:                                               ; preds = %87
  %96 = load i8*, i8** %17, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @RSA_padding_add_PKCS1_OAEP(i8* %96, i32 %97, i8* %98, i32 %99, i32* null, i32 0)
  store i32 %100, i32* %14, align 4
  br label %117

101:                                              ; preds = %87
  %102 = load i8*, i8** %17, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @RSA_padding_add_SSLv23(i8* %102, i32 %103, i8* %104, i32 %105)
  store i32 %106, i32* %14, align 4
  br label %117

107:                                              ; preds = %87
  %108 = load i8*, i8** %17, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @RSA_padding_add_none(i8* %108, i32 %109, i8* %110, i32 %111)
  store i32 %112, i32* %14, align 4
  br label %117

113:                                              ; preds = %87
  %114 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_ENCRYPT, align 4
  %115 = load i32, i32* @RSA_R_UNKNOWN_PADDING_TYPE, align 4
  %116 = call i32 @RSAerr(i32 %114, i32 %115)
  br label %186

117:                                              ; preds = %107, %101, %95, %89
  %118 = load i32, i32* %14, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %186

121:                                              ; preds = %117
  %122 = load i8*, i8** %17, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %12, align 8
  %125 = call i32* @BN_bin2bn(i8* %122, i32 %123, i32* %124)
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %186

128:                                              ; preds = %121
  %129 = load i32*, i32** %12, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @BN_ucmp(i32* %129, i32* %132)
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @RSA_F_RSA_OSSL_PUBLIC_ENCRYPT, align 4
  %137 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_MODULUS, align 4
  %138 = call i32 @RSAerr(i32 %136, i32 %137)
  br label %186

139:                                              ; preds = %128
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @RSA_FLAG_CACHE_PUBLIC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %139
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @BN_MONT_CTX_set_locked(i32* %148, i32 %151, i32* %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %146
  br label %186

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %139
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32 (i32*, i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32*, i32)** %164, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %18, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 %165(i32* %166, i32* %167, i32* %170, i32* %173, i32* %174, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %160
  br label %186

181:                                              ; preds = %160
  %182 = load i32*, i32** %13, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @BN_bn2binpad(i32* %182, i8* %183, i32 %184)
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %181, %180, %158, %135, %127, %120, %113, %83, %64
  %187 = load i32*, i32** %18, align 8
  %188 = call i32 @BN_CTX_end(i32* %187)
  %189 = load i32*, i32** %18, align 8
  %190 = call i32 @BN_CTX_free(i32* %189)
  %191 = load i8*, i8** %17, align 8
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @OPENSSL_clear_free(i8* %191, i32 %192)
  %194 = load i32, i32* %16, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %186, %56, %38, %25
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @BN_ucmp(i32*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @RSA_padding_add_PKCS1_type_2(i8*, i32, i8*, i32) #1

declare dso_local i32 @RSA_padding_add_PKCS1_OAEP(i8*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @RSA_padding_add_SSLv23(i8*, i32, i8*, i32) #1

declare dso_local i32 @RSA_padding_add_none(i8*, i32, i8*, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_MONT_CTX_set_locked(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
