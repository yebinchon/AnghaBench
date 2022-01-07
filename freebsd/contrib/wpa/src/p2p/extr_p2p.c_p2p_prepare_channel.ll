; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prepare_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prepare_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_device = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Prepare channel - force_freq=%u pref_freq=%u go=%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"prepared channels\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"after go/cli filter/add\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Own preference for operation channel: Operating Class %u Channel %u%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" (forced)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@P2P_DEV_FORCE_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_prepare_channel(%struct.p2p_data* %0, %struct.p2p_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca %struct.p2p_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %7, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 (%struct.p2p_data*, i8*, i32, i32, ...) @p2p_dbg(%struct.p2p_data* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19, %5
  %23 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @p2p_prepare_channel_pref(%struct.p2p_data* %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %92

30:                                               ; preds = %22
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %33 = call i32 @p2p_prepare_channel_best(%struct.p2p_data* %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %36 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %37 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %36, i32 0, i32 2
  %38 = call i32 @p2p_channels_dump(%struct.p2p_data* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 2
  %44 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 4
  %46 = call i32 @p2p_channels_remove_freqs(i32* %43, i32* %45)
  br label %59

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %52 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %51, i32 0, i32 2
  %53 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %54 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @p2p_channels_union_inplace(i32* %52, i32* %56)
  br label %58

58:                                               ; preds = %50, %47
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %61 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 2
  %63 = call i32 @p2p_channels_dump(%struct.p2p_data* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %62)
  %64 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %65 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %69 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %75 = call i32 (%struct.p2p_data*, i8*, i32, i32, ...) @p2p_dbg(%struct.p2p_data* %64, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %70, i8* %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %59
  %79 = load i32, i32* @P2P_DEV_FORCE_FREQ, align 4
  %80 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %81 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %91

84:                                               ; preds = %59
  %85 = load i32, i32* @P2P_DEV_FORCE_FREQ, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %88 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %78
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %29
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32, i32, ...) #1

declare dso_local i64 @p2p_prepare_channel_pref(%struct.p2p_data*, i32, i32, i32) #1

declare dso_local i32 @p2p_prepare_channel_best(%struct.p2p_data*) #1

declare dso_local i32 @p2p_channels_dump(%struct.p2p_data*, i8*, i32*) #1

declare dso_local i32 @p2p_channels_remove_freqs(i32*, i32*) #1

declare dso_local i32 @p2p_channels_union_inplace(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
