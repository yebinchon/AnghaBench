; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_to_generalizedtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_to_generalizedtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@V_ASN1_GENERALIZEDTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ASN1_TIME_to_generalizedtime(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tm, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ASN1_TIME_to_tm(i32* %8, %struct.tm* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %32

12:                                               ; preds = %2
  %13 = load i32**, i32*** %5, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @V_ASN1_GENERALIZEDTIME, align 4
  %21 = call i32* @asn1_time_from_tm(i32* %19, %struct.tm* %7, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32**, i32*** %5, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32**, i32*** %5, align 8
  store i32* %28, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %24, %18
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32 @ASN1_TIME_to_tm(i32*, %struct.tm*) #1

declare dso_local i32* @asn1_time_from_tm(i32*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
