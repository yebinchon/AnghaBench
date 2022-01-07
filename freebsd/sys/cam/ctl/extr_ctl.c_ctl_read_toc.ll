; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_toc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.scsi_read_toc_hdr = type { i32, i32, i32 }
%struct.scsi_read_toc_type01_descr = type { i32, i32, i32 }
%struct.scsi_read_toc = type { i32, i32, i32 }
%union.ctl_io = type { i32 }

@CD_MSF = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_read_toc(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %struct.scsi_read_toc_hdr*, align 8
  %5 = alloca %struct.scsi_read_toc_type01_descr*, align 8
  %6 = alloca %struct.scsi_read_toc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %12 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %11)
  store %struct.ctl_lun* %12, %struct.ctl_lun** %3, align 8
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %14 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.scsi_read_toc*
  store %struct.scsi_read_toc* %16, %struct.scsi_read_toc** %6, align 8
  %17 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CD_MSF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.scsi_read_toc*, %struct.scsi_read_toc** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_read_toc, %struct.scsi_read_toc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @scsi_2btoul(i32 %29)
  store i32 %30, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 24
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %1
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 12
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @M_CTL, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @malloc(i32 %44, i32 %45, i32 %48)
  %50 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %51 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %53 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %55 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  %59 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %60 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %62 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %65 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %67 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.scsi_read_toc_hdr*
  store %struct.scsi_read_toc_hdr* %69, %struct.scsi_read_toc_hdr** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %132

72:                                               ; preds = %43
  %73 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @scsi_ulto2b(i32 18, i32 %75)
  %77 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %81, i64 1
  %83 = bitcast %struct.scsi_read_toc_hdr* %82 to %struct.scsi_read_toc_type01_descr*
  store %struct.scsi_read_toc_type01_descr* %83, %struct.scsi_read_toc_type01_descr** %5, align 8
  %84 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %85 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %84, i32 0, i32 0
  store i32 20, i32* %85, align 4
  %86 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %87 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ctl_ultomsf(i64 0, i32 %93)
  br label %100

95:                                               ; preds = %72
  %96 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %97 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @scsi_ulto4b(i64 0, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %102 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %101, i32 1
  store %struct.scsi_read_toc_type01_descr* %102, %struct.scsi_read_toc_type01_descr** %5, align 8
  %103 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %103, i32 0, i32 0
  store i32 20, i32* %104, align 4
  %105 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %106 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %105, i32 0, i32 1
  store i32 170, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %100
  %110 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %111 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  %116 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %117 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ctl_ultomsf(i64 %115, i32 %118)
  br label %131

120:                                              ; preds = %100
  %121 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %122 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  %127 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %128 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @scsi_ulto4b(i64 %126, i32 %129)
  br label %131

131:                                              ; preds = %120, %109
  br label %161

132:                                              ; preds = %43
  %133 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %134 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @scsi_ulto2b(i32 10, i32 %135)
  %137 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %138 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  %139 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %140 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  %141 = load %struct.scsi_read_toc_hdr*, %struct.scsi_read_toc_hdr** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_read_toc_hdr, %struct.scsi_read_toc_hdr* %141, i64 1
  %143 = bitcast %struct.scsi_read_toc_hdr* %142 to %struct.scsi_read_toc_type01_descr*
  store %struct.scsi_read_toc_type01_descr* %143, %struct.scsi_read_toc_type01_descr** %5, align 8
  %144 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %145 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %144, i32 0, i32 0
  store i32 20, i32* %145, align 4
  %146 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %132
  %151 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %152 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ctl_ultomsf(i64 0, i32 %153)
  br label %160

155:                                              ; preds = %132
  %156 = load %struct.scsi_read_toc_type01_descr*, %struct.scsi_read_toc_type01_descr** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_read_toc_type01_descr, %struct.scsi_read_toc_type01_descr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @scsi_ulto4b(i64 0, i32 %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %131
  %162 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %163 = call i32 @ctl_set_success(%struct.ctl_scsiio* %162)
  %164 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %165 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %166 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @ctl_config_move_done, align 4
  %171 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %172 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %174 = bitcast %struct.ctl_scsiio* %173 to %union.ctl_io*
  %175 = call i32 @ctl_datamove(%union.ctl_io* %174)
  %176 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %176
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @ctl_ultomsf(i64, i32) #1

declare dso_local i32 @scsi_ulto4b(i64, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
