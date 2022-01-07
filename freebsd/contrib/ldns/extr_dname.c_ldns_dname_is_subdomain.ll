; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_is_subdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_is_subdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dname_is_subdomain(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 1, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ldns_rdf_get_type(i32* %15)
  %17 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ldns_rdf_get_type(i32* %20)
  %22 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @ldns_rdf_compare(i32* %25, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %2
  store i32 0, i32* %3, align 4
  br label %99

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @ldns_dname_clone_from(i32* %31, i32 0)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @ldns_dname_clone_from(i32* %33, i32 0)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @ldns_dname2canonical(i32* %35)
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @ldns_dname2canonical(i32* %37)
  %39 = load i32*, i32** %12, align 8
  %40 = call i64 @ldns_dname_label_count(i32* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i64 @ldns_dname_label_count(i32* %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %93

47:                                               ; preds = %30
  %48 = load i64, i64* %6, align 8
  %49 = sub nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %89, %47
  %53 = load i64, i64* %8, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = load i32*, i32** %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32* @ldns_dname_label(i32* %56, i64 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32* @ldns_dname_label(i32* %59, i64 %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %64, %55
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @ldns_rdf_deep_free(i32* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @ldns_rdf_deep_free(i32* %70)
  store i32 0, i32* %14, align 4
  br label %92

72:                                               ; preds = %64
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i64 @ldns_rdf_compare(i32* %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @ldns_rdf_deep_free(i32* %78)
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @ldns_rdf_deep_free(i32* %80)
  store i32 0, i32* %14, align 4
  br label %92

82:                                               ; preds = %72
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @ldns_rdf_deep_free(i32* %83)
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @ldns_rdf_deep_free(i32* %85)
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %8, align 8
  br label %52

92:                                               ; preds = %77, %67, %52
  br label %93

93:                                               ; preds = %92, %46
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @ldns_rdf_deep_free(i32* %94)
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @ldns_rdf_deep_free(i32* %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %29
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32*) #1

declare dso_local i32* @ldns_dname_clone_from(i32*, i32) #1

declare dso_local i32 @ldns_dname2canonical(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i32* @ldns_dname_label(i32*, i64) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
