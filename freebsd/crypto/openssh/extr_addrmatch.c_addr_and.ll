; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_and.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xaddr*, %struct.xaddr*, %struct.xaddr*)* @addr_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_and(%struct.xaddr* %0, %struct.xaddr* %1, %struct.xaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xaddr*, align 8
  %6 = alloca %struct.xaddr*, align 8
  %7 = alloca %struct.xaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.xaddr* %0, %struct.xaddr** %5, align 8
  store %struct.xaddr* %1, %struct.xaddr** %6, align 8
  store %struct.xaddr* %2, %struct.xaddr** %7, align 8
  %9 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %10 = icmp eq %struct.xaddr* %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %13 = icmp eq %struct.xaddr* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %16 = icmp eq %struct.xaddr* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %19 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %22 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %14, %11, %3
  store i32 -1, i32* %4, align 4
  br label %73

26:                                               ; preds = %17
  %27 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %28 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %29 = call i32 @memcpy(%struct.xaddr* %27, %struct.xaddr* %28, i32 24)
  %30 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %31 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %72 [
    i32 129, label %33
    i32 128, label %43
  ]

33:                                               ; preds = %26
  %34 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %35 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %39 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %73

43:                                               ; preds = %26
  %44 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %45 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %48 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %68, %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %54 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %61 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %59
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %49

71:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %73

72:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %71, %33, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @memcpy(%struct.xaddr*, %struct.xaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
