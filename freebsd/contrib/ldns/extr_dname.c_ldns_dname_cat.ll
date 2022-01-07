; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uint8_t = common dso_local global i32 0, align 4
@newd = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dname_cat(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @uint8_t, align 4
  %9 = load i32, i32* @newd, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ldns_rdf_get_type(i32* %11)
  %13 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @ldns_rdf_get_type(i32* %16)
  %18 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @ldns_rdf_size(i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ldns_dname_last_label_is_root_label(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i64, i64* %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @ldns_rdf_size(i32* %33)
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %7, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @ldns_rdf_data(i32* %36)
  %38 = load i32, i32* @uint8_t, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @LDNS_XREALLOC(i64 %37, i32 %38, i64 %39)
  store i32 %40, i32* @newd, align 4
  %41 = load i32, i32* @newd, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %31
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @newd, align 4
  %48 = call i32 @ldns_rdf_set_data(i32* %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @ldns_rdf_data(i32* %49)
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @ldns_rdf_data(i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @ldns_rdf_size(i32* %55)
  %57 = call i32 @memcpy(i64 %52, i64 %54, i64 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @ldns_rdf_set_size(i32* %58, i64 %59)
  %61 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %45, %43, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i64 @ldns_dname_last_label_is_root_label(i32*) #1

declare dso_local i32 @LDNS_XREALLOC(i64, i32, i64) #1

declare dso_local i64 @ldns_rdf_data(i32*) #1

declare dso_local i32 @ldns_rdf_set_data(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @ldns_rdf_set_size(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
