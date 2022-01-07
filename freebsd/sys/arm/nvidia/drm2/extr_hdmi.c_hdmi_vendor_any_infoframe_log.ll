; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_vendor_any_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_vendor_any_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_vendor_any_infoframe = type { %struct.hdmi_vendor_infoframe }
%struct.hdmi_vendor_infoframe = type { i64, i64, i64 }
%struct.hdmi_any_infoframe = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HDMI_IEEE_OUI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"    not a HDMI vendor infoframe\0A\00", align 1
@HDMI_3D_STRUCTURE_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"    empty frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"    HDMI VIC: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"    3D structure: %s\0A\00", align 1
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"    3D extension data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.hdmi_vendor_any_infoframe*)* @hdmi_vendor_any_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_vendor_any_infoframe_log(%union.hdmi_vendor_any_infoframe* %0) #0 {
  %2 = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %3 = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %union.hdmi_vendor_any_infoframe* %0, %union.hdmi_vendor_any_infoframe** %2, align 8
  %4 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %2, align 8
  %5 = bitcast %union.hdmi_vendor_any_infoframe* %4 to %struct.hdmi_vendor_infoframe*
  store %struct.hdmi_vendor_infoframe* %5, %struct.hdmi_vendor_infoframe** %3, align 8
  %6 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %2, align 8
  %7 = bitcast %union.hdmi_vendor_any_infoframe* %6 to %struct.hdmi_any_infoframe*
  %8 = call i32 @hdmi_infoframe_log_header(%struct.hdmi_any_infoframe* %7)
  %9 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %2, align 8
  %10 = bitcast %union.hdmi_vendor_any_infoframe* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HDMI_IEEE_OUI, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %19 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %24 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HDMI_3D_STRUCTURE_INVALID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

30:                                               ; preds = %22, %17
  %31 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %32 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %37 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %42 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HDMI_3D_STRUCTURE_INVALID, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %48 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @hdmi_3d_structure_get_name(i64 %49)
  %51 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %53 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %3, align 8
  %59 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %57, %46
  br label %63

63:                                               ; preds = %15, %28, %62, %40
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(%struct.hdmi_any_infoframe*) #1

declare dso_local i32 @hdmi_log(i8*, ...) #1

declare dso_local i64 @hdmi_3d_structure_get_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
