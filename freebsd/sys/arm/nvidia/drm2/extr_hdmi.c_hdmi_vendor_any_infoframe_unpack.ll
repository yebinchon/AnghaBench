; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_vendor_any_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_vendor_any_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_vendor_any_infoframe = type { %struct.hdmi_vendor_infoframe }
%struct.hdmi_vendor_infoframe = type { i64, i32, i32, i32 }

@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.hdmi_vendor_any_infoframe*, i8*)* @hdmi_vendor_any_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_vendor_any_infoframe_unpack(%union.hdmi_vendor_any_infoframe* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %union.hdmi_vendor_any_infoframe* %0, %union.hdmi_vendor_any_infoframe** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %4, align 8
  %14 = bitcast %union.hdmi_vendor_any_infoframe* %13 to %struct.hdmi_vendor_infoframe*
  store %struct.hdmi_vendor_infoframe* %14, %struct.hdmi_vendor_infoframe** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 5
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 6
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %20, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %134

38:                                               ; preds = %30, %25
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  %47 = call i64 @hdmi_infoframe_checksum(i8* %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %134

52:                                               ; preds = %38
  %53 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 %53
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 3
  br i1 %59, label %70, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 12
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %60, %52
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %134

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 5
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %134

83:                                               ; preds = %73
  %84 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %10, align 8
  %85 = call i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %134

90:                                               ; preds = %83
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %10, align 8
  %93 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %10, align 8
  %101 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  br label %133

102:                                              ; preds = %90
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 4
  %110 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %10, align 8
  %111 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %10, align 8
  %113 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %105
  %118 = load i64, i64* %7, align 8
  %119 = icmp eq i64 %118, 6
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 4
  %125 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %10, align 8
  %126 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  br label %130

127:                                              ; preds = %117
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %134

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %105
  br label %132

132:                                              ; preds = %131, %102
  br label %133

133:                                              ; preds = %132, %96
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %127, %88, %80, %70, %49, %35
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i64) #1

declare dso_local i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
