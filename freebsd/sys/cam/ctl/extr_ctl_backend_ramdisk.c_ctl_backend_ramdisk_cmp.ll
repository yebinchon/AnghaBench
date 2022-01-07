; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ctl_be_lun = type { i32, i32, %struct.ctl_be_ramdisk_lun* }
%struct.ctl_be_ramdisk_lun = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GP_READ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SSD_KEY_MISCOMPARE = common dso_local global i32 0, align 4
@SSD_ELEM_INFO = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_backend_ramdisk_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_cmp(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_be_lun*, align 8
  %5 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %14 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %13)
  store %struct.ctl_be_lun* %14, %struct.ctl_be_lun** %4, align 8
  %15 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %16 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %15, i32 0, i32 2
  %17 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %16, align 8
  store %struct.ctl_be_ramdisk_lun* %17, %struct.ctl_be_ramdisk_lun** %5, align 8
  %18 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %19 = bitcast %union.ctl_io* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %27 = call %struct.TYPE_6__* @ARGS(%union.ctl_io* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %31 = call %struct.TYPE_5__* @PRIV(%union.ctl_io* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %29, %33
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %86, %1
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %37
  %41 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %44 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %42, %45
  %47 = load i32, i32* @GP_READ, align 4
  %48 = call i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun* %41, i32 %46, i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @UINT_MAX, align 4
  %51 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %52 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %49, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %59 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = load i32*, i32** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %6, align 8
  %65 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %66 = bitcast %union.ctl_io* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %73 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cmp(i32 %70, i32* %71, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %81 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %40
  br label %91

85:                                               ; preds = %40
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %37

91:                                               ; preds = %84, %37
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %96 = bitcast %union.ctl_io* %95 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %100 = bitcast %union.ctl_io* %99 to %struct.TYPE_4__*
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %98, %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %108 = call i32 @scsi_u64to8b(i32 %106, i32* %107)
  %109 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %110 = bitcast %union.ctl_io* %109 to %struct.TYPE_4__*
  %111 = load i32, i32* @SSD_KEY_MISCOMPARE, align 4
  %112 = load i32, i32* @SSD_ELEM_INFO, align 4
  %113 = bitcast [8 x i32]* %7 to i32**
  %114 = load i32, i32* @SSD_ELEM_NONE, align 4
  %115 = call i32 @ctl_set_sense(%struct.TYPE_4__* %110, i32 1, i32 %111, i32 29, i32 0, i32 %112, i32 32, i32** %113, i32 %114)
  store i32 1, i32* %2, align 4
  br label %117

116:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %94
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local %struct.TYPE_6__* @ARGS(%union.ctl_io*) #1

declare dso_local %struct.TYPE_5__* @PRIV(%union.ctl_io*) #1

declare dso_local i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun*, i32, i32) #1

declare dso_local i32 @cmp(i32, i32*, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32*) #1

declare dso_local i32 @ctl_set_sense(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
