; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_purp.c_X509_check_akid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_purp.c_X509_check_akid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32*, i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_ERR_AKID_SKID_MISMATCH = common dso_local global i32 0, align 4
@X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_akid(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @X509_V_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %96

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @ASN1_OCTET_STRING_cmp(i64 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @X509_V_ERR_AKID_SKID_MISMATCH, align 4
  store i32 %34, i32* %3, align 4
  br label %96

35:                                               ; preds = %24, %19, %14
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = call i32 @X509_get_serialNumber(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ASN1_INTEGER_cmp(i32 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH, align 4
  store i32 %49, i32* %3, align 4
  br label %96

50:                                               ; preds = %40, %35
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %94

55:                                               ; preds = %50
  store i32* null, i32** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %79, %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @sk_GENERAL_NAME_num(i32* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.TYPE_12__* @sk_GENERAL_NAME_value(i32* %65, i32 %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GEN_DIRNAME, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %8, align 8
  br label %82

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %59

82:                                               ; preds = %73, %59
  %83 = load i32*, i32** %8, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = call i32 @X509_get_issuer_name(%struct.TYPE_11__* %87)
  %89 = call i64 @X509_NAME_cmp(i32* %86, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH, align 4
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93, %50
  %95 = load i32, i32* @X509_V_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %91, %48, %33, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @ASN1_OCTET_STRING_cmp(i64, i64) #1

declare dso_local i64 @ASN1_INTEGER_cmp(i32, i64) #1

declare dso_local i32 @X509_get_serialNumber(%struct.TYPE_11__*) #1

declare dso_local i32 @sk_GENERAL_NAME_num(i32*) #1

declare dso_local %struct.TYPE_12__* @sk_GENERAL_NAME_value(i32*, i32) #1

declare dso_local i64 @X509_NAME_cmp(i32*, i32) #1

declare dso_local i32 @X509_get_issuer_name(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
