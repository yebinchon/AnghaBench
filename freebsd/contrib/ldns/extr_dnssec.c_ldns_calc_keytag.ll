; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_calc_keytag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_calc_keytag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_KEY = common dso_local global i64 0, align 8
@LDNS_MIN_BUFLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_calc_keytag(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @ldns_rr_get_type(i32* %11)
  %13 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ldns_rr_get_type(i32* %16)
  %18 = load i64, i64* @LDNS_RR_TYPE_KEY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %15, %10
  %22 = load i32, i32* @LDNS_MIN_BUFLEN, align 4
  %23 = call i32* @ldns_buffer_new(i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %40

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ldns_rr_rdata2buffer_wire(i32* %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @ldns_buffer_position(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ldns_buffer_begin(i32* %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ldns_calc_keytag_raw(i32 %34, i64 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ldns_buffer_free(i32* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %26, %20, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i32 @ldns_rr_rdata2buffer_wire(i32*, i32*) #1

declare dso_local i64 @ldns_buffer_position(i32*) #1

declare dso_local i32 @ldns_calc_keytag_raw(i32, i64) #1

declare dso_local i32 @ldns_buffer_begin(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
