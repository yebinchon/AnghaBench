; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_parse_drm_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_parse_drm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_fb = type { i32, i32, i32, %struct.TYPE_2__, %struct.tegra_bo**, i32, i64 }
%struct.TYPE_2__ = type { i32, i32*, i64*, i32 }
%struct.tegra_bo = type { i64 }
%struct.dc_window = type { i32, i32, i32, i32, i32, i32*, i64*, i32, i8*, i8*, i32, i32 }

@NOSWAP = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R8G8B8A8 = common dso_local global i8* null, align 8
@WIN_COLOR_DEPTH_B8G8R8A8 = common dso_local global i8* null, align 8
@WIN_COLOR_DEPTH_B5G6R5 = common dso_local global i8* null, align 8
@WIN_COLOR_DEPTH_YCbCr422 = common dso_local global i8* null, align 8
@SWAP2 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_YCbCr420P = common dso_local global i8* null, align 8
@WIN_COLOR_DEPTH_YCbCr422P = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SURFACE_KIND_BL_16B2 = common dso_local global i32 0, align 4
@SURFACE_KIND_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_fb*, %struct.dc_window*)* @dc_parse_drm_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_parse_drm_format(%struct.tegra_fb* %0, %struct.dc_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_fb*, align 8
  %5 = alloca %struct.dc_window*, align 8
  %6 = alloca %struct.tegra_bo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tegra_fb* %0, %struct.tegra_fb** %4, align 8
  store %struct.dc_window* %1, %struct.dc_window** %5, align 8
  %13 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %45 [
    i32 132, label %17
    i32 131, label %21
    i32 134, label %25
    i32 133, label %29
    i32 128, label %33
    i32 130, label %37
    i32 129, label %41
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @NOSWAP, align 4
  %19 = call i8* @BYTE_SWAP(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** @WIN_COLOR_DEPTH_R8G8B8A8, align 8
  store i8* %20, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load i32, i32* @NOSWAP, align 4
  %23 = call i8* @BYTE_SWAP(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** @WIN_COLOR_DEPTH_B8G8R8A8, align 8
  store i8* %24, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load i32, i32* @NOSWAP, align 4
  %27 = call i8* @BYTE_SWAP(i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** @WIN_COLOR_DEPTH_B5G6R5, align 8
  store i8* %28, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load i32, i32* @NOSWAP, align 4
  %31 = call i8* @BYTE_SWAP(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** @WIN_COLOR_DEPTH_YCbCr422, align 8
  store i8* %32, i8** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* @SWAP2, align 4
  %35 = call i8* @BYTE_SWAP(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** @WIN_COLOR_DEPTH_YCbCr422, align 8
  store i8* %36, i8** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

37:                                               ; preds = %2
  %38 = load i32, i32* @NOSWAP, align 4
  %39 = call i8* @BYTE_SWAP(i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** @WIN_COLOR_DEPTH_YCbCr420P, align 8
  store i8* %40, i8** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %48

41:                                               ; preds = %2
  %42 = load i32, i32* @NOSWAP, align 4
  %43 = call i8* @BYTE_SWAP(i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** @WIN_COLOR_DEPTH_YCbCr422P, align 8
  store i8* %44, i8** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %204

48:                                               ; preds = %41, %37, %33, %29, %25, %21, %17
  %49 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %62 [
    i32 0, label %52
    i32 180, label %52
    i32 90, label %53
    i32 270, label %53
  ]

52:                                               ; preds = %48, %48
  br label %65

53:                                               ; preds = %48, %48
  %54 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %204

61:                                               ; preds = %53
  br label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %204

65:                                               ; preds = %61, %52
  %66 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %67 = icmp eq %struct.dc_window* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %204

69:                                               ; preds = %65
  %70 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @SURFACE_KIND_BL_16B2, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @SURFACE_KIND_PITCH, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %81 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %86 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 8
  %87 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %118 [
    i32 0, label %90
    i32 90, label %97
    i32 180, label %104
    i32 270, label %111
  ]

90:                                               ; preds = %78
  %91 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %92 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %94 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %96 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  br label %118

97:                                               ; preds = %78
  %98 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %99 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %101 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %103 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %118

104:                                              ; preds = %78
  %105 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %106 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %108 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %110 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %118

111:                                              ; preds = %78
  %112 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %113 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %115 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %117 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %78, %111, %104, %97, %90
  %119 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %120 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %123 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %127 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %130 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = xor i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %135 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %134, i32 0, i32 9
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %138 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %140 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %144 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %147 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %150 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %152 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @drm_format_num_planes(i32 %154)
  store i32 %155, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %156

156:                                              ; preds = %200, %118
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %203

160:                                              ; preds = %156
  %161 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %162 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %161, i32 0, i32 4
  %163 = load %struct.tegra_bo**, %struct.tegra_bo*** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.tegra_bo*, %struct.tegra_bo** %163, i64 %165
  %167 = load %struct.tegra_bo*, %struct.tegra_bo** %166, align 8
  store %struct.tegra_bo* %167, %struct.tegra_bo** %6, align 8
  %168 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %169 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %172 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %170, %178
  %180 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %181 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %180, i32 0, i32 6
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  store i64 %179, i64* %185, align 8
  %186 = load %struct.tegra_fb*, %struct.tegra_fb** %4, align 8
  %187 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.dc_window*, %struct.dc_window** %5, align 8
  %195 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %193, i32* %199, align 4
  br label %200

200:                                              ; preds = %160
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %156

203:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %68, %62, %58, %45
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i8* @BYTE_SWAP(i32) #1

declare dso_local i32 @drm_format_num_planes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
