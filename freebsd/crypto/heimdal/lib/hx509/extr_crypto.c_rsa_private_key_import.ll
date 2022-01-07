; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_rsa_private_key_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_rsa_private_key_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@HX509_PARSING_KEY_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to parse RSA key\00", align 1
@ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION = common dso_local global i32 0, align 4
@HX509_CRYPTO_KEY_FORMAT_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i64, i32, %struct.TYPE_5__*)* @rsa_private_key_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_private_key_import(i32 %0, i32* %1, i8* %2, i64 %3, i32 %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %12, align 4
  switch i32 %15, label %37 [
    i32 128, label %16
  ]

16:                                               ; preds = %6
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32* @d2i_RSAPrivateKey(i32* null, i8** %14, i64 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* %19, i32** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  %31 = call i32 @hx509_set_error_string(i32 %29, i32 0, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  store i32 %32, i32* %7, align 4
  br label %40

33:                                               ; preds = %16
  %34 = load i32, i32* @ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @HX509_CRYPTO_KEY_FORMAT_UNSUPPORTED, align 4
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %37, %28
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32* @d2i_RSAPrivateKey(i32*, i8**, i64) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
