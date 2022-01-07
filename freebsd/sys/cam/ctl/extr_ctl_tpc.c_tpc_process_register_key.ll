; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_register_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_register_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i64, i32, i32, i32, i32, i64*, i64, i64 }
%struct.scsi_ec_segment_register_key = type { i32, i32, i32 }
%struct.tpc_io = type { i64, %struct.TYPE_9__*, i32, i32, %struct.tpc_io*, %struct.tpc_list*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.tpc_io* }

@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_RETVAL_ERROR = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@SSD_KEY_COPY_ABORTED = common dso_local global i32 0, align 4
@SSD_ELEM_COMMAND = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SPRO_REGISTER = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@SSD_FORWARDED_SDS_EXDST = common dso_local global i32 0, align 4
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"tpcl_queue() error\00", align 1
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpc_list*)* @tpc_process_register_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_process_register_key(%struct.tpc_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpc_list*, align 8
  %4 = alloca %struct.scsi_ec_segment_register_key*, align 8
  %5 = alloca %struct.tpc_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.tpc_list* %0, %struct.tpc_list** %3, align 8
  %10 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %11 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %14 = call i32 @scsi_ulto4b(i64 %12, i32* %13)
  %15 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %16 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %65

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %25, %19
  %21 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %22 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %21, i32 0, i32 3
  %23 = call %struct.tpc_io* @TAILQ_FIRST(i32* %22)
  store %struct.tpc_io* %23, %struct.tpc_io** %5, align 8
  %24 = icmp ne %struct.tpc_io* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %27 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %26, i32 0, i32 3
  %28 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %29 = load i32, i32* @links, align 4
  %30 = call i32 @TAILQ_REMOVE(i32* %27, %struct.tpc_io* %28, i32 %29)
  %31 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %32 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @ctl_free_io(%struct.TYPE_9__* %33)
  %35 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %36 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %35, i32 0, i32 4
  %37 = load %struct.tpc_io*, %struct.tpc_io** %36, align 8
  %38 = load i32, i32* @M_CTL, align 4
  %39 = call i32 @free(%struct.tpc_io* %37, i32 %38)
  %40 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %41 = load i32, i32* @M_CTL, align 4
  %42 = call i32 @free(%struct.tpc_io* %40, i32 %41)
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %45 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %50 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ctl_set_task_aborted(i32 %51)
  %53 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %53, i32* %2, align 4
  br label %187

54:                                               ; preds = %43
  %55 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %56 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %61 = call i32 @tpc_set_io_error_sense(%struct.tpc_list* %60)
  %62 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %187

63:                                               ; preds = %54
  %64 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %64, i32* %2, align 4
  br label %187

65:                                               ; preds = %1
  %66 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %67 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %66, i32 0, i32 3
  %68 = call i32 @TAILQ_INIT(i32* %67)
  %69 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %70 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %69, i32 0, i32 5
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %73 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.scsi_ec_segment_register_key*
  store %struct.scsi_ec_segment_register_key* %77, %struct.scsi_ec_segment_register_key** %4, align 8
  %78 = load %struct.scsi_ec_segment_register_key*, %struct.scsi_ec_segment_register_key** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_ec_segment_register_key, %struct.scsi_ec_segment_register_key* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @scsi_2btoul(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @tpc_resolve(%struct.tpc_list* %82, i32 %83, i32* null, i32* null, i32* null)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @UINT64_MAX, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %65
  %89 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %90 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SSD_KEY_COPY_ABORTED, align 4
  %93 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %95 = load i32, i32* @SSD_ELEM_NONE, align 4
  %96 = call i32 @ctl_set_sense(i32 %91, i32 1, i32 %92, i32 8, i32 4, i32 %93, i32 16, i32* %94, i32 %95)
  %97 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %97, i32* %2, align 4
  br label %187

98:                                               ; preds = %65
  %99 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %100 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %99, i32 0, i32 2
  store i32 1, i32* %100, align 4
  %101 = load i32, i32* @M_CTL, align 4
  %102 = load i32, i32* @M_WAITOK, align 4
  %103 = load i32, i32* @M_ZERO, align 4
  %104 = or i32 %102, %103
  %105 = call i8* @malloc(i32 48, i32 %101, i32 %104)
  %106 = bitcast i8* %105 to %struct.tpc_io*
  store %struct.tpc_io* %106, %struct.tpc_io** %5, align 8
  %107 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %108 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %107, i32 0, i32 6
  %109 = call i32 @TAILQ_INIT(i32* %108)
  %110 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %111 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %112 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %111, i32 0, i32 5
  store %struct.tpc_list* %110, %struct.tpc_list** %112, align 8
  %113 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %114 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %113, i32 0, i32 3
  %115 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %116 = load i32, i32* @links, align 4
  %117 = call i32 @TAILQ_INSERT_TAIL(i32* %114, %struct.tpc_io* %115, i32 %116)
  %118 = call %struct.TYPE_9__* (...) @tpcl_alloc_io()
  %119 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %120 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %119, i32 0, i32 1
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %120, align 8
  store i32 4, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @M_CTL, align 4
  %123 = load i32, i32* @M_WAITOK, align 4
  %124 = call i8* @malloc(i32 %121, i32 %122, i32 %123)
  %125 = bitcast i8* %124 to %struct.tpc_io*
  %126 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %127 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %126, i32 0, i32 4
  store %struct.tpc_io* %125, %struct.tpc_io** %127, align 8
  %128 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %129 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %132 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %131, i32 0, i32 4
  %133 = load %struct.tpc_io*, %struct.tpc_io** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SPRO_REGISTER, align 4
  %136 = load %struct.scsi_ec_segment_register_key*, %struct.scsi_ec_segment_register_key** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_ec_segment_register_key, %struct.scsi_ec_segment_register_key* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @scsi_8btou64(i32 %138)
  %140 = load %struct.scsi_ec_segment_register_key*, %struct.scsi_ec_segment_register_key** %4, align 8
  %141 = getelementptr inbounds %struct.scsi_ec_segment_register_key, %struct.scsi_ec_segment_register_key* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @scsi_8btou64(i32 %142)
  %144 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %145 = call i32 @ctl_scsi_persistent_res_out(%struct.TYPE_9__* %130, %struct.tpc_io* %133, i32 %134, i32 %135, i32 -1, i32 %139, i32 %143, i32 %144, i32 0)
  %146 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %147 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32 3, i32* %150, align 8
  %151 = load i32, i32* @SSD_FORWARDED_SDS_EXDST, align 4
  %152 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %153 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %156 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %159 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %161 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %162 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %161, i32 0, i32 1
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store %struct.tpc_io* %160, %struct.tpc_io** %169, align 8
  %170 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %171 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %175 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %174, i32 0, i32 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %178 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @tpcl_queue(%struct.TYPE_9__* %176, i64 %179)
  %181 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %98
  %184 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %98
  %186 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %88, %63, %59, %48
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @scsi_ulto4b(i64, i32*) #1

declare dso_local %struct.tpc_io* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_free_io(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_set_task_aborted(i32) #1

declare dso_local i32 @tpc_set_io_error_sense(%struct.tpc_list*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i64 @tpc_resolve(%struct.tpc_list*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ctl_set_sense(i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tpc_io*, i32) #1

declare dso_local %struct.TYPE_9__* @tpcl_alloc_io(...) #1

declare dso_local i32 @ctl_scsi_persistent_res_out(%struct.TYPE_9__*, %struct.tpc_io*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @tpcl_queue(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
