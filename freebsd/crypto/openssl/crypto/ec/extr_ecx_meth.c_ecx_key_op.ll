; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecx_meth.c_ecx_key_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecx_meth.c_ecx_key_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@KEY_OP_KEYGEN = common dso_local global i64 0, align 8
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@EC_F_ECX_KEY_OP = common dso_local global i32 0, align 4
@EC_R_INVALID_ENCODING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@KEY_OP_PUBLIC = common dso_local global i64 0, align 8
@X25519_KEYLEN = common dso_local global i32 0, align 4
@X448_KEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i8*, i32, i64)* @ecx_key_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_key_op(i32* %0, i32 %1, i32* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @KEY_OP_KEYGEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %6
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @X509_ALGOR_get0(i32* null, i32* %17, i32* null, i32* %25)
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @V_ASN1_UNDEF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @EC_F_ECX_KEY_OP, align 4
  %32 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %33 = call i32 @ECerr(i32 %31, i32 %32)
  store i32 0, i32* %7, align 4
  br label %177

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @KEYLENID(i32 %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @EC_F_ECX_KEY_OP, align 4
  %45 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %46 = call i32 @ECerr(i32 %44, i32 %45)
  store i32 0, i32* %7, align 4
  br label %177

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %6
  %49 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %14, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @EC_F_ECX_KEY_OP, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @ECerr(i32 %53, i32 %54)
  store i32 0, i32* %7, align 4
  br label %177

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @KEY_OP_PUBLIC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @memcpy(i8* %64, i8* %65, i32 %66)
  br label %169

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @KEYLENID(i32 %69)
  %71 = call i8* @OPENSSL_secure_malloc(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  store i8* %71, i8** %15, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @EC_F_ECX_KEY_OP, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @ECerr(i32 %77, i32 %78)
  br label %174

80:                                               ; preds = %68
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @KEY_OP_KEYGEN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %144

84:                                               ; preds = %80
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @KEYLENID(i32 %86)
  %88 = call i64 @RAND_priv_bytes(i8* %85, i32 %87)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @OPENSSL_secure_free(i8* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i8* null, i8** %94, align 8
  br label %174

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 248
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %100, align 1
  %105 = load i8*, i8** %15, align 8
  %106 = load i32, i32* @X25519_KEYLEN, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 127
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* @X25519_KEYLEN, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, 64
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %118, align 1
  br label %143

123:                                              ; preds = %95
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 252
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  %133 = load i8*, i8** %15, align 8
  %134 = load i32, i32* @X448_KEYLEN, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, 128
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %137, align 1
  br label %142

142:                                              ; preds = %126, %123
  br label %143

143:                                              ; preds = %142, %98
  br label %150

144:                                              ; preds = %80
  %145 = load i8*, i8** %15, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @KEYLENID(i32 %147)
  %149 = call i32 @memcpy(i8* %145, i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %144, %143
  %151 = load i32, i32* %9, align 4
  switch i32 %151, label %168 [
    i32 129, label %152
    i32 131, label %156
    i32 128, label %160
    i32 130, label %164
  ]

152:                                              ; preds = %150
  %153 = load i8*, i8** %16, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @X25519_public_from_private(i8* %153, i8* %154)
  br label %168

156:                                              ; preds = %150
  %157 = load i8*, i8** %16, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = call i32 @ED25519_public_from_private(i8* %157, i8* %158)
  br label %168

160:                                              ; preds = %150
  %161 = load i8*, i8** %16, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = call i32 @X448_public_from_private(i8* %161, i8* %162)
  br label %168

164:                                              ; preds = %150
  %165 = load i8*, i8** %16, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 @ED448_public_from_private(i8* %165, i8* %166)
  br label %168

168:                                              ; preds = %150, %164, %160, %156, %152
  br label %169

169:                                              ; preds = %168, %63
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %173 = call i32 @EVP_PKEY_assign(i32* %170, i32 %171, %struct.TYPE_5__* %172)
  store i32 1, i32* %7, align 4
  br label %177

174:                                              ; preds = %90, %76
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %176 = call i32 @OPENSSL_free(%struct.TYPE_5__* %175)
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %169, %52, %43, %30
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @X509_ALGOR_get0(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @KEYLENID(i32) #1

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @OPENSSL_secure_malloc(i32) #1

declare dso_local i64 @RAND_priv_bytes(i8*, i32) #1

declare dso_local i32 @OPENSSL_secure_free(i8*) #1

declare dso_local i32 @X25519_public_from_private(i8*, i8*) #1

declare dso_local i32 @ED25519_public_from_private(i8*, i8*) #1

declare dso_local i32 @X448_public_from_private(i8*, i8*) #1

declare dso_local i32 @ED448_public_from_private(i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_assign(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
