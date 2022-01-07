; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_server_eku_purpose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_server_eku_purpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GnuTLS: Failed to get EKU\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"GnuTLS: Certificate purpose: %s\00", align 1
@GNUTLS_KP_TLS_WWW_SERVER = common dso_local global i32 0, align 4
@GNUTLS_KP_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @server_eku_purpose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_eku_purpose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %42, %1
  store i64 128, i64* %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %12 = call i32 @gnutls_x509_crt_get_key_purpose_oid(i32 %9, i32 %10, i8* %11, i64* %6, i32* null)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %46

20:                                               ; preds = %16
  br label %45

21:                                               ; preds = %8
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

27:                                               ; preds = %21
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %32 = load i32, i32* @GNUTLS_KP_TLS_WWW_SERVER, align 4
  %33 = call i64 @os_strcmp(i8* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %37 = load i32, i32* @GNUTLS_KP_ANY, align 4
  %38 = call i64 @os_strcmp(i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %27
  store i32 1, i32* %2, align 4
  br label %46

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %8

45:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40, %24, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @gnutls_x509_crt_get_key_purpose_oid(i32, i32, i8*, i64*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
