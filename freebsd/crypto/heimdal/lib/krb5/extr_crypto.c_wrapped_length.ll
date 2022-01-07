; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_wrapped_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_wrapped_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*, i64)* @wrapped_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wrapped_length(i32 %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._krb5_encryption_type*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %12, align 8
  store %struct._krb5_encryption_type* %13, %struct._krb5_encryption_type** %7, align 8
  %14 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %15 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %18 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @CHECKSUMSIZE(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %22 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = sub i64 %30, 1
  %32 = load i64, i64* %8, align 8
  %33 = udiv i64 %31, %32
  %34 = load i64, i64* %8, align 8
  %35 = mul i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  ret i64 %36
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
