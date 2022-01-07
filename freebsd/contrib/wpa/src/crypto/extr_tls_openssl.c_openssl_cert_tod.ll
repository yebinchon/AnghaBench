; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_cert_tod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_cert_tod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NID_certificate_policies = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"OpenSSL: Certificate Policy %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"1.3.6.1.4.1.40808.1.3.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @openssl_cert_tod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openssl_cert_tod(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @NID_certificate_policies, align 4
  %12 = call i32* @X509_get_ext_d2i(i32* %10, i32 %11, i32* null, i32* null)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @sk_POLICYINFO_num(i32* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.TYPE_3__* @sk_POLICYINFO_value(i32* %23, i64 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OBJ_obj2txt(i8* %26, i32 100, i32 %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %35, 100
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %22
  br label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %43 = call i64 @os_strcmp(i8* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32* @X509_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i64 @sk_POLICYINFO_num(i32*) #1

declare dso_local %struct.TYPE_3__* @sk_POLICYINFO_value(i32*, i64) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
