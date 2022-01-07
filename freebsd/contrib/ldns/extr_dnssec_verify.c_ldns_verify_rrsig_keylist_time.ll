; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_keylist_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_keylist_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_verify_rrsig_keylist_time(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = call i32* (...) @ldns_rr_list_new()
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %18, i64* %6, align 8
  br label %50

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i64 @ldns_verify_rrsig_keylist_notime(i32* %20, i32* %21, i32* %22, i32* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @LDNS_STATUS_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @ldns_rr_list_free(i32* %29)
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %6, align 8
  br label %50

32:                                               ; preds = %19
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ldns_rrsig_check_timestamps(i32* %33, i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @LDNS_STATUS_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @ldns_rr_list_free(i32* %40)
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %6, align 8
  br label %50

43:                                               ; preds = %32
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @ldns_rr_list_cat(i32* %44, i32* %45)
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @ldns_rr_list_free(i32* %47)
  %49 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %43, %39, %28, %17
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_verify_rrsig_keylist_notime(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

declare dso_local i64 @ldns_rrsig_check_timestamps(i32*, i32) #1

declare dso_local i32 @ldns_rr_list_cat(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
