; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_import_public_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_import_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32*, i32* }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"RSA: Expected SEQUENCE (public key) - found class %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"RSA: Extra data in public key SEQUENCE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_rsa_key* @crypto_rsa_import_public_key(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_rsa_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_rsa_key*, align 8
  %7 = alloca %struct.asn1_hdr, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call %struct.crypto_rsa_key* @os_zalloc(i32 16)
  store %struct.crypto_rsa_key* %10, %struct.crypto_rsa_key** %6, align 8
  %11 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %12 = icmp eq %struct.crypto_rsa_key* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %100

14:                                               ; preds = %2
  %15 = call i8* (...) @bignum_init()
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %18 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = call i8* (...) @bignum_init()
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %24 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %14
  %28 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %14
  %33 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %34 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %33)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %100

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @asn1_get_next(i32* %36, i64 %37, %struct.asn1_hdr* %7)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45, %40, %35
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %55)
  br label %97

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %68 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32* @crypto_rsa_parse_integer(i32* %65, i32* %66, i32* %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %74 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32* @crypto_rsa_parse_integer(i32* %71, i32* %72, i32* %75)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %57
  br label %97

80:                                               ; preds = %57
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = icmp ne i32* %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @wpa_hexdump(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %86, i32 %93)
  br label %97

95:                                               ; preds = %80
  %96 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  store %struct.crypto_rsa_key* %96, %struct.crypto_rsa_key** %3, align 8
  br label %100

97:                                               ; preds = %84, %79, %50
  %98 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %99 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %98)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %100

100:                                              ; preds = %97, %95, %32, %13
  %101 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %3, align 8
  ret %struct.crypto_rsa_key* %101
}

declare dso_local %struct.crypto_rsa_key* @os_zalloc(i32) #1

declare dso_local i8* @bignum_init(...) #1

declare dso_local i32 @crypto_rsa_free(%struct.crypto_rsa_key*) #1

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32* @crypto_rsa_parse_integer(i32*, i32*, i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
