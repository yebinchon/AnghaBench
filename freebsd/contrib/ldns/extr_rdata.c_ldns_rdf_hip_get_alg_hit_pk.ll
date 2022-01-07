; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_rdf_hip_get_alg_hit_pk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_rdf_hip_get_alg_hit_pk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_INVALID_POINTER = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_HIP = common dso_local global i64 0, align 8
@LDNS_STATUS_INVALID_RDF_TYPE = common dso_local global i32 0, align 4
@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf_hip_get_alg_hit_pk(i32* %0, i32* %1, i32* %2, i32** %3, i64* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32** %5, i32*** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32**, i32*** %11, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32**, i32*** %13, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64*, i64** %12, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %27, %24, %21, %18, %6
  %34 = load i32, i32* @LDNS_STATUS_INVALID_POINTER, align 4
  store i32 %34, i32* %7, align 4
  br label %96

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @ldns_rdf_get_type(i32* %36)
  %38 = load i64, i64* @LDNS_RDF_TYPE_HIP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @LDNS_STATUS_INVALID_RDF_TYPE, align 4
  store i32 %41, i32* %7, align 4
  br label %96

42:                                               ; preds = %35
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @ldns_rdf_size(i32* %43)
  store i64 %44, i64* %15, align 8
  %45 = icmp ult i64 %44, 6
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %47, i32* %7, align 4
  br label %96

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @ldns_rdf_data(i32* %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = call i64 @ldns_read_uint16(i32* %62)
  %64 = load i64*, i64** %12, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32**, i32*** %11, align 8
  store i32* %66, i32** %67, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32**, i32*** %13, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %50
  %79 = load i64*, i64** %12, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %15, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** %12, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %86, %88
  %90 = add i64 %89, 4
  %91 = icmp ult i64 %83, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82, %78, %50
  %93 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %93, i32* %7, align 4
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %92, %46, %40, %33
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i64 @ldns_read_uint16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
