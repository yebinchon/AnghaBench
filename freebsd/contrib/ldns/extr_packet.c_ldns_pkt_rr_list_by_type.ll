; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr_list_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr_list_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_pkt_rr_list_by_type(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %53

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @ldns_pkt_get_section_clone(i32* %15, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = call i32* (...) @ldns_rr_list_new()
  store i32* %18, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %39, %14
  %20 = load i64, i64* %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ldns_rr_list_rr_count(i32* %21)
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @ldns_rr_list_rr(i32* %26, i64 %27)
  %29 = call i64 @ldns_rr_get_type(i32 %28)
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @ldns_rr_list_rr(i32* %33, i64 %34)
  %36 = call i32 @ldns_rr_clone(i32 %35)
  %37 = call i32 @ldns_rr_list_push_rr(i32* %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ldns_rr_list_deep_free(i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @ldns_rr_list_rr_count(i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ldns_rr_list_free(i32* %49)
  store i32* null, i32** %4, align 8
  br label %53

51:                                               ; preds = %42
  %52 = load i32*, i32** %9, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %51, %48, %13
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32* @ldns_pkt_get_section_clone(i32*, i32) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
