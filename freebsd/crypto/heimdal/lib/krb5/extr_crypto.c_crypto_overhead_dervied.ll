; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_crypto_overhead_dervied.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_crypto_overhead_dervied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*)* @crypto_overhead_dervied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crypto_overhead_dervied(i32 %0, %struct.TYPE_3__* %1) #0 {
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
  %11 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %16 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @CHECKSUMSIZE(i64 %17)
  store i64 %18, i64* %6, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %21 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @CHECKSUMSIZE(i64 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %26 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %31 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %5, align 8
  %36 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %34, %24
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local i64 @CHECKSUMSIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
