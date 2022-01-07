; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_includes_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_includes_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_channels_includes_freq(%struct.p2p_channels* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_channels*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.p2p_reg_class*, align 8
  store %struct.p2p_channels* %0, %struct.p2p_channels** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %46, %2
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %12 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %16, i32 0, i32 1
  %18 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %18, i64 %19
  store %struct.p2p_reg_class* %20, %struct.p2p_reg_class** %8, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %42, %15
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %8, align 8
  %24 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %8, align 8
  %29 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %8, align 8
  %32 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @p2p_channel_to_freq(i32 %30, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %50

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %21

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %9

49:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @p2p_channel_to_freq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
