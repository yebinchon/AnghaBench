; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_oid_is_rsadsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_oid_is_rsadsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_oid*)* @oid_is_rsadsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oid_is_rsadsi(%struct.asn1_oid* %0) #0 {
  %2 = alloca %struct.asn1_oid*, align 8
  store %struct.asn1_oid* %0, %struct.asn1_oid** %2, align 8
  %3 = load %struct.asn1_oid*, %struct.asn1_oid** %2, align 8
  %4 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sge i32 %5, 4
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct.asn1_oid*, %struct.asn1_oid** %2, align 8
  %9 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %35

14:                                               ; preds = %7
  %15 = load %struct.asn1_oid*, %struct.asn1_oid** %2, align 8
  %16 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.asn1_oid*, %struct.asn1_oid** %2, align 8
  %23 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 840
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.asn1_oid*, %struct.asn1_oid** %2, align 8
  %30 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 113549
  br label %35

35:                                               ; preds = %28, %21, %14, %7, %1
  %36 = phi i1 [ false, %21 ], [ false, %14 ], [ false, %7 ], [ false, %1 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
