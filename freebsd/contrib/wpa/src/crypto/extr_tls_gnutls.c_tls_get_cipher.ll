; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_get_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_get_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GNUTLS_KX_RSA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-%s-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_cipher(i8* %0, %struct.tls_connection* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tls_connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gnutls_cipher_get(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @gnutls_cipher_get_name(i32 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %26

26:                                               ; preds = %25, %4
  %27 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %28 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @gnutls_kx_get(i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i8* @gnutls_kx_get_name(i64 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gnutls_mac_get(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i8* @gnutls_mac_get_name(i32 %41)
  store i8* %42, i8** %15, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @GNUTLS_KX_RSA, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @os_snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54)
  store i32 %55, i32* %16, align 4
  br label %63

56:                                               ; preds = %46
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @os_snprintf(i8* %57, i64 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60, i8* %61)
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i64 @os_snprintf_error(i64 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @gnutls_cipher_get(i32) #1

declare dso_local i8* @gnutls_cipher_get_name(i32) #1

declare dso_local i64 @gnutls_kx_get(i32) #1

declare dso_local i8* @gnutls_kx_get_name(i64) #1

declare dso_local i32 @gnutls_mac_get(i32) #1

declare dso_local i8* @gnutls_mac_get_name(i32) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
