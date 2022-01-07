; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr_list_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_rr_list_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_pkt_rr_list_by_name(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %51

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @ldns_pkt_get_section_clone(i32* %15, i32 %16)
  store i32* %17, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %44, %14
  %19 = load i64, i64* %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @ldns_rr_list_rr_count(i32* %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @ldns_rr_list_rr(i32* %24, i64 %25)
  %27 = call i32 @ldns_rr_owner(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @ldns_dname_compare(i32 %27, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32* (...) @ldns_rr_list_new()
  store i32* %35, i32** %9, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @ldns_rr_list_rr(i32* %38, i64 %39)
  %41 = call i32 @ldns_rr_clone(i32 %40)
  %42 = call i32 @ldns_rr_list_push_rr(i32* %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %23
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @ldns_rr_list_deep_free(i32* %48)
  %50 = load i32*, i32** %9, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %47, %13
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32* @ldns_pkt_get_section_clone(i32*, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_dname_compare(i32, i32*) #1

declare dso_local i32 @ldns_rr_owner(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
