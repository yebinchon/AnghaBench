; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_read_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_read_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macros = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macros*)* @read_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_pop(%struct.macros* %0) #0 {
  %2 = alloca %struct.macros*, align 8
  %3 = alloca i32, align 4
  store %struct.macros* %0, %struct.macros** %2, align 8
  %4 = load %struct.macros*, %struct.macros** %2, align 8
  %5 = getelementptr inbounds %struct.macros, %struct.macros* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @el_free(i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.macros*, %struct.macros** %2, align 8
  %13 = getelementptr inbounds %struct.macros, %struct.macros* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.macros*, %struct.macros** %2, align 8
  %18 = getelementptr inbounds %struct.macros, %struct.macros* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.macros*, %struct.macros** %2, align 8
  %26 = getelementptr inbounds %struct.macros, %struct.macros* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load %struct.macros*, %struct.macros** %2, align 8
  %36 = getelementptr inbounds %struct.macros, %struct.macros* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.macros*, %struct.macros** %2, align 8
  %40 = getelementptr inbounds %struct.macros, %struct.macros* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  ret void
}

declare dso_local i32 @el_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
