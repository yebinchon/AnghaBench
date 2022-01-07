; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_valid_issuer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_valid_issuer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i64, i32, i32 }

@X509_EXT_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"X509: Non-CA certificate used as an issuer\00", align 1
@X509_CERT_V3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"X509: v3 CA certificate did not include BasicConstraints extension\00", align 1
@X509_EXT_KEY_USAGE = common dso_local global i32 0, align 4
@X509_KEY_USAGE_KEY_CERT_SIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"X509: Issuer certificate did not have keyCertSign bit in Key Usage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*)* @x509_valid_issuer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_valid_issuer(%struct.x509_certificate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x509_certificate*, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %3, align 8
  %4 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %5 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @X509_EXT_BASIC_CONSTRAINTS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %12 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

18:                                               ; preds = %10, %1
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %20 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @X509_CERT_V3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %26 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @X509_EXT_BASIC_CONSTRAINTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

34:                                               ; preds = %24, %18
  %35 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %36 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @X509_EXT_KEY_USAGE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %43 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @X509_KEY_USAGE_KEY_CERT_SIGN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

51:                                               ; preds = %41, %34
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %31, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
