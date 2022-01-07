; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_ocsp_hash_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_ocsp_hash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"OCSP: Hash (SHA1)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"OCSP: Hash (SHA256)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"OCSP: Hash (SHA384)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"OCSP: Hash (SHA512)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"OCSP: Could not calculate hash with alg %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_oid*, i32*, i64, i32*)* @ocsp_hash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocsp_hash_data(%struct.asn1_oid* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn1_oid*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1 x i32*], align 8
  %11 = alloca [1 x i64], align 8
  %12 = alloca [100 x i8], align 16
  store %struct.asn1_oid* %0, %struct.asn1_oid** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %15, align 8
  %17 = load %struct.asn1_oid*, %struct.asn1_oid** %6, align 8
  %18 = call i64 @x509_sha1_oid(%struct.asn1_oid* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @sha1_vector(i32 1, i32** %21, i64* %22, i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %83

27:                                               ; preds = %20
  %28 = load i32, i32* @MSG_MSGDUMP, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @wpa_hexdump(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %29, i32 20)
  store i32 20, i32* %5, align 4
  br label %83

31:                                               ; preds = %4
  %32 = load %struct.asn1_oid*, %struct.asn1_oid** %6, align 8
  %33 = call i64 @x509_sha256_oid(%struct.asn1_oid* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %37 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @sha256_vector(i32 1, i32** %36, i64* %37, i32* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %83

42:                                               ; preds = %35
  %43 = load i32, i32* @MSG_MSGDUMP, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 32)
  store i32 32, i32* %5, align 4
  br label %83

46:                                               ; preds = %31
  %47 = load %struct.asn1_oid*, %struct.asn1_oid** %6, align 8
  %48 = call i64 @x509_sha384_oid(%struct.asn1_oid* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %52 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @sha384_vector(i32 1, i32** %51, i64* %52, i32* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %83

57:                                               ; preds = %50
  %58 = load i32, i32* @MSG_MSGDUMP, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @wpa_hexdump(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %59, i32 48)
  store i32 48, i32* %5, align 4
  br label %83

61:                                               ; preds = %46
  %62 = load %struct.asn1_oid*, %struct.asn1_oid** %6, align 8
  %63 = call i64 @x509_sha512_oid(%struct.asn1_oid* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = getelementptr inbounds [1 x i32*], [1 x i32*]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @sha512_vector(i32 1, i32** %66, i64* %67, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %83

72:                                               ; preds = %65
  %73 = load i32, i32* @MSG_MSGDUMP, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @wpa_hexdump(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %74, i32 64)
  store i32 64, i32* %5, align 4
  br label %83

76:                                               ; preds = %61
  %77 = load %struct.asn1_oid*, %struct.asn1_oid** %6, align 8
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %79 = call i32 @asn1_oid_to_str(%struct.asn1_oid* %77, i8* %78, i32 100)
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %82 = call i32 @wpa_printf(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %76, %72, %71, %57, %56, %42, %41, %27, %26
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @x509_sha1_oid(%struct.asn1_oid*) #1

declare dso_local i64 @sha1_vector(i32, i32**, i64*, i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @x509_sha256_oid(%struct.asn1_oid*) #1

declare dso_local i64 @sha256_vector(i32, i32**, i64*, i32*) #1

declare dso_local i64 @x509_sha384_oid(%struct.asn1_oid*) #1

declare dso_local i64 @sha384_vector(i32, i32**, i64*, i32*) #1

declare dso_local i64 @x509_sha512_oid(%struct.asn1_oid*) #1

declare dso_local i64 @sha512_vector(i32, i32**, i64*, i32*) #1

declare dso_local i32 @asn1_oid_to_str(%struct.asn1_oid*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
