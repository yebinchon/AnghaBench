; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_cert_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_cert_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"TLSv1: Failed to read '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate**, i8*, i32*, i64)* @tlsv1_set_cert_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_set_cert_chain(%struct.x509_certificate** %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x509_certificate**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.x509_certificate** %0, %struct.x509_certificate*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.x509_certificate**, %struct.x509_certificate*** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @tlsv1_add_cert(%struct.x509_certificate** %16, i32* %17, i64 %18)
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @os_readfile(i8* %24, i64* %11)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %5, align 4
  br label %42

33:                                               ; preds = %23
  %34 = load %struct.x509_certificate**, %struct.x509_certificate*** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @tlsv1_add_cert(%struct.x509_certificate** %34, i32* %35, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @os_free(i32* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %33, %29, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @tlsv1_add_cert(%struct.x509_certificate**, i32*, i64) #1

declare dso_local i64 @os_readfile(i8*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
