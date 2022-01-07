; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inet6_rthdr_space(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %21 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 23
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  store i64 0, i64* %3, align 8
  br label %22

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i64 @CMSG_SPACE(i32 %19)
  store i64 %20, i64* %3, align 8
  br label %22

21:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %21, %14, %13
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i64 @CMSG_SPACE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
