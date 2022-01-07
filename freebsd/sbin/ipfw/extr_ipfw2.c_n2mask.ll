; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_n2mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_n2mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@n2mask.minimask = internal global [9 x i32] [i32 0, i32 128, i32 192, i32 224, i32 240, i32 248, i32 252, i32 254, i32 255], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @n2mask(%struct.in6_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %7 = call i32 @memset(%struct.in6_addr* %6, i32 0, i32 4)
  %8 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %9 = bitcast %struct.in6_addr* %8 to i32*
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32 255, i32* %17, align 4
  br label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* @n2mask.minimask, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 8
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
