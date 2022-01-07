; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_last_label_is_root_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_last_label_is_root_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldns_dname_last_label_is_root_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_dname_last_label_is_root_label(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @ldns_rdf_size(i32* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8
  %12 = call i64* @ldns_rdf_data(i32* %11)
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, 1
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %3, align 8
  br label %5

21:                                               ; preds = %5
  %22 = load i64, i64* %3, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @ldns_rdf_size(i32* %23)
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %31, 0
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i1 [ false, %21 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i64* @ldns_rdf_data(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
