; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_get_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_get_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i32 }
%struct.asn1_hdr = type { i64, i64, i64, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_OID = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ASN.1: Expected OID - found class %d tag 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_get_oid(i32* %0, i64 %1, %struct.asn1_oid* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_oid*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.asn1_oid* %2, %struct.asn1_oid** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @asn1_get_next(i32* %11, i64 %12, %struct.asn1_hdr* %10)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %51

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASN1_TAG_OID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %35)
  store i32 -1, i32* %5, align 4
  br label %51

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32**, i32*** %9, align 8
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.asn1_oid*, %struct.asn1_oid** %8, align 8
  %50 = call i32 @asn1_parse_oid(i32* %45, i32 %48, %struct.asn1_oid* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %37, %30, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @asn1_parse_oid(i32*, i32, %struct.asn1_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
