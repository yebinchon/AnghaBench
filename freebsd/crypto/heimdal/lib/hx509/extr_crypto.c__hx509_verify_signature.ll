; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_verify_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.signature_alg = type { i32, i32 (i32, %struct.signature_alg*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*)*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@HX509_SIG_ALG_NO_SUPPORTED = common dso_local global i32 0, align 4
@PROVIDE_CONF = common dso_local global i32 0, align 4
@HX509_CRYPTO_SIG_NO_CONF = common dso_local global i32 0, align 4
@REQUIRE_SIGNER = common dso_local global i32 0, align 4
@HX509_CRYPTO_SIGNATURE_WITHOUT_SIGNER = common dso_local global i32 0, align 4
@HX509_SIG_ALG_DONT_MATCH_KEY_ALG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_verify_signature(i32 %0, i64 %1, %struct.TYPE_14__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.signature_alg*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.TYPE_13__* @_hx509_get_cert(i64 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %13, align 8
  br label %20

20:                                               ; preds = %17, %5
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = call %struct.signature_alg* @find_sig_alg(i32* %22)
  store %struct.signature_alg* %23, %struct.signature_alg** %12, align 8
  %24 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %25 = icmp eq %struct.signature_alg* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @hx509_clear_error_string(i32 %27)
  %29 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  store i32 %29, i32* %6, align 4
  br label %94

30:                                               ; preds = %20
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %35 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PROVIDE_CONF, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @hx509_clear_error_string(i32 %41)
  %43 = load i32, i32* @HX509_CRYPTO_SIG_NO_CONF, align 4
  store i32 %43, i32* %6, align 4
  br label %94

44:                                               ; preds = %33, %30
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %46 = icmp eq %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %49 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @REQUIRE_SIGNER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @hx509_clear_error_string(i32 %55)
  %57 = load i32, i32* @HX509_CRYPTO_SIGNATURE_WITHOUT_SIGNER, align 4
  store i32 %57, i32* %6, align 4
  br label %94

58:                                               ; preds = %47, %44
  %59 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %60 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %14, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %74 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @der_heim_oid_cmp(i32* %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @hx509_clear_error_string(i32 %79)
  %81 = load i32, i32* @HX509_SIG_ALG_DONT_MATCH_KEY_ALG, align 4
  store i32 %81, i32* %6, align 4
  br label %94

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %63, %58
  %84 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %85 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %84, i32 0, i32 1
  %86 = load i32 (i32, %struct.signature_alg*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*)*, i32 (i32, %struct.signature_alg*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*)** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.signature_alg*, %struct.signature_alg** %12, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 %86(i32 %87, %struct.signature_alg* %88, %struct.TYPE_13__* %89, %struct.TYPE_14__* %90, i32* %91, i32* %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %83, %78, %54, %40, %26
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_13__* @_hx509_get_cert(i64) #1

declare dso_local %struct.signature_alg* @find_sig_alg(i32*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
