; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_flush_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_flush_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.ctl_be_block_io = type { i32, i32, i32, i32, %struct.TYPE_6__*, i64, %union.ctl_io* }
%struct.TYPE_6__ = type { i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@V_WAIT = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* @ctl_be_block_flush_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_flush_file(%struct.ctl_be_block_lun* %0, %struct.ctl_be_block_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_block_io*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %struct.ctl_be_block_io* %1, %struct.ctl_be_block_io** %4, align 8
  %9 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %9, i32 0, i32 6
  %11 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  store %union.ctl_io* %11, %union.ctl_io** %5, align 8
  %12 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %13, i32 0, i32 0
  %15 = call i32 @binuptime(i32* %14)
  %16 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %20 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %25 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %24, i32 0, i32 0
  %26 = call i32 @devstat_start_transaction(i32 %23, i32* %25)
  %27 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %31 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* @V_WAIT, align 4
  %34 = call i32 @vn_start_write(%struct.TYPE_7__* %32, %struct.mount** %6, i32 %33)
  %35 = load %struct.mount*, %struct.mount** %6, align 8
  %36 = call i64 @MNT_SHARED_WRITES(%struct.mount* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %2
  %39 = load %struct.mount*, %struct.mount** %6, align 8
  %40 = icmp eq %struct.mount* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %43 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.mount*, %struct.mount** %45, align 8
  %47 = call i64 @MNT_SHARED_WRITES(%struct.mount* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41, %2
  %50 = load i32, i32* @LK_SHARED, align 4
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %41, %38
  %52 = load i32, i32* @LK_EXCLUSIVE, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %55 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @LK_RETRY, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @vn_lock(%struct.TYPE_7__* %56, i32 %59)
  %61 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %62 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %65 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @MNT_NOWAIT, align 4
  br label %72

70:                                               ; preds = %53
  %71 = load i32, i32* @MNT_WAIT, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32, i32* @curthread, align 4
  %75 = call i32 @VOP_FSYNC(%struct.TYPE_7__* %63, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %77 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 @VOP_UNLOCK(%struct.TYPE_7__* %78, i32 0)
  %80 = load %struct.mount*, %struct.mount** %6, align 8
  %81 = call i32 @vn_finished_write(%struct.mount* %80)
  %82 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %83 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %82, i32 0, i32 0
  %84 = call i32 @mtx_lock(i32* %83)
  %85 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %86 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %91 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %94 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %97 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %100 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %99, i32 0, i32 0
  %101 = call i32 @devstat_end_transaction(i32 %89, i32 %92, i32 %95, i32 %98, i32* null, i32* %100)
  %102 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %103 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %102, i32 0, i32 0
  %104 = call i32 @mtx_unlock(i32* %103)
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %72
  %108 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %109 = bitcast %union.ctl_io* %108 to i32*
  %110 = call i32 @ctl_set_success(i32* %109)
  br label %115

111:                                              ; preds = %72
  %112 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %113 = bitcast %union.ctl_io* %112 to i32*
  %114 = call i32 @ctl_set_internal_failure(i32* %113, i32 1, i32 47825)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %117 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io* %116)
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devstat_start_transaction(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vn_start_write(%struct.TYPE_7__*, %struct.mount**, i32) #1

declare dso_local i64 @MNT_SHARED_WRITES(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @VOP_FSYNC(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @devstat_end_transaction(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ctl_set_success(i32*) #1

declare dso_local i32 @ctl_set_internal_failure(i32*, i32, i32) #1

declare dso_local i32 @ctl_complete_beio(%struct.ctl_be_block_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
