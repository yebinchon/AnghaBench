; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_tsearch_path.h_path_took_left.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_tsearch_path.h_path_took_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32* }

@STEPS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*)* @path_took_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_took_left(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %2, align 8
  %4 = load %struct.path*, %struct.path** %2, align 8
  %5 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.path*, %struct.path** %2, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 1
  %16 = load %struct.path*, %struct.path** %2, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STEPS_BIT, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 %20, %22
  %24 = or i32 %15, %23
  %25 = load %struct.path*, %struct.path** %2, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.path*, %struct.path** %2, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
