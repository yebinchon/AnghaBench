; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_generic_readchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_generic_readchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i32, i32 (%struct.serial*, i32)*)* @generic_readchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_readchar(%struct.serial* %0, i32 %1, i32 (%struct.serial*, i32)* %2) #0 {
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.serial*, i32)*, align 8
  %7 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.serial*, i32)* %2, i32 (%struct.serial*, i32)** %6, align 8
  %8 = load %struct.serial*, %struct.serial** %4, align 8
  %9 = getelementptr inbounds %struct.serial, %struct.serial* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.serial*, %struct.serial** %4, align 8
  %14 = getelementptr inbounds %struct.serial, %struct.serial* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.serial*, %struct.serial** %4, align 8
  %18 = getelementptr inbounds %struct.serial, %struct.serial* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.serial*, %struct.serial** %4, align 8
  %22 = getelementptr inbounds %struct.serial, %struct.serial* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %22, align 8
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.serial*, %struct.serial** %4, align 8
  %27 = getelementptr inbounds %struct.serial, %struct.serial* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.serial*, %struct.serial** %4, align 8
  %32 = getelementptr inbounds %struct.serial, %struct.serial* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %52

34:                                               ; preds = %25
  %35 = load i32 (%struct.serial*, i32)*, i32 (%struct.serial*, i32)** %6, align 8
  %36 = load %struct.serial*, %struct.serial** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %35(%struct.serial* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %50 [
    i32 130, label %43
    i32 129, label %43
    i32 128, label %47
  ]

43:                                               ; preds = %41, %41
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.serial*, %struct.serial** %4, align 8
  %46 = getelementptr inbounds %struct.serial, %struct.serial* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %50

47:                                               ; preds = %41
  %48 = load %struct.serial*, %struct.serial** %4, align 8
  %49 = getelementptr inbounds %struct.serial, %struct.serial* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %41, %47, %43
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %12
  %54 = load %struct.serial*, %struct.serial** %4, align 8
  %55 = call i32 @reschedule(%struct.serial* %54)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @reschedule(%struct.serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
