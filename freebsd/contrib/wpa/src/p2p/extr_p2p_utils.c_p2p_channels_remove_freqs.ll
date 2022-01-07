; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_remove_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_remove_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, %struct.p2p_reg_class*, i32 }
%struct.wpa_freq_range_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_channels_remove_freqs(%struct.p2p_channels* %0, %struct.wpa_freq_range_list* %1) #0 {
  %3 = alloca %struct.p2p_channels*, align 8
  %4 = alloca %struct.wpa_freq_range_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.p2p_reg_class*, align 8
  %8 = alloca i32, align 4
  store %struct.p2p_channels* %0, %struct.p2p_channels** %3, align 8
  store %struct.wpa_freq_range_list* %1, %struct.wpa_freq_range_list** %4, align 8
  %9 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %10 = icmp eq %struct.wpa_freq_range_list* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %106

12:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %105, %12
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %106

19:                                               ; preds = %13
  %20 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %21 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %20, i32 0, i32 1
  %22 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %22, i64 %23
  store %struct.p2p_reg_class* %24, %struct.p2p_reg_class** %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %73, %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %28 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %33 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %36 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %35, i32 0, i32 1
  %37 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %37, i64 %38
  %40 = call i32 @p2p_channel_to_freq(i32 %34, %struct.p2p_reg_class* byval(%struct.p2p_reg_class) align 8 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %31
  %44 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @freq_range_list_includes(%struct.wpa_freq_range_list* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %50 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %54 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %53, i32 0, i32 1
  %55 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %55, i64 %56
  %58 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %59 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %58, i32 0, i32 1
  %60 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %60, i64 %62
  %64 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %65 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub i64 %66, %67
  %69 = call i32 @os_memmove(%struct.p2p_reg_class* %57, %struct.p2p_reg_class* %63, i64 %68)
  br label %73

70:                                               ; preds = %43, %31
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %70, %48
  br label %25

74:                                               ; preds = %25
  %75 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %76 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %81 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %85 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %84, i32 0, i32 1
  %86 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %86, i64 %87
  %89 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %90 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %89, i32 0, i32 1
  %91 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 1
  %94 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %91, i64 %93
  %95 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %96 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = sub i64 %97, %98
  %100 = mul i64 %99, 24
  %101 = call i32 @os_memmove(%struct.p2p_reg_class* %88, %struct.p2p_reg_class* %94, i64 %100)
  br label %105

102:                                              ; preds = %74
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %102, %79
  br label %13

106:                                              ; preds = %11, %13
  ret void
}

declare dso_local i32 @p2p_channel_to_freq(i32, %struct.p2p_reg_class* byval(%struct.p2p_reg_class) align 8) #1

declare dso_local i64 @freq_range_list_includes(%struct.wpa_freq_range_list*, i32) #1

declare dso_local i32 @os_memmove(%struct.p2p_reg_class*, %struct.p2p_reg_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
