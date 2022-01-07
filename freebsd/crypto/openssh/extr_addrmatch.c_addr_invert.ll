; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_invert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xaddr*)* @addr_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_invert(%struct.xaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xaddr*, align 8
  %4 = alloca i32, align 4
  store %struct.xaddr* %0, %struct.xaddr** %3, align 8
  %5 = load %struct.xaddr*, %struct.xaddr** %3, align 8
  %6 = icmp eq %struct.xaddr* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.xaddr*, %struct.xaddr** %3, align 8
  %10 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %44 [
    i32 129, label %12
    i32 128, label %21
  ]

12:                                               ; preds = %8
  %13 = load %struct.xaddr*, %struct.xaddr** %3, align 8
  %14 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = xor i32 %16, -1
  %18 = load %struct.xaddr*, %struct.xaddr** %3, align 8
  %19 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.xaddr*, %struct.xaddr** %3, align 8
  %27 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.xaddr*, %struct.xaddr** %3, align 8
  %35 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %22

43:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %45

44:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %12, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
