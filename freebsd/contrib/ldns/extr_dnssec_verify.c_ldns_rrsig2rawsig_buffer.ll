; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_rrsig2rawsig_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_rrsig2rawsig_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_CRYPTO_NO_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_ALGO_NOT_IMPL = common dso_local global i32 0, align 4
@LDNS_STATUS_CRYPTO_UNKNOWN_ALGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ldns_rrsig2rawsig_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_rrsig2rawsig_buffer(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @LDNS_STATUS_CRYPTO_NO_RRSIG, align 4
  store i32 %10, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @ldns_rr_rdf(i32* %12, i32 1)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG, align 4
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @ldns_rr_rdf(i32* %18, i32 1)
  %20 = call i32 @ldns_rdf2native_int8(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %40 [
    i32 132, label %22
    i32 131, label %22
    i32 130, label %22
    i32 142, label %38
    i32 139, label %38
    i32 133, label %38
  ]

22:                                               ; preds = %17, %17, %17
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @ldns_rr_rdf(i32* %23, i32 8)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG, align 4
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @ldns_rr_rdf(i32* %30, i32 8)
  %32 = call i32 @ldns_rdf2buffer_wire(i32* %29, i32* %31)
  %33 = load i32, i32* @LDNS_STATUS_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %28
  br label %42

38:                                               ; preds = %17, %17, %17
  %39 = load i32, i32* @LDNS_STATUS_CRYPTO_ALGO_NOT_IMPL, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %17
  %41 = load i32, i32* @LDNS_STATUS_CRYPTO_UNKNOWN_ALGO, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %35, %26, %15, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32 @ldns_rdf2native_int8(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_wire(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
