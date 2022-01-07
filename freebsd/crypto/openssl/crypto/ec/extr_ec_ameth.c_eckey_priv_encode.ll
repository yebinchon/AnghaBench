; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_eckey_priv_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_eckey_priv_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EC_F_ECKEY_PRIV_ENCODE = common dso_local global i32 0, align 4
@EC_R_DECODE_ERROR = common dso_local global i32 0, align 4
@EC_PKEY_NO_PARAMETERS = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_X9_62_id_ecPublicKey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @eckey_priv_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckey_priv_encode(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = call i32 @eckey_param2type(i32* %10, i8** %11, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EC_F_ECKEY_PRIV_ENCODE, align 4
  %22 = load i32, i32* @EC_R_DECODE_ERROR, align 4
  %23 = call i32 @ECerr(i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = call i32 @EC_KEY_get_enc_flags(i32* %6)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @EC_PKEY_NO_PARAMETERS, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @EC_KEY_set_enc_flags(i32* %6, i32 %28)
  %30 = call i32 @i2d_ECPrivateKey(i32* %6, i8** null)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @EC_F_ECKEY_PRIV_ENCODE, align 4
  %35 = load i32, i32* @ERR_R_EC_LIB, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %70

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @OPENSSL_malloc(i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EC_F_ECKEY_PRIV_ENCODE, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @ECerr(i32 %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %70

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %8, align 8
  %48 = call i32 @i2d_ECPrivateKey(i32* %6, i8** %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @OPENSSL_free(i8* %51)
  %53 = load i32, i32* @EC_F_ECKEY_PRIV_ENCODE, align 4
  %54 = load i32, i32* @ERR_R_EC_LIB, align 4
  %55 = call i32 @ECerr(i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %70

56:                                               ; preds = %46
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @NID_X9_62_id_ecPublicKey, align 4
  %59 = call i32 @OBJ_nid2obj(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @PKCS8_pkey_set0(i32* %57, i32 %59, i32 0, i32 %60, i8* %61, i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @OPENSSL_free(i8* %67)
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66, %50, %42, %33, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @eckey_param2type(i32*, i8**, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_KEY_get_enc_flags(i32*) #1

declare dso_local i32 @EC_KEY_set_enc_flags(i32*, i32) #1

declare dso_local i32 @i2d_ECPrivateKey(i32*, i8**) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @PKCS8_pkey_set0(i32*, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
