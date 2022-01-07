; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_valid_der.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_valid_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_hdr = type { i64, i64 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_BOOLEAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_hdr*)* @asn1_valid_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_valid_der(%struct.asn1_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asn1_hdr*, align 8
  store %struct.asn1_hdr* %0, %struct.asn1_hdr** %3, align 8
  %4 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %5 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %12 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ASN1_TAG_BOOLEAN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %18 = call i32 @asn1_valid_der_boolean(%struct.asn1_hdr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %16, %10
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @asn1_valid_der_boolean(%struct.asn1_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
