; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_get_pref_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_get_pref_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.p2p_channels }
%struct.TYPE_3__ = type { i32, i32 }
%struct.p2p_channels = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_get_pref_freq(%struct.p2p_data* %0, %struct.p2p_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca %struct.p2p_channels*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.p2p_channels*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %10 = icmp ne %struct.p2p_channels* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi %struct.p2p_channels* [ %12, %11 ], [ %17, %13 ]
  store %struct.p2p_channels* %19, %struct.p2p_channels** %8, align 8
  %20 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %21 = icmp eq %struct.p2p_channels* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %74

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %32, %37
  br label %39

39:                                               ; preds = %31, %24
  %40 = phi i1 [ false, %24 ], [ %38, %31 ]
  br i1 %40, label %41, label %73

41:                                               ; preds = %39
  %42 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %53 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @p2p_channel_to_freq(i32 %51, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @p2p_channels_includes_freq(%struct.p2p_channels* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %41
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %24

73:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %67, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @p2p_channel_to_freq(i32, i32) #1

declare dso_local i64 @p2p_channels_includes_freq(%struct.p2p_channels*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
