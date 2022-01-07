; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_algorithm_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_algorithm_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_algorithm_identifier = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"X509: Expected SEQUENCE (AlgorithmIdentifier) - found class %d tag 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_parse_algorithm_identifier(i32* %0, i64 %1, %struct.x509_algorithm_identifier* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_algorithm_identifier*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_algorithm_identifier* %2, %struct.x509_algorithm_identifier** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @asn1_get_next(i32* %13, i64 %14, %struct.asn1_hdr* %10)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22, %17, %4
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32)
  store i32 -1, i32* %5, align 4
  br label %73

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %40 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = icmp sgt i64 %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %73

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32**, i32*** %9, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load %struct.x509_algorithm_identifier*, %struct.x509_algorithm_identifier** %8, align 8
  %68 = getelementptr inbounds %struct.x509_algorithm_identifier, %struct.x509_algorithm_identifier* %67, i32 0, i32 0
  %69 = call i64 @asn1_get_oid(i32* %59, i32 %66, i32* %68, i32** %11)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %73

72:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %48, %27
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i64 @asn1_get_oid(i32*, i32, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
