; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_NO_DATA = common dso_local global i64 0, align 8
@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_verify_rrsig_time(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @LDNS_STATUS_NO_DATA, align 8
  store i64 %17, i64* %5, align 8
  br label %62

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @ldns_rr_list_clone(i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %22 = call i32* @ldns_buffer_new(i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %24 = call i32* @ldns_buffer_new(i32 %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @ldns_prepare_for_verify(i32* %25, i32* %26, i32* %27, i32* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @LDNS_STATUS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @ldns_rr_list_deep_free(i32* %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @ldns_buffer_free(i32* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @ldns_buffer_free(i32* %38)
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %5, align 8
  br label %62

41:                                               ; preds = %18
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @ldns_verify_test_sig_key(i32* %42, i32* %43, i32* %44, i32* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @ldns_rr_list_deep_free(i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @ldns_buffer_free(i32* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @ldns_buffer_free(i32* %51)
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @LDNS_STATUS_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @ldns_rrsig_check_timestamps(i32* %57, i32 %58)
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %56, %41
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %33, %16
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i32* @ldns_rr_list_clone(i32*) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_prepare_for_verify(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i64 @ldns_verify_test_sig_key(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ldns_rrsig_check_timestamps(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
