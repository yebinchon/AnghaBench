; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, i32, %struct.TYPE_2__, i64, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_format = type { i32 }
%struct.scsi_format_header_long = type { i32 }
%struct.scsi_format_header_short = type { i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ctl_format\0A\00", align 1
@SF_FMTDATA = common dso_local global i32 0, align 4
@SF_LONGLIST = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_format(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.scsi_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_format_header_long*, align 8
  %8 = alloca %struct.scsi_format_header_short*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %9 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %11 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.scsi_format*
  store %struct.scsi_format* %13, %struct.scsi_format** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.scsi_format*, %struct.scsi_format** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_format, %struct.scsi_format* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SF_FMTDATA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.scsi_format*, %struct.scsi_format** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_format, %struct.scsi_format* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SF_LONGLIST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 4, i32* %5, align 4
  br label %29

28:                                               ; preds = %20
  store i32 4, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @M_CTL, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = call i64 @malloc(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %47 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %50 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %55 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %57 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %59 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %60 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @ctl_config_move_done, align 4
  %65 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %66 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %68 = bitcast %struct.ctl_scsiio* %67 to %union.ctl_io*
  %69 = call i32 @ctl_datamove(%union.ctl_io* %68)
  %70 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %70, i32* %2, align 4
  br label %145

71:                                               ; preds = %38, %30
  store i32 0, i32* %6, align 4
  %72 = load %struct.scsi_format*, %struct.scsi_format** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_format, %struct.scsi_format* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SF_FMTDATA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %71
  %79 = load %struct.scsi_format*, %struct.scsi_format** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_format, %struct.scsi_format* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SF_LONGLIST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %87 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.scsi_format_header_long*
  store %struct.scsi_format_header_long* %89, %struct.scsi_format_header_long** %7, align 8
  %90 = load %struct.scsi_format_header_long*, %struct.scsi_format_header_long** %7, align 8
  %91 = getelementptr inbounds %struct.scsi_format_header_long, %struct.scsi_format_header_long* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @scsi_4btoul(i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %98 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %97, i32 1, i32 0, i32 2, i32 0, i32 0)
  br label %119

99:                                               ; preds = %85
  br label %115

100:                                              ; preds = %78
  %101 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %102 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.scsi_format_header_short*
  store %struct.scsi_format_header_short* %104, %struct.scsi_format_header_short** %8, align 8
  %105 = load %struct.scsi_format_header_short*, %struct.scsi_format_header_short** %8, align 8
  %106 = getelementptr inbounds %struct.scsi_format_header_short, %struct.scsi_format_header_short* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @scsi_2btoul(i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %113 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %112, i32 1, i32 0, i32 2, i32 0, i32 0)
  br label %119

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %71
  %117 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %118 = call i32 @ctl_set_success(%struct.ctl_scsiio* %117)
  br label %119

119:                                              ; preds = %116, %111, %96
  %120 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %121 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %119
  %128 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %129 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @M_CTL, align 4
  %132 = call i32 @free(i64 %130, i32 %131)
  %133 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %136 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %134
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %127, %119
  %141 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %142 = bitcast %struct.ctl_scsiio* %141 to %union.ctl_io*
  %143 = call i32 @ctl_done(%union.ctl_io* %142)
  %144 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %140, %41
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
