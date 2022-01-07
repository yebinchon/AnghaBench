; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, i32, i32, i32, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32, %struct.ctl_be_lun }
%struct.ctl_be_block_io = type opaque
%struct.ctl_be_lun = type { i32 }
%union.ctl_io = type { i32 }
%struct.ctl_be_block_io.0 = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"datamove queue\0A\00", align 1
@ctl_io_hdr = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_NO_MEDIA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"config write queue\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"config read queue\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"input queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ctl_be_block_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_worker(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_be_block_lun*, align 8
  %6 = alloca %struct.ctl_be_lun*, align 8
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca %struct.ctl_be_block_io.0*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ctl_be_block_lun*
  store %struct.ctl_be_block_lun* %10, %struct.ctl_be_block_lun** %5, align 8
  %11 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %12 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %11, i32 0, i32 6
  store %struct.ctl_be_lun* %12, %struct.ctl_be_lun** %6, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %162, %127, %92, %53, %2
  %15 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %16 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %19 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %18, i32 0, i32 5
  %20 = call i64 @STAILQ_FIRST(i32* %19)
  %21 = inttoptr i64 %20 to %union.ctl_io*
  store %union.ctl_io* %21, %union.ctl_io** %7, align 8
  %22 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %23 = icmp ne %union.ctl_io* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %14
  %25 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %27 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %26, i32 0, i32 5
  %28 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %29 = bitcast %union.ctl_io* %28 to i32*
  %30 = load i32, i32* @ctl_io_hdr, align 4
  %31 = load i32, i32* @links, align 4
  %32 = call i32 @STAILQ_REMOVE(i32* %27, i32* %29, i32 %30, i32 %31)
  %33 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %34 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %37 = call %struct.TYPE_2__* @PRIV(%union.ctl_io* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ctl_be_block_io.0*
  store %struct.ctl_be_block_io.0* %40, %struct.ctl_be_block_io.0** %8, align 8
  %41 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %42 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %24
  %48 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %49 = bitcast %union.ctl_io* %48 to i32*
  %50 = call i32 @ctl_set_busy(i32* %49)
  %51 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %8, align 8
  %52 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io.0* %51)
  br label %170

53:                                               ; preds = %24
  %54 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %55 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %54, i32 0, i32 4
  %56 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %55, align 8
  %57 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %58 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %8, align 8
  %59 = bitcast %struct.ctl_be_block_io.0* %58 to %struct.ctl_be_block_io*
  %60 = call i32 %56(%struct.ctl_be_block_lun* %57, %struct.ctl_be_block_io* %59)
  br label %14

61:                                               ; preds = %14
  %62 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %63 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %62, i32 0, i32 3
  %64 = call i64 @STAILQ_FIRST(i32* %63)
  %65 = inttoptr i64 %64 to %union.ctl_io*
  store %union.ctl_io* %65, %union.ctl_io** %7, align 8
  %66 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %67 = icmp ne %union.ctl_io* %66, null
  br i1 %67, label %68, label %96

68:                                               ; preds = %61
  %69 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %71 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %70, i32 0, i32 3
  %72 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %73 = bitcast %union.ctl_io* %72 to i32*
  %74 = load i32, i32* @ctl_io_hdr, align 4
  %75 = load i32, i32* @links, align 4
  %76 = call i32 @STAILQ_REMOVE(i32* %71, i32* %73, i32 %74, i32 %75)
  %77 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %78 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  %80 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %81 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %68
  %87 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %88 = bitcast %union.ctl_io* %87 to i32*
  %89 = call i32 @ctl_set_busy(i32* %88)
  %90 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %91 = call i32 @ctl_config_write_done(%union.ctl_io* %90)
  br label %170

92:                                               ; preds = %68
  %93 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %94 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %95 = call i32 @ctl_be_block_cw_dispatch(%struct.ctl_be_block_lun* %93, %union.ctl_io* %94)
  br label %14

96:                                               ; preds = %61
  %97 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %98 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %97, i32 0, i32 2
  %99 = call i64 @STAILQ_FIRST(i32* %98)
  %100 = inttoptr i64 %99 to %union.ctl_io*
  store %union.ctl_io* %100, %union.ctl_io** %7, align 8
  %101 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %102 = icmp ne %union.ctl_io* %101, null
  br i1 %102, label %103, label %131

103:                                              ; preds = %96
  %104 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %106 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %105, i32 0, i32 2
  %107 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %108 = bitcast %union.ctl_io* %107 to i32*
  %109 = load i32, i32* @ctl_io_hdr, align 4
  %110 = load i32, i32* @links, align 4
  %111 = call i32 @STAILQ_REMOVE(i32* %106, i32* %108, i32 %109, i32 %110)
  %112 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %113 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %112, i32 0, i32 0
  %114 = call i32 @mtx_unlock(i32* %113)
  %115 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %116 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %103
  %122 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %123 = bitcast %union.ctl_io* %122 to i32*
  %124 = call i32 @ctl_set_busy(i32* %123)
  %125 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %126 = call i32 @ctl_config_read_done(%union.ctl_io* %125)
  br label %170

127:                                              ; preds = %103
  %128 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %129 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %130 = call i32 @ctl_be_block_cr_dispatch(%struct.ctl_be_block_lun* %128, %union.ctl_io* %129)
  br label %14

131:                                              ; preds = %96
  %132 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %133 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %132, i32 0, i32 1
  %134 = call i64 @STAILQ_FIRST(i32* %133)
  %135 = inttoptr i64 %134 to %union.ctl_io*
  store %union.ctl_io* %135, %union.ctl_io** %7, align 8
  %136 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %137 = icmp ne %union.ctl_io* %136, null
  br i1 %137, label %138, label %166

138:                                              ; preds = %131
  %139 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %141 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %140, i32 0, i32 1
  %142 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %143 = bitcast %union.ctl_io* %142 to i32*
  %144 = load i32, i32* @ctl_io_hdr, align 4
  %145 = load i32, i32* @links, align 4
  %146 = call i32 @STAILQ_REMOVE(i32* %141, i32* %143, i32 %144, i32 %145)
  %147 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %148 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %147, i32 0, i32 0
  %149 = call i32 @mtx_unlock(i32* %148)
  %150 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %151 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CTL_LUN_FLAG_NO_MEDIA, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %138
  %157 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %158 = bitcast %union.ctl_io* %157 to i32*
  %159 = call i32 @ctl_set_busy(i32* %158)
  %160 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %161 = call i32 @ctl_data_submit_done(%union.ctl_io* %160)
  br label %170

162:                                              ; preds = %138
  %163 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %164 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %165 = call i32 @ctl_be_block_dispatch(%struct.ctl_be_block_lun* %163, %union.ctl_io* %164)
  br label %14

166:                                              ; preds = %131
  %167 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %168 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %167, i32 0, i32 0
  %169 = call i32 @mtx_unlock(i32* %168)
  br label %170

170:                                              ; preds = %47, %86, %121, %156, %166
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_2__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_busy(i32*) #1

declare dso_local i32 @ctl_complete_beio(%struct.ctl_be_block_io.0*) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_cw_dispatch(%struct.ctl_be_block_lun*, %union.ctl_io*) #1

declare dso_local i32 @ctl_config_read_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_cr_dispatch(%struct.ctl_be_block_lun*, %union.ctl_io*) #1

declare dso_local i32 @ctl_data_submit_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_dispatch(%struct.ctl_be_block_lun*, %union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
