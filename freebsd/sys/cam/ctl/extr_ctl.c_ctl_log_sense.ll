; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_log_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_log_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ctl_page_index* }
%struct.ctl_page_index = type { i32, i32, i32, i32, i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32)* }
%struct.scsi_log_sense = type { i32, i32, i32 }
%struct.scsi_log_header = type { i32, i32, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ctl_log_sense\0A\00", align 1
@SLS_PAGE_CTRL_MASK = common dso_local global i32 0, align 4
@SLS_PAGE_CODE = common dso_local global i32 0, align 4
@CTL_NUM_LOG_PAGES = common dso_local global i32 0, align 4
@SL_PAGE_CODE = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SLS_LOGICAL_BLOCK_PROVISIONING = common dso_local global i32 0, align 4
@SL_DS = common dso_local global i32 0, align 4
@SL_SPF = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_log_sense(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ctl_page_index*, align 8
  %12 = alloca %struct.scsi_log_sense*, align 8
  %13 = alloca %struct.scsi_log_header*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %14 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %15 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %14)
  store %struct.ctl_lun* %15, %struct.ctl_lun** %4, align 8
  %16 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_log_sense*
  store %struct.scsi_log_sense* %20, %struct.scsi_log_sense** %12, align 8
  %21 = load %struct.scsi_log_sense*, %struct.scsi_log_sense** %12, align 8
  %22 = getelementptr inbounds %struct.scsi_log_sense, %struct.scsi_log_sense* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SLS_PAGE_CTRL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 6
  store i32 %26, i32* %6, align 4
  %27 = load %struct.scsi_log_sense*, %struct.scsi_log_sense** %12, align 8
  %28 = getelementptr inbounds %struct.scsi_log_sense, %struct.scsi_log_sense* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SLS_PAGE_CODE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.scsi_log_sense*, %struct.scsi_log_sense** %12, align 8
  %33 = getelementptr inbounds %struct.scsi_log_sense, %struct.scsi_log_sense* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.scsi_log_sense*, %struct.scsi_log_sense** %12, align 8
  %36 = getelementptr inbounds %struct.scsi_log_sense, %struct.scsi_log_sense* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @scsi_2btoul(i32 %37)
  store i32 %38, i32* %9, align 4
  store %struct.ctl_page_index* null, %struct.ctl_page_index** %11, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %67, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CTL_NUM_LOG_PAGES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.ctl_page_index*, %struct.ctl_page_index** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %47, i64 %49
  store %struct.ctl_page_index* %50, %struct.ctl_page_index** %11, align 8
  %51 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %52 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SL_PAGE_CODE, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %67

59:                                               ; preds = %43
  %60 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %61 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %67

66:                                               ; preds = %59
  br label %70

67:                                               ; preds = %65, %58
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %39

70:                                               ; preds = %66, %39
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @CTL_NUM_LOG_PAGES, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %76 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %75, i32 1, i32 1, i32 2, i32 0, i32 0)
  %77 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %78 = bitcast %struct.ctl_scsiio* %77 to %union.ctl_io*
  %79 = call i32 @ctl_done(%union.ctl_io* %78)
  %80 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %80, i32* %2, align 4
  br label %191

81:                                               ; preds = %70
  %82 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %83 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add i64 12, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @M_CTL, align 4
  %90 = load i32, i32* @M_WAITOK, align 4
  %91 = load i32, i32* @M_ZERO, align 4
  %92 = or i32 %90, %91
  %93 = call i64 @malloc(i32 %88, i32 %89, i32 %92)
  %94 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %95 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %97 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %99 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @min(i32 %100, i32 %101)
  %103 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %104 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %106 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %109 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %111 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.scsi_log_header*
  store %struct.scsi_log_header* %113, %struct.scsi_log_header** %13, align 8
  %114 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %115 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.scsi_log_header*, %struct.scsi_log_header** %13, align 8
  %118 = getelementptr inbounds %struct.scsi_log_header, %struct.scsi_log_header* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %120 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SLS_LOGICAL_BLOCK_PROVISIONING, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %81
  %125 = load i32, i32* @SL_DS, align 4
  %126 = load %struct.scsi_log_header*, %struct.scsi_log_header** %13, align 8
  %127 = getelementptr inbounds %struct.scsi_log_header, %struct.scsi_log_header* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %81
  %131 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %132 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load i32, i32* @SL_SPF, align 4
  %137 = load %struct.scsi_log_header*, %struct.scsi_log_header** %13, align 8
  %138 = getelementptr inbounds %struct.scsi_log_header, %struct.scsi_log_header* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %142 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.scsi_log_header*, %struct.scsi_log_header** %13, align 8
  %145 = getelementptr inbounds %struct.scsi_log_header, %struct.scsi_log_header* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %135, %130
  %147 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %148 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.scsi_log_header*, %struct.scsi_log_header** %13, align 8
  %151 = getelementptr inbounds %struct.scsi_log_header, %struct.scsi_log_header* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @scsi_ulto2b(i32 %149, i32 %152)
  %154 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %155 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %154, i32 0, i32 4
  %156 = load i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32)*, i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32)** %155, align 8
  %157 = icmp ne i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32)* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %146
  %159 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %160 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %159, i32 0, i32 4
  %161 = load i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32)*, i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32)** %160, align 8
  %162 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %163 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 %161(%struct.ctl_scsiio* %162, %struct.ctl_page_index* %163, i32 %164)
  br label %166

166:                                              ; preds = %158, %146
  %167 = load %struct.scsi_log_header*, %struct.scsi_log_header** %13, align 8
  %168 = getelementptr inbounds %struct.scsi_log_header, %struct.scsi_log_header* %167, i64 1
  %169 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %170 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ctl_page_index*, %struct.ctl_page_index** %11, align 8
  %173 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @memcpy(%struct.scsi_log_header* %168, i32 %171, i32 %174)
  %176 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %177 = call i32 @ctl_set_success(%struct.ctl_scsiio* %176)
  %178 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %179 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %180 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %178
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @ctl_config_move_done, align 4
  %185 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %186 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %188 = bitcast %struct.ctl_scsiio* %187 to %union.ctl_io*
  %189 = call i32 @ctl_datamove(%union.ctl_io* %188)
  %190 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %166, %74
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @memcpy(%struct.scsi_log_header*, i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
