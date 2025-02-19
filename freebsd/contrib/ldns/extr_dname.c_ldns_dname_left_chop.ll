; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_left_chop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_left_chop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dname_left_chop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %38

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @ldns_rdf_get_type(i32* %10)
  %12 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %38

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ldns_dname_label_count(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %38

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @ldns_rdf_data(i32* %21)
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ldns_rdf_size(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @ldns_rdf_data(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = call i32* @ldns_dname_new_frm_data(i32 %29, i32* %35)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %20, %19, %14, %8
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i32* @ldns_dname_new_frm_data(i32, i32*) #1

declare dso_local i32 @ldns_rdf_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
