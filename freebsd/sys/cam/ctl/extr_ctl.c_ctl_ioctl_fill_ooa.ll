; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ioctl_fill_ooa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ioctl_fill_ooa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32, i32, i32 }
%struct.ctl_ooa = type { i64 }
%struct.ctl_ooa_entry = type { i32, i32, i32, i32, i32, i32 }
%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CTL_OOACMD_FLAG_BLOCKED = common dso_local global i32 0, align 4
@CTL_FLAG_DMA_INPROG = common dso_local global i32 0, align 4
@CTL_OOACMD_FLAG_DMA = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_OOACMD_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_FLAG_IS_WAS_ON_RTR = common dso_local global i32 0, align 4
@CTL_OOACMD_FLAG_RTR = common dso_local global i32 0, align 4
@CTL_FLAG_DMA_QUEUED = common dso_local global i32 0, align 4
@CTL_OOACMD_FLAG_DMA_QUEUED = common dso_local global i32 0, align 4
@ooa_links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_lun*, i64*, %struct.ctl_ooa*, %struct.ctl_ooa_entry*)* @ctl_ioctl_fill_ooa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_ioctl_fill_ooa(%struct.ctl_lun* %0, i64* %1, %struct.ctl_ooa* %2, %struct.ctl_ooa_entry* %3) #0 {
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ctl_ooa*, align 8
  %8 = alloca %struct.ctl_ooa_entry*, align 8
  %9 = alloca %union.ctl_io*, align 8
  %10 = alloca %struct.ctl_ooa_entry*, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.ctl_ooa* %2, %struct.ctl_ooa** %7, align 8
  store %struct.ctl_ooa_entry* %3, %struct.ctl_ooa_entry** %8, align 8
  %11 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %12 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %15 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %14, i32 0, i32 2
  %16 = call i64 @TAILQ_FIRST(i32* %15)
  %17 = inttoptr i64 %16 to %union.ctl_io*
  store %union.ctl_io* %17, %union.ctl_io** %9, align 8
  br label %18

18:                                               ; preds = %131, %4
  %19 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %20 = icmp ne %union.ctl_io* %19, null
  br i1 %20, label %21, label %140

21:                                               ; preds = %18
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ctl_ooa*, %struct.ctl_ooa** %7, align 8
  %25 = getelementptr inbounds %struct.ctl_ooa, %struct.ctl_ooa* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %131

29:                                               ; preds = %21
  %30 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %8, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %30, i64 %32
  store %struct.ctl_ooa_entry* %33, %struct.ctl_ooa_entry** %10, align 8
  %34 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %35 = bitcast %union.ctl_io* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %39 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %41 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %44 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %50 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %53 = bitcast %union.ctl_io* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bcopy(i32 %48, i32 %51, i32 %55)
  %57 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %58 = bitcast %union.ctl_io* %57 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %62 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %64 = bitcast %union.ctl_io* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %29
  %69 = load i32, i32* @CTL_OOACMD_FLAG_BLOCKED, align 4
  %70 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %71 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %29
  %75 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %76 = bitcast %union.ctl_io* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CTL_FLAG_DMA_INPROG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* @CTL_OOACMD_FLAG_DMA, align 4
  %84 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %85 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %90 = bitcast %union.ctl_io* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i32, i32* @CTL_OOACMD_FLAG_ABORT, align 4
  %98 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %99 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %104 = bitcast %union.ctl_io* %103 to %struct.TYPE_4__*
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CTL_FLAG_IS_WAS_ON_RTR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i32, i32* @CTL_OOACMD_FLAG_RTR, align 4
  %112 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %113 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %102
  %117 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %118 = bitcast %union.ctl_io* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CTL_FLAG_DMA_QUEUED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @CTL_OOACMD_FLAG_DMA_QUEUED, align 4
  %126 = load %struct.ctl_ooa_entry*, %struct.ctl_ooa_entry** %10, align 8
  %127 = getelementptr inbounds %struct.ctl_ooa_entry, %struct.ctl_ooa_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %116
  br label %131

131:                                              ; preds = %130, %28
  %132 = load i64*, i64** %6, align 8
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %136 = bitcast %union.ctl_io* %135 to %struct.TYPE_4__*
  %137 = load i32, i32* @ooa_links, align 4
  %138 = call i64 @TAILQ_NEXT(%struct.TYPE_4__* %136, i32 %137)
  %139 = inttoptr i64 %138 to %union.ctl_io*
  store %union.ctl_io* %139, %union.ctl_io** %9, align 8
  br label %18

140:                                              ; preds = %18
  %141 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %142 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %141, i32 0, i32 0
  %143 = call i32 @mtx_unlock(i32* %142)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i64 @TAILQ_NEXT(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
