; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ppccap.c_OPENSSL_rdtsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ppccap.c_OPENSSL_rdtsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_ppccap_P = common dso_local global i32 0, align 4
@PPC_MFTB = common dso_local global i32 0, align 4
@PPC_MFSPR268 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_rdtsc() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OPENSSL_ppccap_P, align 4
  %3 = load i32, i32* @PPC_MFTB, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @OPENSSL_rdtsc_mftb()
  store i32 %7, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @OPENSSL_ppccap_P, align 4
  %10 = load i32, i32* @PPC_MFSPR268, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @OPENSSL_rdtsc_mfspr268()
  store i32 %14, i32* %1, align 4
  br label %16

15:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %13, %6
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @OPENSSL_rdtsc_mftb(...) #1

declare dso_local i32 @OPENSSL_rdtsc_mfspr268(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
