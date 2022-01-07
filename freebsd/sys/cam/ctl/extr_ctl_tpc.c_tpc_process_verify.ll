; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i64, i32, i32, i32, i32, i64*, i64, i64 }
%struct.scsi_ec_segment_verify = type { i32, i32 }
%struct.tpc_io = type { i64, %struct.TYPE_9__*, i32, i32, %struct.tpc_list*, i32 }
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
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@SSD_FORWARDED_SDS_EXSRC = common dso_local global i32 0, align 4
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"tpcl_queue() error\00", align 1
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpc_list*)* @tpc_process_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_process_verify(%struct.tpc_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpc_list*, align 8
  %4 = alloca %struct.scsi_ec_segment_verify*, align 8
  %5 = alloca %struct.tpc_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.tpc_list* %0, %struct.tpc_list** %3, align 8
  %9 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %10 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %13 = call i32 @scsi_ulto4b(i64 %11, i32* %12)
  %14 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %15 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %59

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %24, %18
  %20 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %21 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %20, i32 0, i32 3
  %22 = call %struct.tpc_io* @TAILQ_FIRST(i32* %21)
  store %struct.tpc_io* %22, %struct.tpc_io** %5, align 8
  %23 = icmp ne %struct.tpc_io* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %26 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %25, i32 0, i32 3
  %27 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %28 = load i32, i32* @links, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.tpc_io* %27, i32 %28)
  %30 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %31 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @ctl_free_io(%struct.TYPE_9__* %32)
  %34 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %35 = load i32, i32* @M_CTL, align 4
  %36 = call i32 @free(%struct.tpc_io* %34, i32 %35)
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %39 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %44 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ctl_set_task_aborted(i32 %45)
  %47 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %47, i32* %2, align 4
  br label %168

48:                                               ; preds = %37
  %49 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %50 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %55 = call i32 @tpc_set_io_error_sense(%struct.tpc_list* %54)
  %56 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %56, i32* %2, align 4
  br label %168

57:                                               ; preds = %48
  %58 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %58, i32* %2, align 4
  br label %168

59:                                               ; preds = %1
  %60 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %61 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %60, i32 0, i32 3
  %62 = call i32 @TAILQ_INIT(i32* %61)
  %63 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %64 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %63, i32 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %67 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.scsi_ec_segment_verify*
  store %struct.scsi_ec_segment_verify* %71, %struct.scsi_ec_segment_verify** %4, align 8
  %72 = load %struct.scsi_ec_segment_verify*, %struct.scsi_ec_segment_verify** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_ec_segment_verify, %struct.scsi_ec_segment_verify* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @scsi_2btoul(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @tpc_resolve(%struct.tpc_list* %76, i32 %77, i32* null, i32* null, i32* null)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @UINT64_MAX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %59
  %83 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %84 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SSD_KEY_COPY_ABORTED, align 4
  %87 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %89 = load i32, i32* @SSD_ELEM_NONE, align 4
  %90 = call i32 @ctl_set_sense(i32 %85, i32 1, i32 %86, i32 8, i32 4, i32 %87, i32 16, i32* %88, i32 %89)
  %91 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %91, i32* %2, align 4
  br label %168

92:                                               ; preds = %59
  %93 = load %struct.scsi_ec_segment_verify*, %struct.scsi_ec_segment_verify** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_ec_segment_verify, %struct.scsi_ec_segment_verify* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %99, i32* %2, align 4
  br label %168

100:                                              ; preds = %92
  %101 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %102 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %101, i32 0, i32 2
  store i32 1, i32* %102, align 4
  %103 = load i32, i32* @M_CTL, align 4
  %104 = load i32, i32* @M_WAITOK, align 4
  %105 = load i32, i32* @M_ZERO, align 4
  %106 = or i32 %104, %105
  %107 = call %struct.tpc_io* @malloc(i32 40, i32 %103, i32 %106)
  store %struct.tpc_io* %107, %struct.tpc_io** %5, align 8
  %108 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %109 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %108, i32 0, i32 5
  %110 = call i32 @TAILQ_INIT(i32* %109)
  %111 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %112 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %113 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %112, i32 0, i32 4
  store %struct.tpc_list* %111, %struct.tpc_list** %113, align 8
  %114 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %115 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %114, i32 0, i32 3
  %116 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %117 = load i32, i32* @links, align 4
  %118 = call i32 @TAILQ_INSERT_TAIL(i32* %115, %struct.tpc_io* %116, i32 %117)
  %119 = call %struct.TYPE_9__* (...) @tpcl_alloc_io()
  %120 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %121 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %120, i32 0, i32 1
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %121, align 8
  %122 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %123 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %126 = call i32 @ctl_scsi_tur(%struct.TYPE_9__* %124, i32 %125, i32 0)
  %127 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %128 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 3, i32* %131, align 8
  %132 = load i32, i32* @SSD_FORWARDED_SDS_EXSRC, align 4
  %133 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %134 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %137 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %140 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %142 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %143 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store %struct.tpc_io* %141, %struct.tpc_io** %150, align 8
  %151 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %152 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %156 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %159 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @tpcl_queue(%struct.TYPE_9__* %157, i64 %160)
  %162 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %100
  %165 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %100
  %167 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %166, %98, %82, %57, %53, %42
  %169 = load i32, i32* %2, align 4
  ret i32 %169
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

declare dso_local %struct.tpc_io* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tpc_io*, i32) #1

declare dso_local %struct.TYPE_9__* @tpcl_alloc_io(...) #1

declare dso_local i32 @ctl_scsi_tur(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @tpcl_queue(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
