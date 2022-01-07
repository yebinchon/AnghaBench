; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_utctm.c_ASN1_UTCTIME_adj.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_utctm.c_ASN1_UTCTIME_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@V_ASN1_UTCTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ASN1_UTCTIME_adj(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca %struct.tm, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = call %struct.tm* @OPENSSL_gmtime(i32* %7, %struct.tm* %11)
  store %struct.tm* %12, %struct.tm** %10, align 8
  %13 = load %struct.tm*, %struct.tm** %10, align 8
  %14 = icmp eq %struct.tm* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %35

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19, %16
  %23 = load %struct.tm*, %struct.tm** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @OPENSSL_gmtime_adj(%struct.tm* %23, i32 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32* null, i32** %5, align 8
  br label %35

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = load i32, i32* @V_ASN1_UTCTIME, align 4
  %34 = call i32* @asn1_time_from_tm(i32* %31, %struct.tm* %32, i32 %33)
  store i32* %34, i32** %5, align 8
  br label %35

35:                                               ; preds = %30, %28, %15
  %36 = load i32*, i32** %5, align 8
  ret i32* %36
}

declare dso_local %struct.tm* @OPENSSL_gmtime(i32*, %struct.tm*) #1

declare dso_local i32 @OPENSSL_gmtime_adj(%struct.tm*, i32, i64) #1

declare dso_local i32* @asn1_time_from_tm(i32*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
