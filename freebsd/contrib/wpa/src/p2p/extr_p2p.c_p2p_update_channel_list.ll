; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_update_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_update_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.p2p_channels = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Update channel list\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cli_channels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_update_channel_list(%struct.p2p_data* %0, %struct.p2p_channels* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca %struct.p2p_channels*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %5, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %6, align 8
  %7 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %8 = call i32 @p2p_dbg(%struct.p2p_data* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %14 = call i32 @os_memcpy(i32* %12, %struct.p2p_channels* %13, i32 4)
  %15 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %16 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @p2p_channels_dump(%struct.p2p_data* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  %21 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %26 = call i32 @os_memcpy(i32* %24, %struct.p2p_channels* %25, i32 4)
  %27 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %28 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @p2p_channels_dump(%struct.p2p_data* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @os_memcpy(i32*, %struct.p2p_channels*, i32) #1

declare dso_local i32 @p2p_channels_dump(%struct.p2p_data*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
