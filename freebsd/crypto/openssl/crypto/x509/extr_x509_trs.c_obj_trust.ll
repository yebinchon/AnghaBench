; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_trs.c_obj_trust.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_trs.c_obj_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@NID_anyExtendedKeyUsage = common dso_local global i32 0, align 4
@X509_TRUST_OK_ANY_EKU = common dso_local global i32 0, align 4
@X509_TRUST_REJECTED = common dso_local global i32 0, align 4
@X509_TRUST_TRUSTED = common dso_local global i32 0, align 4
@X509_TRUST_DO_SS_COMPAT = common dso_local global i32 0, align 4
@X509_TRUST_UNTRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @obj_trust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_trust(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sk_ASN1_OBJECT_num(i64 %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @sk_ASN1_OBJECT_value(i64 %35, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @OBJ_obj2nid(i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @NID_anyExtendedKeyUsage, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @X509_TRUST_OK_ANY_EKU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %32
  %53 = load i32, i32* @X509_TRUST_REJECTED, align 4
  store i32 %53, i32* %4, align 4
  br label %114

54:                                               ; preds = %47, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58, %19, %3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sk_ASN1_OBJECT_num(i64 %72)
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32* @sk_ASN1_OBJECT_value(i64 %78, i32 %79)
  store i32* %80, i32** %12, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @OBJ_obj2nid(i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @NID_anyExtendedKeyUsage, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @X509_TRUST_OK_ANY_EKU, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90, %75
  %96 = load i32, i32* @X509_TRUST_TRUSTED, align 4
  store i32 %96, i32* %4, align 4
  br label %114

97:                                               ; preds = %90, %86
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %68

101:                                              ; preds = %68
  %102 = load i32, i32* @X509_TRUST_REJECTED, align 4
  store i32 %102, i32* %4, align 4
  br label %114

103:                                              ; preds = %62, %59
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @X509_TRUST_DO_SS_COMPAT, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @X509_TRUST_UNTRUSTED, align 4
  store i32 %109, i32* %4, align 4
  br label %114

110:                                              ; preds = %103
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @trust_compat(i32* null, %struct.TYPE_6__* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %108, %101, %95, %52
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @sk_ASN1_OBJECT_num(i64) #1

declare dso_local i32* @sk_ASN1_OBJECT_value(i64, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @trust_compat(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
