; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_oid_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_oid_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_oid_equal(%struct.asn1_oid* %0, %struct.asn1_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn1_oid*, align 8
  %5 = alloca %struct.asn1_oid*, align 8
  %6 = alloca i64, align 8
  store %struct.asn1_oid* %0, %struct.asn1_oid** %4, align 8
  store %struct.asn1_oid* %1, %struct.asn1_oid** %5, align 8
  %7 = load %struct.asn1_oid*, %struct.asn1_oid** %4, align 8
  %8 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.asn1_oid*, %struct.asn1_oid** %5, align 8
  %11 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.asn1_oid*, %struct.asn1_oid** %4, align 8
  %19 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.asn1_oid*, %struct.asn1_oid** %4, align 8
  %24 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.asn1_oid*, %struct.asn1_oid** %5, align 8
  %30 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %16

41:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
