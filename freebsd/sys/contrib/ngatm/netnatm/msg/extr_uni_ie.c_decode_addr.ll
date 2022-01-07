; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_decode_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_decode_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_addr = type { i32, i32, i32, i32* }
%struct.uni_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_addr*, i32, %struct.uni_msg*, i32)* @decode_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_addr(%struct.uni_addr* %0, i32 %1, %struct.uni_msg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uni_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.uni_addr* %0, %struct.uni_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uni_msg* %2, %struct.uni_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 15
  %12 = load %struct.uni_addr*, %struct.uni_addr** %6, align 8
  %13 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 7
  %17 = load %struct.uni_addr*, %struct.uni_addr** %6, align 8
  %18 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.uni_addr*, %struct.uni_addr** %6, align 8
  %20 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %41 [
    i32 128, label %22
    i32 129, label %36
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 15
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  store i32 -1, i32* %5, align 4
  br label %59

29:                                               ; preds = %25
  %30 = load %struct.uni_addr*, %struct.uni_addr** %6, align 8
  %31 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 0, i32* %35, align 4
  br label %42

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 20
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %59

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %59

42:                                               ; preds = %40, %29
  %43 = load %struct.uni_addr*, %struct.uni_addr** %6, align 8
  %44 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %47 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memcpy(i32* %45, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.uni_addr*, %struct.uni_addr** %6, align 8
  %53 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %56 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %42, %41, %39, %28
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
