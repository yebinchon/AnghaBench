; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr_list_by_name_and_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr_list_by_name_and_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_pkt_rr_list_by_name_and_type(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %64

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32* @ldns_pkt_get_section_clone(i32* %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = call i32* (...) @ldns_rr_list_new()
  store i32* %21, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  br label %22

22:                                               ; preds = %51, %17
  %23 = load i64, i64* %13, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @ldns_rr_list_rr_count(i32* %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @ldns_rr_list_rr(i32* %29, i64 %30)
  %32 = call i64 @ldns_rr_get_type(i32 %31)
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @ldns_rr_list_rr(i32* %35, i64 %36)
  %38 = call i32 @ldns_rr_owner(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @ldns_dname_compare(i32 %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @ldns_rr_list_rr(i32* %44, i64 %45)
  %47 = call i32 @ldns_rr_clone(i32 %46)
  %48 = call i32 @ldns_rr_list_push_rr(i32* %43, i32 %47)
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %12, align 8
  br label %50

50:                                               ; preds = %42, %34, %27
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %13, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %13, align 8
  br label %22

54:                                               ; preds = %22
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ldns_rr_list_deep_free(i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @ldns_rr_list_free(i32* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32*, i32** %12, align 8
  store i32* %63, i32** %5, align 8
  br label %64

64:                                               ; preds = %62, %16
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i32* @ldns_pkt_get_section_clone(i32*, i32) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_dname_compare(i32, i32*) #1

declare dso_local i32 @ldns_rr_owner(i32) #1

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
