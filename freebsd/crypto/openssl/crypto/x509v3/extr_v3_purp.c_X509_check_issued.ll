; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_purp.c_X509_check_issued.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_purp.c_X509_check_issued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@X509_V_ERR_SUBJECT_ISSUER_MISMATCH = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@EXFLAG_PROXY = common dso_local global i32 0, align 4
@KU_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@KU_KEY_CERT_SIGN = common dso_local global i32 0, align 4
@X509_V_ERR_KEYUSAGE_NO_CERTSIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_issued(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = call i32 @X509_get_subject_name(%struct.TYPE_9__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = call i32 @X509_get_issuer_name(%struct.TYPE_9__* %9)
  %11 = call i64 @X509_NAME_cmp(i32 %8, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @X509_V_ERR_SUBJECT_ISSUER_MISMATCH, align 4
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i32 @x509v3_cache_extensions(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call i32 @x509v3_cache_extensions(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @X509_check_akid(%struct.TYPE_9__* %25, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @X509_V_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %61

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EXFLAG_PROXY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load i32, i32* @KU_DIGITAL_SIGNATURE, align 4
  %46 = call i64 @ku_reject(%struct.TYPE_9__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE, align 4
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %36
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load i32, i32* @KU_KEY_CERT_SIGN, align 4
  %54 = call i64 @ku_reject(%struct.TYPE_9__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @X509_V_ERR_KEYUSAGE_NO_CERTSIGN, align 4
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* @X509_V_OK, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %56, %48, %33, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @X509_NAME_cmp(i32, i32) #1

declare dso_local i32 @X509_get_subject_name(%struct.TYPE_9__*) #1

declare dso_local i32 @X509_get_issuer_name(%struct.TYPE_9__*) #1

declare dso_local i32 @x509v3_cache_extensions(%struct.TYPE_9__*) #1

declare dso_local i32 @X509_check_akid(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @ku_reject(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
