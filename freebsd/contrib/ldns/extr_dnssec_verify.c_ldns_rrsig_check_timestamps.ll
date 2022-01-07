; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_rrsig_check_timestamps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_rrsig_check_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_CRYPTO_EXPIRATION_BEFORE_INCEPTION = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_SIG_NOT_INCEPTED = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_SIG_EXPIRED = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ldns_rrsig_check_timestamps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_rrsig_check_timestamps(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ldns_rr_rrsig_inception(i32* %8)
  %10 = call i64 @ldns_rdf2native_time_t(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ldns_rr_rrsig_expiration(i32* %11)
  %13 = call i64 @ldns_rdf2native_time_t(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @LDNS_STATUS_CRYPTO_EXPIRATION_BEFORE_INCEPTION, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @LDNS_STATUS_CRYPTO_SIG_NOT_INCEPTED, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LDNS_STATUS_CRYPTO_SIG_EXPIRED, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %25, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @ldns_rdf2native_time_t(i32) #1

declare dso_local i32 @ldns_rr_rrsig_inception(i32*) #1

declare dso_local i32 @ldns_rr_rrsig_expiration(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
