; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_vendor_infoframe_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_vendor_infoframe_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_vendor_infoframe = type { i64, i32, i32, i32, i32, i32 }

@HDMI_3D_STRUCTURE_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_vendor_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.hdmi_vendor_infoframe* %0, %struct.hdmi_vendor_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %13 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %18 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HDMI_3D_STRUCTURE_INVALID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %133

25:                                               ; preds = %16, %3
  %26 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %27 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %32 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HDMI_3D_STRUCTURE_INVALID, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %133

39:                                               ; preds = %30, %25
  %40 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %41 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %47 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %46, i32 0, i32 2
  store i32 6, i32* %47, align 4
  br label %51

48:                                               ; preds = %39
  %49 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %50 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %49, i32 0, i32 2
  store i32 5, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %53 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %54 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %52, %56
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i64, i64* @ENOSPC, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %4, align 8
  br label %133

64:                                               ; preds = %51
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @memset(i8* %65, i32 0, i64 %66)
  %68 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %69 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %74 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %79 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 3, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 12, i32* %88, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 0, i32* %90, align 4
  %91 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %92 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %64
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  store i32 32, i32* %97, align 4
  %98 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %99 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  store i32 %101, i32* %103, align 4
  br label %128

104:                                              ; preds = %64
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  store i32 64, i32* %106, align 4
  %107 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %108 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 15
  %111 = shl i32 %110, 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  store i32 %111, i32* %113, align 4
  %114 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %115 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %104
  %120 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %121 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 15
  %124 = shl i32 %123, 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 9
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %104
  br label %128

128:                                              ; preds = %127, %95
  %129 = load i8*, i8** %6, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @hdmi_infoframe_set_checksum(i8* %129, i64 %130)
  %132 = load i64, i64* %9, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %128, %61, %36, %22
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
