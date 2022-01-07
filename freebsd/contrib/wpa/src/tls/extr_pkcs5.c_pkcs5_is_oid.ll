; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs5_is_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs5_is_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_oid*, i64)* @pkcs5_is_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs5_is_oid(%struct.asn1_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.asn1_oid*, align 8
  %4 = alloca i64, align 8
  store %struct.asn1_oid* %0, %struct.asn1_oid** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %6 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %11 = call i64 @oid_is_rsadsi(%struct.asn1_oid* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %15 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %22 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %29 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 6
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %27, %20, %13, %9, %2
  %37 = phi i1 [ false, %20 ], [ false, %13 ], [ false, %9 ], [ false, %2 ], [ %35, %27 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @oid_is_rsadsi(%struct.asn1_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
