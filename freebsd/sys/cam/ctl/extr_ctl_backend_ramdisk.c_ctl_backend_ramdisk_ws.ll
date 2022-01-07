; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_ws.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_be_lun = type { i64, i64, %struct.ctl_be_ramdisk_lun* }
%struct.ctl_be_ramdisk_lun = type { i32 }
%struct.ctl_lba_len_flags = type { i32, i64, i64 }

@SWS_LBDATA = common dso_local global i32 0, align 4
@SWS_UNMAP = common dso_local global i32 0, align 4
@SWS_ANCHOR = common dso_local global i32 0, align 4
@SWS_NDOB = common dso_local global i32 0, align 4
@GP_WRITE = common dso_local global i32 0, align 4
@P_UNMAPPED = common dso_local global i32* null, align 8
@P_ANCHORED = common dso_local global i32* null, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_backend_ramdisk_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_backend_ramdisk_ws(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %5 = alloca %struct.ctl_lba_len_flags*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %10 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %11 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %10)
  store %struct.ctl_be_lun* %11, %struct.ctl_be_lun** %3, align 8
  %12 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %12, i32 0, i32 2
  %14 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %13, align 8
  store %struct.ctl_be_ramdisk_lun* %14, %struct.ctl_be_ramdisk_lun** %4, align 8
  %15 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %16 = call %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io* %15)
  store %struct.ctl_lba_len_flags* %16, %struct.ctl_lba_len_flags** %5, align 8
  %17 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SWS_LBDATA, align 4
  %21 = load i32, i32* @SWS_UNMAP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SWS_ANCHOR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SWS_NDOB, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %32 = bitcast %union.ctl_io* %31 to %struct.TYPE_4__*
  %33 = call i32 @ctl_set_invalid_field(%struct.TYPE_4__* %32, i32 1, i32 1, i32 1, i32 0, i32 0)
  %34 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %35 = call i32 @ctl_config_write_done(%union.ctl_io* %34)
  br label %157

36:                                               ; preds = %1
  %37 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %38 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SWS_UNMAP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %45 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %46 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %49 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %52 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SWS_ANCHOR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ctl_backend_ramdisk_delete(%struct.ctl_be_lun* %44, i64 %47, i64 %50, i32 %57)
  %59 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_4__*
  %61 = call i32 @ctl_set_success(%struct.TYPE_4__* %60)
  %62 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %63 = call i32 @ctl_config_write_done(%union.ctl_io* %62)
  br label %157

64:                                               ; preds = %36
  %65 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %66 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %7, align 8
  %68 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %69 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %146, %64
  %72 = load i64, i64* %9, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %151

74:                                               ; preds = %71
  %75 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %4, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %78 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = ashr i64 %76, %79
  %81 = load i32, i32* @GP_WRITE, align 4
  %82 = call i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun* %75, i64 %80, i32 %81)
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** @P_UNMAPPED, align 8
  %85 = icmp eq i32* %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %74
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** @P_ANCHORED, align 8
  %89 = icmp eq i32* %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %74
  %91 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %92 = bitcast %union.ctl_io* %91 to %struct.TYPE_4__*
  %93 = call i32 @ctl_set_space_alloc_fail(%struct.TYPE_4__* %92)
  %94 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %95 = call i32 @ctl_data_submit_done(%union.ctl_io* %94)
  br label %157

96:                                               ; preds = %86
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @UINT_MAX, align 8
  %99 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %100 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = shl i64 %98, %101
  %103 = xor i64 %102, -1
  %104 = and i64 %97, %103
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %107 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = mul nsw i64 %105, %108
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  store i32* %111, i32** %6, align 8
  %112 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %113 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SWS_NDOB, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %96
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %121 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @memset(i32* %119, i32 0, i64 %122)
  br label %134

124:                                              ; preds = %96
  %125 = load i32*, i32** %6, align 8
  %126 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %127 = bitcast %union.ctl_io* %126 to %struct.TYPE_4__*
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %131 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @memcpy(i32* %125, i32 %129, i64 %132)
  br label %134

134:                                              ; preds = %124, %118
  %135 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %136 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SWS_LBDATA, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i64, i64* %7, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @scsi_ulto4b(i64 %142, i32* %143)
  br label %145

145:                                              ; preds = %141, %134
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %7, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* %9, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %9, align 8
  br label %71

151:                                              ; preds = %71
  %152 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %153 = bitcast %union.ctl_io* %152 to %struct.TYPE_4__*
  %154 = call i32 @ctl_set_success(%struct.TYPE_4__* %153)
  %155 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %156 = call i32 @ctl_config_write_done(%union.ctl_io* %155)
  br label %157

157:                                              ; preds = %151, %90, %43, %30
  ret void
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_delete(%struct.ctl_be_lun*, i64, i64, i32) #1

declare dso_local i32 @ctl_set_success(%struct.TYPE_4__*) #1

declare dso_local i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun*, i64, i32) #1

declare dso_local i32 @ctl_set_space_alloc_fail(%struct.TYPE_4__*) #1

declare dso_local i32 @ctl_data_submit_done(%union.ctl_io*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @scsi_ulto4b(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
