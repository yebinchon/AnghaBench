; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prepare_channel_pref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prepare_channel_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [56 x i8] c"Prepare channel pref - force_freq=%u pref_freq=%u go=%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported frequency %u MHz\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Frequency %u MHz (oper_class %u channel %u) not allowed for P2P\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_data*, i32, i32, i32)* @p2p_prepare_channel_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_prepare_channel_pref(%struct.p2p_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %12, align 4
  %21 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (%struct.p2p_data*, i8*, i32, ...) @p2p_dbg(%struct.p2p_data* %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @p2p_freq_to_channel(i32 %26, i32* %10, i32* %11)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 (%struct.p2p_data*, i8*, i32, ...) @p2p_dbg(%struct.p2p_data* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %5, align 4
  br label %108

33:                                               ; preds = %19
  %34 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @p2p_channels_includes(i32* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @p2p_channels_includes(i32* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45, %42
  %55 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (%struct.p2p_data*, i8*, i32, ...) @p2p_dbg(%struct.p2p_data* %55, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  store i32 -1, i32* %5, align 4
  br label %108

60:                                               ; preds = %45, %33
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %63 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %60
  %70 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %71 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %74 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %80 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %83 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %81, i32* %87, align 4
  %88 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %89 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %92 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %90, i32* %98, align 4
  br label %107

99:                                               ; preds = %60
  %100 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %101 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %100, i32 0, i32 3
  %102 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %103 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @os_memcpy(%struct.TYPE_6__* %101, i32* %105, i32 4)
  br label %107

107:                                              ; preds = %99, %69
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %54, %29
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32, ...) #1

declare dso_local i64 @p2p_freq_to_channel(i32, i32*, i32*) #1

declare dso_local i32 @p2p_channels_includes(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
