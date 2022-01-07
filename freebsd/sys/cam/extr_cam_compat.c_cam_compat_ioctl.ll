; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_compat.c_cam_compat_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_compat.c_cam_compat_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.ccb_hdr_0x17 = type { i32 }

@CAM_SG_LIST_PHYS_0x16 = common dso_local global i32 0, align 4
@CAM_DATA_SG_PADDR = common dso_local global i32 0, align 4
@CAM_DATA_PHYS_0x16 = common dso_local global i32 0, align 4
@CAM_DATA_PADDR = common dso_local global i32 0, align 4
@CAM_SCATTER_VALID_0x16 = common dso_local global i32 0, align 4
@CAM_DATA_SG = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@CAMGETPASSTHRU = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cam_compat_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4, i32* %5) #0 {
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ccb_hdr_0x17*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %128 [
    i32 130, label %16
    i32 133, label %83
    i32 129, label %92
    i32 132, label %101
    i32 128, label %110
    i32 131, label %119
  ]

16:                                               ; preds = %6
  %17 = load i64, i64* %9, align 8
  %18 = inttoptr i64 %17 to %struct.ccb_hdr_0x17*
  store %struct.ccb_hdr_0x17* %18, %struct.ccb_hdr_0x17** %14, align 8
  %19 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %20 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CAM_SG_LIST_PHYS_0x16, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i32, i32* @CAM_SG_LIST_PHYS_0x16, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %29 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @CAM_DATA_SG_PADDR, align 4
  %33 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %34 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %25, %16
  %38 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %39 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CAM_DATA_PHYS_0x16, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load i32, i32* @CAM_DATA_PHYS_0x16, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %48 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @CAM_DATA_PADDR, align 4
  %52 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %53 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %44, %37
  %57 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %58 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CAM_SCATTER_VALID_0x16, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @CAM_SCATTER_VALID_0x16, align 4
  %65 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %66 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CAM_DATA_SG, align 4
  %70 = load %struct.ccb_hdr_0x17*, %struct.ccb_hdr_0x17** %14, align 8
  %71 = getelementptr inbounds %struct.ccb_hdr_0x17, %struct.ccb_hdr_0x17* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %63, %56
  %75 = load i32, i32* @CAMIOCOMMAND, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.cdev*, %struct.cdev** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.thread*, %struct.thread** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @cam_compat_handle_0x17(%struct.cdev* %76, i32 %77, i64 %78, i32 %79, %struct.thread* %80, i32* %81)
  store i32 %82, i32* %13, align 4
  br label %130

83:                                               ; preds = %6
  %84 = load i32, i32* @CAMGETPASSTHRU, align 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.cdev*, %struct.cdev** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.thread*, %struct.thread** %11, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @cam_compat_handle_0x17(%struct.cdev* %85, i32 %86, i64 %87, i32 %88, %struct.thread* %89, i32* %90)
  store i32 %91, i32* %13, align 4
  br label %130

92:                                               ; preds = %6
  %93 = load i32, i32* @CAMIOCOMMAND, align 4
  store i32 %93, i32* %8, align 4
  %94 = load %struct.cdev*, %struct.cdev** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.thread*, %struct.thread** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @cam_compat_handle_0x17(%struct.cdev* %94, i32 %95, i64 %96, i32 %97, %struct.thread* %98, i32* %99)
  store i32 %100, i32* %13, align 4
  br label %130

101:                                              ; preds = %6
  %102 = load i32, i32* @CAMGETPASSTHRU, align 4
  store i32 %102, i32* %8, align 4
  %103 = load %struct.cdev*, %struct.cdev** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.thread*, %struct.thread** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @cam_compat_handle_0x17(%struct.cdev* %103, i32 %104, i64 %105, i32 %106, %struct.thread* %107, i32* %108)
  store i32 %109, i32* %13, align 4
  br label %130

110:                                              ; preds = %6
  %111 = load i32, i32* @CAMIOCOMMAND, align 4
  store i32 %111, i32* %8, align 4
  %112 = load %struct.cdev*, %struct.cdev** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.thread*, %struct.thread** %11, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @cam_compat_handle_0x18(%struct.cdev* %112, i32 %113, i64 %114, i32 %115, %struct.thread* %116, i32* %117)
  store i32 %118, i32* %13, align 4
  br label %130

119:                                              ; preds = %6
  %120 = load i32, i32* @CAMGETPASSTHRU, align 4
  store i32 %120, i32* %8, align 4
  %121 = load %struct.cdev*, %struct.cdev** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i64, i64* %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.thread*, %struct.thread** %11, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @cam_compat_handle_0x18(%struct.cdev* %121, i32 %122, i64 %123, i32 %124, %struct.thread* %125, i32* %126)
  store i32 %127, i32* %13, align 4
  br label %130

128:                                              ; preds = %6
  %129 = load i32, i32* @ENOTTY, align 4
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %128, %119, %110, %101, %92, %83, %74
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local i32 @cam_compat_handle_0x17(%struct.cdev*, i32, i64, i32, %struct.thread*, i32*) #1

declare dso_local i32 @cam_compat_handle_0x18(%struct.cdev*, i32, i64, i32, %struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
