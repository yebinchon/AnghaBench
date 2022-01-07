; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i8*, %struct.TYPE_2__*, %struct.tpc_list*, i64, %struct.scsi_ec_segment**, %struct.ctl_scsiio*, %struct.ctl_lun* }
%struct.TYPE_2__ = type { i64, i8* }
%struct.scsi_ec_segment = type { i32 }
%struct.ctl_scsiio = type { i32, i32, i32 }
%struct.ctl_lun = type { i32, i32, %struct.ctl_softc* }
%struct.ctl_softc = type { i32 }
%union.ctl_io = type { i32 }

@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@EC_WUT = common dso_local global i64 0, align 8
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@CTL_RETVAL_ERROR = common dso_local global i32 0, align 4
@SSD_KEY_COPY_ABORTED = common dso_local global i32 0, align 4
@SSD_ELEM_COMMAND = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i8* null, align 8
@EC_LIST_ID_USAGE_MASK = common dso_local global i32 0, align 4
@EC_LIST_ID_USAGE_NONE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpc_list*)* @tpc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpc_process(%struct.tpc_list* %0) #0 {
  %2 = alloca %struct.tpc_list*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.scsi_ec_segment*, align 8
  %6 = alloca %struct.ctl_scsiio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.tpc_list* %0, %struct.tpc_list** %2, align 8
  %9 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %10 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %9, i32 0, i32 15
  %11 = load %struct.ctl_lun*, %struct.ctl_lun** %10, align 8
  store %struct.ctl_lun* %11, %struct.ctl_lun** %3, align 8
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %12, i32 0, i32 2
  %14 = load %struct.ctl_softc*, %struct.ctl_softc** %13, align 8
  store %struct.ctl_softc* %14, %struct.ctl_softc** %4, align 8
  %15 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %16 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %15, i32 0, i32 14
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %16, align 8
  store %struct.ctl_scsiio* %17, %struct.ctl_scsiio** %6, align 8
  %18 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %20 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EC_WUT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %26 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %25, i32 0, i32 10
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %31 = call i32 @tpc_process_wut(%struct.tpc_list* %30)
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %34 = call i32 @tpc_process_zero_wut(%struct.tpc_list* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %196

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %46 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  br label %113

47:                                               ; preds = %40
  br label %110

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %102, %48
  %50 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %51 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %54 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %49
  %58 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %59 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %58, i32 0, i32 13
  %60 = load %struct.scsi_ec_segment**, %struct.scsi_ec_segment*** %59, align 8
  %61 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %62 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.scsi_ec_segment*, %struct.scsi_ec_segment** %60, i64 %63
  %65 = load %struct.scsi_ec_segment*, %struct.scsi_ec_segment** %64, align 8
  store %struct.scsi_ec_segment* %65, %struct.scsi_ec_segment** %5, align 8
  %66 = load %struct.scsi_ec_segment*, %struct.scsi_ec_segment** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_ec_segment, %struct.scsi_ec_segment* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %78 [
    i32 130, label %69
    i32 128, label %72
    i32 129, label %75
  ]

69:                                               ; preds = %57
  %70 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %71 = call i32 @tpc_process_b2b(%struct.tpc_list* %70)
  store i32 %71, i32* %7, align 4
  br label %90

72:                                               ; preds = %57
  %73 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %74 = call i32 @tpc_process_verify(%struct.tpc_list* %73)
  store i32 %74, i32* %7, align 4
  br label %90

75:                                               ; preds = %57
  %76 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %77 = call i32 @tpc_process_register_key(%struct.tpc_list* %76)
  store i32 %77, i32* %7, align 4
  br label %90

78:                                               ; preds = %57
  %79 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %80 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %83 = call i32 @scsi_ulto4b(i64 %81, i32* %82)
  %84 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %85 = load i32, i32* @SSD_KEY_COPY_ABORTED, align 4
  %86 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %88 = load i32, i32* @SSD_ELEM_NONE, align 4
  %89 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %84, i32 1, i32 %85, i32 38, i32 9, i32 %86, i32 16, i32* %87, i32 %88)
  br label %113

