; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_includes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_includes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_channels_includes(%struct.p2p_channels* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_channels*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.p2p_reg_class*, align 8
  store %struct.p2p_channels* %0, %struct.p2p_channels** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %14 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %19 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %18, i32 0, i32 1
  %20 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %20, i64 %21
  store %struct.p2p_reg_class* %22, %struct.p2p_reg_class** %10, align 8
  %23 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %24 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %51

29:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %33 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %38 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %55

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %30

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %11

54:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
