; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_crypto_overhead.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_crypto_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*)* @crypto_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crypto_overhead(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct._krb5_encryption_type*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  store %struct._krb5_encryption_type* %9, %struct._krb5_encryption_type** %5, align 8
  %10 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %11 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @CHECKSUMSIZE(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %15 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %20 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %25 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i64, i64* %6, align 8
  ret i64 %31
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
