; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_clone_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_clone_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dname_clone_from(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ldns_rdf_get_type(i32* %12)
  %14 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @ldns_dname_label_count(i32* %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11, %2
  store i32* null, i32** %3, align 8
  br label %52

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i64* @ldns_rdf_data(i32* %23)
  store i64* %24, i64** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ldns_rdf_size(i32* %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %42, %22
  %28 = load i64, i64* %5, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %35
  store i64* %37, i64** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32* null, i32** %3, align 8
  br label %52

42:                                               ; preds = %30
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %5, align 8
  br label %27

48:                                               ; preds = %27
  %49 = load i64, i64* %8, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = call i32* @ldns_dname_new_frm_data(i64 %49, i64* %50)
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %48, %41, %21
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i64* @ldns_rdf_data(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i32* @ldns_dname_new_frm_data(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
