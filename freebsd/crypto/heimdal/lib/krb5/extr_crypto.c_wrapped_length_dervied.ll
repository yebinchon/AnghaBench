; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_wrapped_length_dervied.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_wrapped_length_dervied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, i64)* @wrapped_length_dervied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wrapped_length_dervied(i32 %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._krb5_encryption_type*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %11, align 8
  store %struct._krb5_encryption_type* %12, %struct._krb5_encryption_type** %7, align 8
  %13 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %14 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %17 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = load i64, i64* %8, align 8
  %26 = udiv i64 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %30 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %35 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %49

41:                                               ; preds = %3
  %42 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %43 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i64, i64* %9, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
