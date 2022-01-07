; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_rsa_generate_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_rsa_generate_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_generate_private_context = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@rsa_generate_private_key.default_rsa_e = internal constant i32 65537, align 4
@rsa_generate_private_key.default_rsa_bits = internal constant i32 2048, align 4
@HX509_PARSING_KEY_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to generate RSA key\00", align 1
@ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hx509_generate_private_context*, %struct.TYPE_5__*)* @rsa_generate_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_generate_private_key(i32 %0, %struct.hx509_generate_private_context* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hx509_generate_private_context*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.hx509_generate_private_context* %1, %struct.hx509_generate_private_context** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %11 = call i32* (...) @RSA_new()
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  %23 = call i32 @hx509_set_error_string(i32 %21, i32 0, i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %3
  %26 = call i32* (...) @BN_new()
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @BN_set_word(i32* %27, i32 65537)
  store i64 2048, i64* %10, align 8
  %29 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %6, align 8
  %30 = getelementptr inbounds %struct.hx509_generate_private_context, %struct.hx509_generate_private_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %6, align 8
  %35 = getelementptr inbounds %struct.hx509_generate_private_context, %struct.hx509_generate_private_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @RSA_generate_key_ex(i32* %41, i64 %42, i32* %43, i32* null)
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @BN_free(i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  %52 = call i32 @hx509_set_error_string(i32 %50, i32 0, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %37
  %55 = load i32, i32* @ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %49, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @RSA_generate_key_ex(i32*, i64, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
