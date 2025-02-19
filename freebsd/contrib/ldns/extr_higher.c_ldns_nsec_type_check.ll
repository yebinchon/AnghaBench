; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_nsec_type_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_nsec_type_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_nsec_type_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @ldns_rr_get_type(i32* %6)
  switch i32 %7, label %28 [
    i32 129, label %8
    i32 128, label %18
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ldns_rr_rd_count(i32* %9)
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %29

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ldns_rr_rdf(i32* %14, i32 1)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ldns_nsec_bitmap_covers_type(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ldns_rr_rd_count(i32* %19)
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ldns_rr_rdf(i32* %24, i32 5)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ldns_nsec_bitmap_covers_type(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23, %22, %13, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rr_rd_count(i32*) #1

declare dso_local i32 @ldns_nsec_bitmap_covers_type(i32, i32) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
