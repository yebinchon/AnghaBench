; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32, i32*, i32*, i32*, i32*, %struct.l2_packet_data** }
%struct.l2_packet_data = type { void (i8*, i32*, i32*, i64)*, i32, i32*, i32, i8*, i32 }

@l2_ndisuio_global = common dso_local global %struct.TYPE_2__* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"L2(NDISUIO): Not more than two simultaneous connections allowed\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"L2(NDISUIO): Temporarily setting filtering ethertype to %04x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@l2_packet_rx_event = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@l2_packet_rx_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2_packet_data* @l2_packet_init(i8* %0, i32* %1, i16 zeroext %2, void (i8*, i32*, i32*, i64)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16, align 2
  %11 = alloca void (i8*, i32*, i32*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2_packet_data*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i16 %2, i16* %10, align 2
  store void (i8*, i32*, i32*, i64)* %3, void (i8*, i32*, i32*, i64)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %6
  %18 = call i8* @os_zalloc(i32 48)
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %138

23:                                               ; preds = %17
  %24 = load i16, i16* %10, align 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i16 %24, i16* %26, align 8
  br label %27

27:                                               ; preds = %23, %6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_ERROR, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %138

35:                                               ; preds = %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = call i8* @os_zalloc(i32 48)
  %41 = bitcast i8* %40 to %struct.l2_packet_data*
  store %struct.l2_packet_data* %41, %struct.l2_packet_data** %14, align 8
  %42 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %43 = icmp eq %struct.l2_packet_data* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %138

45:                                               ; preds = %35
  %46 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load %struct.l2_packet_data**, %struct.l2_packet_data*** %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.l2_packet_data*, %struct.l2_packet_data** %49, i64 %54
  store %struct.l2_packet_data* %46, %struct.l2_packet_data** %55, align 8
  %56 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %57 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @os_strlcpy(i32 %58, i8* %59, i32 4)
  %61 = load void (i8*, i32*, i32*, i64)*, void (i8*, i32*, i32*, i64)** %11, align 8
  %62 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %63 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %62, i32 0, i32 0
  store void (i8*, i32*, i32*, i64)* %61, void (i8*, i32*, i32*, i64)** %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %66 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %69 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %45
  %73 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %74 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @os_memcpy(i32 %75, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %45
  %80 = load i16, i16* %10, align 2
  %81 = call i64 @l2_ndisuio_set_ether_type(i16 zeroext %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %85 = call i32 @os_free(%struct.l2_packet_data* %84)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %138

86:                                               ; preds = %79
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %114

91:                                               ; preds = %86
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i16, i16* %10, align 2
  %94 = zext i16 %93 to i32
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 6
  %98 = load %struct.l2_packet_data**, %struct.l2_packet_data*** %97, align 8
  %99 = getelementptr inbounds %struct.l2_packet_data*, %struct.l2_packet_data** %98, i64 0
  %100 = load %struct.l2_packet_data*, %struct.l2_packet_data** %99, align 8
  %101 = icmp ne %struct.l2_packet_data* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  %105 = load %struct.l2_packet_data**, %struct.l2_packet_data*** %104, align 8
  %106 = getelementptr inbounds %struct.l2_packet_data*, %struct.l2_packet_data** %105, i64 0
  %107 = load %struct.l2_packet_data*, %struct.l2_packet_data** %106, align 8
  %108 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %111 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  br label %112

112:                                              ; preds = %102, %91
  %113 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  store %struct.l2_packet_data* %113, %struct.l2_packet_data** %7, align 8
  br label %138

114:                                              ; preds = %86
  %115 = load i32, i32* @TRUE, align 4
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i8* @CreateEvent(i32* null, i32 %115, i32 %116, i32* null)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %120 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %122 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %127 = call i32 @os_free(%struct.l2_packet_data* %126)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  br label %138

128:                                              ; preds = %114
  %129 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %130 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @l2_packet_rx_event, align 4
  %133 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %134 = call i32 @eloop_register_event(i32* %131, i32 8, i32 %132, %struct.l2_packet_data* %133, i32* null)
  %135 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %136 = call i32 @l2_ndisuio_start_read(%struct.l2_packet_data* %135, i32 0)
  %137 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  store %struct.l2_packet_data* %137, %struct.l2_packet_data** %7, align 8
  br label %138

138:                                              ; preds = %128, %125, %112, %83, %44, %32, %22
  %139 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  ret %struct.l2_packet_data* %139
}

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @l2_ndisuio_set_ether_type(i16 zeroext) #1

declare dso_local i32 @os_free(%struct.l2_packet_data*) #1

declare dso_local i8* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @eloop_register_event(i32*, i32, i32, %struct.l2_packet_data*, i32*) #1

declare dso_local i32 @l2_ndisuio_start_read(%struct.l2_packet_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
