; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_parse_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_parse_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i64, i64* }

@ASN1_MAX_OID_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ASN.1: Too long OID value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_parse_oid(i32* %0, i64 %1, %struct.asn1_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.asn1_oid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.asn1_oid* %2, %struct.asn1_oid** %7, align 8
  %12 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %13 = call i32 @os_memset(%struct.asn1_oid* %12, i32 0, i32 16)
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %99, %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ult i32* %19, %20
  br i1 %21, label %22, label %100

22:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp uge i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %101

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i64, i64* %10, align 8
  %33 = shl i64 %32, 7
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 127
  %36 = sext i32 %35 to i64
  %37 = or i64 %33, %36
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %23, label %42

42:                                               ; preds = %38
  %43 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %44 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ASN1_MAX_OID_LEN, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %101

51:                                               ; preds = %42
  %52 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %53 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %51
  %57 = load i64, i64* %10, align 8
  %58 = udiv i64 %57, 40
  %59 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %60 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %64 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %71 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 2, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %56
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %77 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %80, 40
  %82 = sub i64 %75, %81
  %83 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %84 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64 %82, i64* %86, align 8
  %87 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %88 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %87, i32 0, i32 0
  store i64 2, i64* %88, align 8
  br label %99

89:                                               ; preds = %51
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %92 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %95 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %90, i64* %98, align 8
  br label %99

99:                                               ; preds = %89, %74
  br label %18

100:                                              ; preds = %18
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %48, %27
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @os_memset(%struct.asn1_oid*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
