; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_to_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_TIME_to_tm(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = call i32 @time(i32* %6)
  %11 = load %struct.tm*, %struct.tm** %5, align 8
  %12 = call i32 @memset(%struct.tm* %11, i32 0, i32 4)
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = call i32* @OPENSSL_gmtime(i32* %6, %struct.tm* %13)
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %22

17:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.tm*, %struct.tm** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @asn1_time_to_tm(%struct.tm* %19, i32* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %17, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32* @OPENSSL_gmtime(i32*, %struct.tm*) #1

declare dso_local i32 @asn1_time_to_tm(%struct.tm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
