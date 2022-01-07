; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_priv_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_priv_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32* }

@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@DH_F_DH_PRIV_DECODE = common dso_local global i32 0, align 4
@DH_R_BN_ERROR = common dso_local global i32 0, align 4
@EVP_R_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @dh_priv_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_priv_decode(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PKCS8_pkey_get0(i32* null, i8** %6, i32* %8, i32** %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

20:                                               ; preds = %2
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @X509_ALGOR_get0(i32* null, i32* %10, i8** %11, i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %78

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @d2i_ASN1_INTEGER(i32* null, i8** %6, i32 %28)
  store i32* %29, i32** %14, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %78

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %12, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.TYPE_14__* @d2i_dhp(%struct.TYPE_13__* %41, i8** %7, i32 %42)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %15, align 8
  %44 = icmp eq %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %78

46:                                               ; preds = %32
  %47 = call i32* (...) @BN_secure_new()
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ASN1_INTEGER_to_BN(i32* %52, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* @DH_F_DH_PRIV_DECODE, align 4
  %60 = load i32, i32* @DH_R_BN_ERROR, align 4
  %61 = call i32 @DHerr(i32 %59, i32 %60)
  br label %82

62:                                               ; preds = %51
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %64 = call i32 @DH_generate_key(%struct.TYPE_14__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %82

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %75 = call i32 @EVP_PKEY_assign(%struct.TYPE_13__* %68, i32 %73, %struct.TYPE_14__* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @ASN1_STRING_clear_free(i32* %76)
  store i32 1, i32* %3, align 4
  br label %87

78:                                               ; preds = %45, %31, %26
  %79 = load i32, i32* @DH_F_DH_PRIV_DECODE, align 4
  %80 = load i32, i32* @EVP_R_DECODE_ERROR, align 4
  %81 = call i32 @DHerr(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %66, %58
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %84 = call i32 @DH_free(%struct.TYPE_14__* %83)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @ASN1_STRING_clear_free(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %67, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @PKCS8_pkey_get0(i32*, i8**, i32*, i32**, i32*) #1

declare dso_local i32 @X509_ALGOR_get0(i32*, i32*, i8**, i32*) #1

declare dso_local i32* @d2i_ASN1_INTEGER(i32*, i8**, i32) #1

declare dso_local %struct.TYPE_14__* @d2i_dhp(%struct.TYPE_13__*, i8**, i32) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32 @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32 @DH_generate_key(%struct.TYPE_14__*) #1

declare dso_local i32 @EVP_PKEY_assign(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ASN1_STRING_clear_free(i32*) #1

declare dso_local i32 @DH_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
