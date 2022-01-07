; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_cat_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_cat_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uint8_t = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dname_cat_clone(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @uint8_t, align 4
  %10 = load i32, i32* @buf, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ldns_rdf_get_type(i32* %12)
  %14 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @ldns_rdf_get_type(i32* %17)
  %19 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32* null, i32** %3, align 8
  br label %63

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ldns_rdf_size(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ldns_dname_last_label_is_root_label(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ldns_rdf_size(i32* %33)
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @uint8_t, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @LDNS_XMALLOC(i32 %36, i32 %37)
  store i32 %38, i32* @buf, align 4
  %39 = load i32, i32* @buf, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %63

42:                                               ; preds = %31
  %43 = load i32, i32* @buf, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ldns_rdf_data(i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @memcpy(i32 %43, i32 %45, i32 %46)
  %48 = load i32, i32* @buf, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @ldns_rdf_data(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @ldns_rdf_size(i32* %53)
  %55 = call i32 @memcpy(i32 %50, i32 %52, i32 %54)
  %56 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @buf, align 4
  %59 = call i32* @ldns_rdf_new_frm_data(i64 %56, i32 %57, i32 %58)
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* @buf, align 4
  %61 = call i32 @LDNS_FREE(i32 %60)
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %3, align 8
  br label %63

63:                                               ; preds = %42, %41, %21
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i32 @ldns_rdf_size(i32*) #1

declare dso_local i64 @ldns_dname_last_label_is_root_label(i32*) #1

declare dso_local i32 @LDNS_XMALLOC(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ldns_rdf_data(i32*) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i64, i32, i32) #1

declare dso_local i32 @LDNS_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
