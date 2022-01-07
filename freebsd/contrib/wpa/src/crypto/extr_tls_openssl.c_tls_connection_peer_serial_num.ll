; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_peer_serial_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_peer_serial_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tls_connection_peer_serial_num(i8* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %5, align 8
  %9 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %10 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %16 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @X509_get_serialNumber(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %42

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ASN1_STRING_length(i32* %23)
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @os_malloc(i64 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %42

33:                                               ; preds = %22
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ASN1_STRING_get0_data(i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ASN1_STRING_length(i32* %38)
  %40 = call i32 @wpa_snprintf_hex_uppercase(i8* %34, i64 %35, i32 %37, i32 %39)
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %33, %32, %21, %13
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32* @X509_get_serialNumber(i32) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @wpa_snprintf_hex_uppercase(i8*, i64, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
