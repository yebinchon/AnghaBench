; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_config_move_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_config_move_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ctl_config_move_done\0A\00", align 1
@CTL_IO_SCSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Config I/O type isn't CTL_IO_SCSI (%d)!\00", align 1
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@ctl_debug = common dso_local global i32 0, align 4
@CTL_DEBUG_CDB_DATA = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_config_move_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %5 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %6 = bitcast %union.ctl_io* %5 to %struct.TYPE_5__*
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CTL_IO_SCSI, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_5__*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %11, i8* %16)
  %18 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %19 = bitcast %union.ctl_io* %18 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %1
  %24 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %25 = bitcast %union.ctl_io* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CTL_STATUS_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CTL_STATUS_NONE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CTL_STATUS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CTL_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %32, %23
  %42 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %43 = bitcast %union.ctl_io* %42 to %struct.TYPE_6__*
  %44 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %45 = bitcast %union.ctl_io* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ctl_set_internal_failure(%struct.TYPE_6__* %43, i32 1, i64 %47)
  br label %87

49:                                               ; preds = %32, %1
  %50 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %51 = bitcast %union.ctl_io* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %49
  %56 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %66 = bitcast %union.ctl_io* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CTL_STATUS_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CTL_STATUS_NONE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %75 = bitcast %union.ctl_io* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CTL_STATUS_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @CTL_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %73, %64
  %83 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_6__*
  %85 = call i32 @ctl_set_invalid_field_ciu(%struct.TYPE_6__* %84)
  br label %86

86:                                               ; preds = %82, %73, %55, %49
  br label %87

87:                                               ; preds = %86, %41
  %88 = load i32, i32* @ctl_debug, align 4
  %89 = load i32, i32* @CTL_DEBUG_CDB_DATA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %94 = call i32 @ctl_data_print(%union.ctl_io* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %97 = bitcast %union.ctl_io* %96 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %130, label %104

104:                                              ; preds = %95
  %105 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %106 = bitcast %union.ctl_io* %105 to %struct.TYPE_5__*
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CTL_STATUS_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @CTL_STATUS_NONE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %115 = bitcast %union.ctl_io* %114 to %struct.TYPE_5__*
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CTL_STATUS_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @CTL_SUCCESS, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %113, %104
  %123 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %124 = bitcast %union.ctl_io* %123 to %struct.TYPE_5__*
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %122, %113, %95
  %131 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %132 = bitcast %union.ctl_io* %131 to %struct.TYPE_5__*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %140 = bitcast %union.ctl_io* %139 to %struct.TYPE_6__*
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @M_CTL, align 4
  %144 = call i32 @free(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %130
  %146 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %147 = call i32 @ctl_done(%union.ctl_io* %146)
  %148 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %122
  %150 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %151 = bitcast %union.ctl_io* %150 to %struct.TYPE_6__*
  %152 = call i32 @ctl_scsiio(%struct.TYPE_6__* %151)
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ctl_set_internal_failure(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @ctl_set_invalid_field_ciu(%struct.TYPE_6__*) #1

declare dso_local i32 @ctl_data_print(%union.ctl_io*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_scsiio(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
