; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_param_to_asn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_param_to_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}*, i32 }

@EVP_CIPH_FLAG_DEFAULT_ASN1 = common dso_local global i32 0, align 4
@NID_id_smime_alg_CMS3DESwrap = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@EVP_F_EVP_CIPHER_PARAM_TO_ASN1 = common dso_local global i32 0, align 4
@ASN1_R_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4
@EVP_R_CIPHER_PARAMETER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_param_to_asn1(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.TYPE_9__*, i32*)**
  %11 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %10, align 8
  %12 = icmp ne i32 (%struct.TYPE_9__*, i32*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_9__*, i32*)**
  %19 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %19(%struct.TYPE_9__* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EVP_CIPH_FLAG_DEFAULT_ASN1, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_9__* %33)
  switch i32 %34, label %46 [
    i32 129, label %35
    i32 131, label %45
    i32 132, label %45
    i32 128, label %45
    i32 130, label %45
  ]

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @EVP_CIPHER_CTX_nid(%struct.TYPE_9__* %36)
  %38 = load i32, i32* @NID_id_smime_alg_CMS3DESwrap, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @V_ASN1_NULL, align 4
  %43 = call i32 @ASN1_TYPE_set(i32* %41, i32 %42, i32* null)
  br label %44

44:                                               ; preds = %40, %35
  store i32 1, i32* %5, align 4
  br label %50

45:                                               ; preds = %32, %32, %32, %32
  store i32 -2, i32* %5, align 4
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @EVP_CIPHER_set_asn1_iv(%struct.TYPE_9__* %47, i32* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %45, %44
  br label %52

51:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %13
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* @EVP_F_EVP_CIPHER_PARAM_TO_ASN1, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, -2
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @ASN1_R_UNSUPPORTED_CIPHER, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @EVP_R_CIPHER_PARAMETER_ERROR, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @EVPerr(i32 %57, i32 %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_9__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_nid(%struct.TYPE_9__*) #1

declare dso_local i32 @ASN1_TYPE_set(i32*, i32, i32*) #1

declare dso_local i32 @EVP_CIPHER_set_asn1_iv(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
