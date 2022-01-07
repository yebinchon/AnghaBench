; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_valid_der_boolean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_valid_der_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_hdr = type { i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ASN.1: Unexpected BOOLEAN length (%u)\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"ASN.1: Invalid BOOLEAN value 0x%x (DER requires 0 or 0xff)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_hdr*)* @asn1_valid_der_boolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_valid_der_boolean(%struct.asn1_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asn1_hdr*, align 8
  store %struct.asn1_hdr* %0, %struct.asn1_hdr** %3, align 8
  %4 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %5 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %16 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 255
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.asn1_hdr*, %struct.asn1_hdr** %3, align 8
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %21, %14
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %28, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
