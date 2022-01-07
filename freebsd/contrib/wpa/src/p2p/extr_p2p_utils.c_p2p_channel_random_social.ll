; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channel_random_social.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channel_random_social.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i32 }
%struct.wpa_freq_range_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_channel_random_social(%struct.p2p_channels* %0, i32* %1, i32* %2, %struct.wpa_freq_range_list* %3, %struct.wpa_freq_range_list* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p2p_channels*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpa_freq_range_list*, align 8
  %11 = alloca %struct.wpa_freq_range_list*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.p2p_channels* %0, %struct.p2p_channels** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.wpa_freq_range_list* %3, %struct.wpa_freq_range_list** %10, align 8
  store %struct.wpa_freq_range_list* %4, %struct.wpa_freq_range_list** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %15 = call i64 @p2p_channels_includes(%struct.p2p_channels* %14, i32 81, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %5
  %18 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %10, align 8
  %19 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %18, i32 2412)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %11, align 8
  %23 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %22, i32 2412)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21, %5
  %26 = load i32, i32* %13, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %28
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %21, %17
  %31 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %32 = call i64 @p2p_channels_includes(%struct.p2p_channels* %31, i32 81, i32 6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %10, align 8
  %36 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %35, i32 2437)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %11, align 8
  %40 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %39, i32 2437)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %30
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %45
  store i32 6, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %49 = call i64 @p2p_channels_includes(%struct.p2p_channels* %48, i32 81, i32 11)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %10, align 8
  %53 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %52, i32 2462)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %11, align 8
  %57 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %56, i32 2462)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %62
  store i32 11, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %55, %51
  %65 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %66 = call i64 @p2p_channels_includes(%struct.p2p_channels* %65, i32 180, i32 2)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %71
  store i32 2, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 -1, i32* %6, align 4
  br label %90

77:                                               ; preds = %73
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @p2p_channel_pick_random(i32* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32*, i32** %8, align 8
  store i32 180, i32* %86, align 4
  br label %89

87:                                               ; preds = %77
  %88 = load i32*, i32** %8, align 8
  store i32 81, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %85
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @p2p_channels_includes(%struct.p2p_channels*, i32, i32) #1

declare dso_local i64 @freq_range_list_includes(%struct.wpa_freq_range_list*, i32) #1

declare dso_local i32 @p2p_channel_pick_random(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
