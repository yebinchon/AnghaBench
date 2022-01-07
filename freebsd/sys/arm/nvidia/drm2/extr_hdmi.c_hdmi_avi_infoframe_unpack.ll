; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_avi_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_avi_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_avi_infoframe*, i8*)* @hdmi_avi_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_avi_infoframe_unpack(%struct.hdmi_avi_infoframe* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_avi_infoframe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %15, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %205

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @AVI, align 4
  %32 = call i32 @HDMI_INFOFRAME_SIZE(i32 %31)
  %33 = call i64 @hdmi_infoframe_checksum(i8* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %205

38:                                               ; preds = %29
  %39 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %40 = call i32 @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %205

45:                                               ; preds = %38
  %46 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 5
  %54 = and i32 %53, 3
  %55 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %56 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %45
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 15
  %67 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %68 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %45
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %85 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %95 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %75, %69
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %96
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 9
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 10
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %112 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 11
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 12
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  %121 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %122 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %102, %96
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 3
  %128 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %129 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 6
  %134 = and i32 %133, 3
  %135 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %136 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 4
  %141 = and i32 %140, 3
  %142 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %143 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 15
  %148 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %149 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 128
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  %157 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %158 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 4
  %163 = and i32 %162, 7
  %164 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %165 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %164, i32 0, i32 10
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 2
  %170 = and i32 %169, 3
  %171 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %172 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %171, i32 0, i32 11
  store i32 %170, i32* %172, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 3
  %177 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %178 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %177, i32 0, i32 12
  store i32 %176, i32* %178, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 127
  %183 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %184 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %183, i32 0, i32 13
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 6
  %189 = and i32 %188, 3
  %190 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %191 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %190, i32 0, i32 14
  store i32 %189, i32* %191, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 4
  %196 = and i32 %195, 3
  %197 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %198 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %197, i32 0, i32 15
  store i32 %196, i32* %198, align 4
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 4
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 15
  %203 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %204 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %203, i32 0, i32 16
  store i32 %202, i32* %204, align 4
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %123, %43, %35, %26
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i32) #1

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

declare dso_local i32 @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
