; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_asn1_to_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_asn1_to_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}*, i32 }

@EVP_CIPH_FLAG_DEFAULT_ASN1 = common dso_local global i32 0, align 4
@EVP_F_EVP_CIPHER_ASN1_TO_PARAM = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4
@EVP_R_CIPHER_PARAMETER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_asn1_to_param(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.TYPE_8__*, i32*)**
  %11 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %10, align 8
  %12 = icmp ne i32 (%struct.TYPE_8__*, i32*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_8__*, i32*)**
  %19 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %19(%struct.TYPE_8__* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EVP_CIPH_FLAG_DEFAULT_ASN1, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_8__* %33)
  switch i32 %34, label %37 [
    i32 129, label %35
    i32 131, label %36
    i32 132, label %36
    i32 128, label %36
    i32 130, label %36
  ]

35:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %41

36:                                               ; preds = %32, %32, %32, %32
  store i32 -2, i32* %5, align 4
  br label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @EVP_CIPHER_get_asn1_iv(%struct.TYPE_8__* %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %36, %35
  br label %43

42:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* @EVP_F_EVP_CIPHER_ASN1_TO_PARAM, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @EVP_R_UNSUPPORTED_CIPHER, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EVP_R_CIPHER_PARAMETER_ERROR, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @EVPerr(i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_8__*) #1

declare dso_local i32 @EVP_CIPHER_get_asn1_iv(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
