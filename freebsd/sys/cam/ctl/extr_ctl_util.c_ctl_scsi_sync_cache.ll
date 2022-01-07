; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_sync_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32*, i32, i64 }
%struct.scsi_sync_cache = type { i8*, i32, i32, i32, i32 }
%struct.scsi_sync_cache_16 = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SYNCHRONIZE_CACHE = common dso_local global i32 0, align 4
@SSC_RELADR = common dso_local global i32 0, align 4
@SSC_IMMED = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE_16 = common dso_local global i32 0, align 4
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_NONE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_sync_cache(%union.ctl_io* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %union.ctl_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.scsi_sync_cache*, align 8
  %18 = alloca %struct.scsi_sync_cache_16*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %19 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %20 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %19)
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %72

23:                                               ; preds = %8
  %24 = load i32, i32* %14, align 4
  %25 = and i32 %24, 65535
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.scsi_sync_cache*
  store %struct.scsi_sync_cache* %37, %struct.scsi_sync_cache** %17, align 8
  %38 = load i32, i32* @SYNCHRONIZE_CACHE, align 4
  %39 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %17, align 8
  %40 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @SSC_RELADR, align 4
  %45 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %17, align 8
  %46 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @SSC_IMMED, align 4
  %54 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %17, align 8
  %55 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %17, align 8
  %61 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scsi_ulto4b(i32 %59, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %17, align 8
  %66 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @scsi_ulto2b(i32 %64, i32 %67)
  %69 = load i8*, i8** %16, align 8
  %70 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %17, align 8
  %71 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %112

72:                                               ; preds = %28, %23, %8
  %73 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %74 = bitcast %union.ctl_io* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.scsi_sync_cache_16*
  store %struct.scsi_sync_cache_16* %77, %struct.scsi_sync_cache_16** %18, align 8
  %78 = load i32, i32* @SYNCHRONIZE_CACHE_16, align 4
  %79 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %18, align 8
  %80 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load i32, i32* @SSC_RELADR, align 4
  %85 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %18, align 8
  %86 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %72
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @SSC_IMMED, align 4
  %94 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %18, align 8
  %95 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %18, align 8
  %101 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @scsi_u64to8b(i32 %99, i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %18, align 8
  %106 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @scsi_ulto4b(i32 %104, i32 %107)
  %109 = load i8*, i8** %16, align 8
  %110 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %18, align 8
  %111 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %98, %58
  %113 = load i32, i32* @CTL_IO_SCSI, align 4
  %114 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %115 = bitcast %union.ctl_io* %114 to %struct.TYPE_3__*
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @CTL_FLAG_DATA_NONE, align 4
  %118 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %119 = bitcast %union.ctl_io* %118 to %struct.TYPE_3__*
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %123 = bitcast %union.ctl_io* %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  store i32 %121, i32* %124, align 8
  %125 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %126 = bitcast %union.ctl_io* %125 to %struct.TYPE_4__*
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  store i32* null, i32** %127, align 8
  %128 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %129 = bitcast %union.ctl_io* %128 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %132 = bitcast %union.ctl_io* %131 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %135 = bitcast %union.ctl_io* %134 to %struct.TYPE_4__*
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @SSD_FULL_SIZE, align 4
  %138 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %139 = bitcast %union.ctl_io* %138 to %struct.TYPE_4__*
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
