; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_r2x.c_X509_REQ_to_X509.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_r2x.c_X509_REQ_to_X509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@X509_F_X509_REQ_TO_X509 = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @X509_REQ_to_X509(%struct.TYPE_18__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = call %struct.TYPE_20__* (...) @X509_new()
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %8, align 8
  %13 = icmp eq %struct.TYPE_20__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @X509_F_X509_REQ_TO_X509, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @X509err(i32 %15, i32 %16)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @sk_X509_ATTRIBUTE_num(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = call i32* (...) @ASN1_INTEGER_new()
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %94

33:                                               ; preds = %27
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ASN1_INTEGER_set(i32* %36, i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %94

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = call i32* @X509_REQ_get_subject_name(%struct.TYPE_18__* %42)
  store i32* %43, i32** %10, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @X509_set_subject_name(%struct.TYPE_20__* %44, i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %94

49:                                               ; preds = %41
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @X509_set_issuer_name(%struct.TYPE_20__* %50, i32* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %94

55:                                               ; preds = %49
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @X509_gmtime_adj(i32 %59, i64 0)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %94

63:                                               ; preds = %55
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 86400, %69
  %71 = call i32* @X509_gmtime_adj(i32 %67, i64 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %94

74:                                               ; preds = %63
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = call i32* @X509_REQ_get0_pubkey(%struct.TYPE_18__* %75)
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @X509_set_pubkey(%struct.TYPE_20__* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79, %74
  br label %94

85:                                               ; preds = %79
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 (...) @EVP_md5()
  %89 = call i32 @X509_sign(%struct.TYPE_20__* %86, i32* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %94

92:                                               ; preds = %85
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %4, align 8
  br label %97

94:                                               ; preds = %91, %84, %73, %62, %54, %48, %39, %32
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %96 = call i32 @X509_free(%struct.TYPE_20__* %95)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %97

97:                                               ; preds = %94, %92, %14
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %98
}

declare dso_local %struct.TYPE_20__* @X509_new(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i64 @sk_X509_ATTRIBUTE_num(i32) #1

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i32) #1

declare dso_local i32* @X509_REQ_get_subject_name(%struct.TYPE_18__*) #1

declare dso_local i64 @X509_set_subject_name(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @X509_set_issuer_name(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @X509_gmtime_adj(i32, i64) #1

declare dso_local i32* @X509_REQ_get0_pubkey(%struct.TYPE_18__*) #1

declare dso_local i32 @X509_set_pubkey(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @X509_sign(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @X509_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
