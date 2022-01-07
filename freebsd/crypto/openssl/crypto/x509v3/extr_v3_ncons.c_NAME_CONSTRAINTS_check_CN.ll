; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_ncons.c_NAME_CONSTRAINTS_check_CN.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_ncons.c_NAME_CONSTRAINTS_check_CN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@GEN_DNS = common dso_local global i32 0, align 4
@NID_commonName = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NAME_CONSTRAINTS_check_CN(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @X509_get_subject_name(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @V_ASN1_IA5STRING, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @GEN_DNS, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %23, align 8
  store i32 -1, i32* %7, align 4
  br label %24

24:                                               ; preds = %62, %47, %2
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @NID_commonName, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @X509_NAME_get_index_by_NID(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %63

32:                                               ; preds = %24
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32* @X509_NAME_get_entry(i32* %33, i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call %struct.TYPE_9__* @X509_NAME_ENTRY_get_data(i32* %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %12, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = call i32 @cn2dnsid(%struct.TYPE_9__* %38, i8** %13, i64* %14)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @X509_V_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %65

44:                                               ; preds = %32
  %45 = load i64, i64* %14, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %24

48:                                               ; preds = %44
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @nc_match(%struct.TYPE_8__* %10, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @OPENSSL_free(i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @X509_V_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %48
  br label %24

63:                                               ; preds = %31
  %64 = load i32, i32* @X509_V_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %60, %42
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_get_index_by_NID(i32*, i32, i32) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local i32 @cn2dnsid(%struct.TYPE_9__*, i8**, i64*) #1

declare dso_local i32 @nc_match(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
