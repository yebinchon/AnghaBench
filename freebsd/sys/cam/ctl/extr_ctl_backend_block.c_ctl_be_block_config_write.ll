; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_config_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_block_lun = type { i32*, i32, i32, i32, i32 }
%struct.ctl_be_lun = type { i32, i64 }
%struct.scsi_start_stop_unit = type { i32 }
%struct.ctl_lun_req = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@links = common dso_local global i32 0, align 4
@SSS_PC_MASK = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_EJECTED = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_NO_MEDIA = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_be_block_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_config_write(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_start_stop_unit*, align 8
  %7 = alloca %struct.ctl_lun_req, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %10 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %9)
  store %struct.ctl_be_lun* %10, %struct.ctl_be_lun** %4, align 8
  %11 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %12 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ctl_be_block_lun*
  store %struct.ctl_be_block_lun* %14, %struct.ctl_be_block_lun** %3, align 8
  store i32 0, i32* %5, align 4
  %15 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %16 = bitcast %union.ctl_io* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %152 [
    i32 132, label %21
    i32 131, label %21
    i32 129, label %21
    i32 128, label %21
    i32 130, label %21
    i32 133, label %40
    i32 134, label %146
  ]

21:                                               ; preds = %1, %1, %1, %1, %1
  %22 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %22, i32 0, i32 3
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %26 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %25, i32 0, i32 4
  %27 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %28 = bitcast %union.ctl_io* %27 to i32*
  %29 = load i32, i32* @links, align 4
  %30 = call i32 @STAILQ_INSERT_TAIL(i32* %26, i32* %28, i32 %29)
  %31 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %31, i32 0, i32 3
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %37, i32 0, i32 1
  %39 = call i32 @taskqueue_enqueue(i32 %36, i32* %38)
  br label %159

40:                                               ; preds = %1
  %41 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %42 = bitcast %union.ctl_io* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %45, %struct.scsi_start_stop_unit** %6, align 8
  %46 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %6, align 8
  %47 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SSS_PC_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %54 = bitcast %union.ctl_io* %53 to %struct.TYPE_3__*
  %55 = call i32 @ctl_set_success(%struct.TYPE_3__* %54)
  %56 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %57 = call i32 @ctl_config_write_done(%union.ctl_io* %56)
  br label %159

58:                                               ; preds = %40
  %59 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %6, align 8
  %60 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SSS_START, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %58
  %66 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %6, align 8
  %67 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SSS_LOEJ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %65
  %73 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %74 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %79 = call i32 @ctl_be_block_open(%struct.ctl_be_block_lun* %78, %struct.ctl_lun_req* %7)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @CTL_LUN_FLAG_EJECTED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %83 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %77
  %89 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %92 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %96 = call i32 @ctl_lun_has_media(%struct.ctl_be_lun* %95)
  br label %105

97:                                               ; preds = %77
  %98 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %99 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %100 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %104 = call i32 @ctl_lun_no_media(%struct.ctl_be_lun* %103)
  br label %105

105:                                              ; preds = %97, %88
  br label %106

106:                                              ; preds = %105, %72, %65
  %107 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %108 = call i32 @ctl_start_lun(%struct.ctl_be_lun* %107)
  br label %140

109:                                              ; preds = %58
  %110 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %111 = call i32 @ctl_stop_lun(%struct.ctl_be_lun* %110)
  %112 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %6, align 8
  %113 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SSS_LOEJ, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %109
  %119 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %120 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %121 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @CTL_LUN_FLAG_EJECTED, align 4
  %125 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %126 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %130 = call i32 @ctl_lun_ejected(%struct.ctl_be_lun* %129)
  %131 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %132 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %118
  %136 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %137 = call i32 @ctl_be_block_close(%struct.ctl_be_block_lun* %136)
  br label %138

138:                                              ; preds = %135, %118
  br label %139

139:                                              ; preds = %138, %109
  br label %140

140:                                              ; preds = %139, %106
  %141 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %142 = bitcast %union.ctl_io* %141 to %struct.TYPE_3__*
  %143 = call i32 @ctl_set_success(%struct.TYPE_3__* %142)
  %144 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %145 = call i32 @ctl_config_write_done(%union.ctl_io* %144)
  br label %159

146:                                              ; preds = %1
  %147 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %148 = bitcast %union.ctl_io* %147 to %struct.TYPE_3__*
  %149 = call i32 @ctl_set_success(%struct.TYPE_3__* %148)
  %150 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %151 = call i32 @ctl_config_write_done(%union.ctl_io* %150)
  br label %159

152:                                              ; preds = %1
  %153 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %154 = bitcast %union.ctl_io* %153 to %struct.TYPE_3__*
  %155 = call i32 @ctl_set_invalid_opcode(%struct.TYPE_3__* %154)
  %156 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %157 = call i32 @ctl_config_write_done(%union.ctl_io* %156)
  %158 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %152, %146, %140, %52, %21
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @ctl_set_success(%struct.TYPE_3__*) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_open(%struct.ctl_be_block_lun*, %struct.ctl_lun_req*) #1

declare dso_local i32 @ctl_lun_has_media(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_lun_no_media(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_start_lun(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_stop_lun(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_lun_ejected(%struct.ctl_be_lun*) #1

declare dso_local i32 @ctl_be_block_close(%struct.ctl_be_block_lun*) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
