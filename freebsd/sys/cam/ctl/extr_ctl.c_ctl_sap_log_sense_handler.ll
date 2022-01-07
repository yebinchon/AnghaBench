; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_sap_log_sense_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_sap_log_sense_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }
%struct.ctl_page_index = type { i64 }
%struct.ctl_lun = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32*, i32*, %struct.bintime* }
%struct.bintime = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.stat_page = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i32 }

@SLP_SAP = common dso_local global i32 0, align 4
@SLP_LBIN = common dso_local global i8* null, align 8
@CTL_STATS_READ = common dso_local global i64 0, align 8
@CTL_STATS_WRITE = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@SLP_IT = common dso_local global i32 0, align 4
@SLP_TI = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_sap_log_sense_handler(%struct.ctl_scsiio* %0, %struct.ctl_page_index* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_page_index*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca %struct.stat_page*, align 8
  %9 = alloca %struct.bintime*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.ctl_page_index* %1, %struct.ctl_page_index** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %11 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %10)
  store %struct.ctl_lun* %11, %struct.ctl_lun** %7, align 8
  %12 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %13 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.stat_page*
  store %struct.stat_page* %15, %struct.stat_page** %8, align 8
  %16 = load i32, i32* @SLP_SAP, align 4
  %17 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %18 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @scsi_ulto2b(i32 %16, i32 %21)
  %23 = load i8*, i8** @SLP_LBIN, align 8
  %24 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %25 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i8* %23, i8** %27, align 8
  %28 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %29 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %33 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @CTL_STATS_READ, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %40 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scsi_u64to8b(i32 %38, i32 %42)
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @CTL_STATS_WRITE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %52 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @scsi_u64to8b(i32 %50, i32 %54)
  %56 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %57 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %3
  %63 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %64 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @CTL_STATS_WRITE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %71 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %69, %74
  %76 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %77 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @scsi_u64to8b(i32 %75, i32 %79)
  %81 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %82 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @CTL_STATS_READ, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %89 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %87, %92
  %94 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %95 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @scsi_u64to8b(i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %62, %3
  %100 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %101 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load %struct.bintime*, %struct.bintime** %102, align 8
  %104 = load i64, i64* @CTL_STATS_READ, align 8
  %105 = getelementptr inbounds %struct.bintime, %struct.bintime* %103, i64 %104
  store %struct.bintime* %105, %struct.bintime** %9, align 8
  %106 = load %struct.bintime*, %struct.bintime** %9, align 8
  %107 = getelementptr inbounds %struct.bintime, %struct.bintime* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = mul nsw i32 %109, 1000
  %111 = load %struct.bintime*, %struct.bintime** %9, align 8
  %112 = getelementptr inbounds %struct.bintime, %struct.bintime* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @UINT64_MAX, align 4
  %115 = sdiv i32 %114, 1000
  %116 = sdiv i32 %113, %115
  %117 = add nsw i32 %110, %116
  %118 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %119 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @scsi_u64to8b(i32 %117, i32 %121)
  %123 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %124 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load %struct.bintime*, %struct.bintime** %125, align 8
  %127 = load i64, i64* @CTL_STATS_WRITE, align 8
  %128 = getelementptr inbounds %struct.bintime, %struct.bintime* %126, i64 %127
  store %struct.bintime* %128, %struct.bintime** %9, align 8
  %129 = load %struct.bintime*, %struct.bintime** %9, align 8
  %130 = getelementptr inbounds %struct.bintime, %struct.bintime* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = mul nsw i32 %132, 1000
  %134 = load %struct.bintime*, %struct.bintime** %9, align 8
  %135 = getelementptr inbounds %struct.bintime, %struct.bintime* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @UINT64_MAX, align 4
  %138 = sdiv i32 %137, 1000
  %139 = sdiv i32 %136, %138
  %140 = add nsw i32 %133, %139
  %141 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %142 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @scsi_u64to8b(i32 %140, i32 %144)
  %146 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %147 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @scsi_u64to8b(i32 0, i32 %149)
  %151 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %152 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @scsi_u64to8b(i32 0, i32 %154)
  %156 = load i32, i32* @SLP_IT, align 4
  %157 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %158 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @scsi_ulto2b(i32 %156, i32 %161)
  %163 = load i8*, i8** @SLP_LBIN, align 8
  %164 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %165 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  store i8* %163, i8** %167, align 8
  %168 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %169 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load i32, i32* @SLP_TI, align 4
  %173 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %174 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @scsi_ulto2b(i32 %172, i32 %177)
  %179 = load i8*, i8** @SLP_LBIN, align 8
  %180 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %181 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  store i8* %179, i8** %183, align 8
  %184 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %185 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  %188 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %189 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @scsi_ulto4b(i32 3, i32 %191)
  %193 = load %struct.stat_page*, %struct.stat_page** %8, align 8
  %194 = getelementptr inbounds %struct.stat_page, %struct.stat_page* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @scsi_ulto4b(i32 1, i32 %196)
  ret i32 0
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
