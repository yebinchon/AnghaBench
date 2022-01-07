; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c_ARCFOUR_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-arcfour.c_ARCFOUR_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._krb5_key_data*, i8*, i64, i64, i32, i8*)* @ARCFOUR_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ARCFOUR_encrypt(i32 %0, %struct._krb5_key_data* %1, i8* %2, i64 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._krb5_key_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %18 = load i32, i32* %14, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @_krb5_usage2arcfour(i32 %19, i32* %17)
  store i32 %20, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %8, align 4
  br label %43

24:                                               ; preds = %7
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = load %struct._krb5_key_data*, %struct._krb5_key_data** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 @ARCFOUR_subencrypt(i32 %28, %struct._krb5_key_data* %29, i8* %30, i64 %31, i32 %32, i8* %33)
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load %struct._krb5_key_data*, %struct._krb5_key_data** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* %17, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @ARCFOUR_subdecrypt(i32 %36, %struct._krb5_key_data* %37, i8* %38, i64 %39, i32 %40, i8* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %35, %27, %22
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @_krb5_usage2arcfour(i32, i32*) #1

declare dso_local i32 @ARCFOUR_subencrypt(i32, %struct._krb5_key_data*, i8*, i64, i32, i8*) #1

declare dso_local i32 @ARCFOUR_subdecrypt(i32, %struct._krb5_key_data*, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
