; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_label_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_label_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dname_label_count(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %55

11:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @ldns_rdf_size(i32* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ldns_rdf_get_type(i32* %14)
  %16 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i64 0, i64* %2, align 8
  br label %55

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = call i64* @ldns_rdf_data(i32* %20)
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 1, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %55

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i64, i64* %5, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %51

38:                                               ; preds = %36
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i64* @ldns_rdf_data(i32* %44)
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %29

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %53, %27, %18, %10
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64* @ldns_rdf_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