90:                                               ; preds = %75, %72, %69
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %196

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %101 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  br label %113

102:                                              ; preds = %95
  %103 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %104 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %108 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %107, i32 0, i32 12
  store i64 0, i64* %108, align 8
  br label %49

109:                                              ; preds = %49
  br label %110

110:                                              ; preds = %109, %47
  %111 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %112 = call i32 @ctl_set_success(%struct.ctl_scsiio* %111)
  br label %113

113:                                              ; preds = %110, %99, %78, %44
  %114 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %115 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %114, i32 0, i32 11
  %116 = load %struct.tpc_list*, %struct.tpc_list** %115, align 8
  %117 = load i32, i32* @M_CTL, align 4
  %118 = call i32 @free(%struct.tpc_list* %116, i32 %117)
  %119 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %120 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %119, i32 0, i32 11
  store %struct.tpc_list* null, %struct.tpc_list** %120, align 8
  %121 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %122 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %121, i32 0, i32 10
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = icmp ne %struct.TYPE_2__* %123, null
  br i1 %124, label %125, label %148

125:                                              ; preds = %113
  %126 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %127 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %126, i32 0, i32 0
  %128 = call i32 @mtx_lock(i32* %127)
  %129 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %130 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %129, i32 0, i32 10
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load i8*, i8** @time_uptime, align 8
  %138 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %139 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %138, i32 0, i32 10
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %136, %125
  %143 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %144 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %143, i32 0, i32 0
  %145 = call i32 @mtx_unlock(i32* %144)
  %146 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %147 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %146, i32 0, i32 10
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %147, align 8
  br label %148

148:                                              ; preds = %142, %113
  %149 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %150 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %149, i32 0, i32 0
  %151 = call i32 @mtx_lock(i32* %150)
  %152 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %153 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @EC_LIST_ID_USAGE_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @EC_LIST_ID_USAGE_NONE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %148
  %160 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %161 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %160, i32 0, i32 1
  %162 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %163 = load i32, i32* @links, align 4
  %164 = call i32 @TAILQ_REMOVE(i32* %161, %struct.tpc_list* %162, i32 %163)
  %165 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %166 = load i32, i32* @M_CTL, align 4
  %167 = call i32 @free(%struct.tpc_list* %165, i32 %166)
  br label %189

168:                                              ; preds = %148
  %169 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %170 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %169, i32 0, i32 5
  store i32 1, i32* %170, align 4
  %171 = load i8*, i8** @time_uptime, align 8
  %172 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %173 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %172, i32 0, i32 9
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %175 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %178 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %177, i32 0, i32 8
  store i32 %176, i32* %178, align 8
  %179 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %180 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %183 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %185 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %188 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %168, %159
  %190 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %191 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %190, i32 0, i32 0
  %192 = call i32 @mtx_unlock(i32* %191)
  %193 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %194 = bitcast %struct.ctl_scsiio* %193 to %union.ctl_io*
  %195 = call i32 @ctl_done(%union.ctl_io* %194)
  br label %196

196:                                              ; preds = %189, %94, %39
  ret void
}

declare dso_local i32 @tpc_process_wut(%struct.tpc_list*) #1

declare dso_local i32 @tpc_process_zero_wut(%struct.tpc_list*) #1

declare dso_local i32 @tpc_process_b2b(%struct.tpc_list*) #1

declare dso_local i32 @tpc_process_verify(%struct.tpc_list*) #1

declare dso_local i32 @tpc_process_register_key(%struct.tpc_list*) #1

declare dso_local i32 @scsi_ulto4b(i64, i32*) #1

declare dso_local i32 @ctl_set_sense(%struct.ctl_scsiio*, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @free(%struct.tpc_list*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tpc_list*, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
