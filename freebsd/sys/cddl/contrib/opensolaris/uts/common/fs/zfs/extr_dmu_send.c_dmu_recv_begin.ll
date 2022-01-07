; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_recv_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_recv_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_14__*, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i8*, i8*, %struct.TYPE_16__*, i32 }

@DMU_BACKUP_MAGIC = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_RESUMING = common dso_local global i32 0, align 4
@dmu_recv_resume_begin_check = common dso_local global i32 0, align 4
@dmu_recv_resume_begin_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@dmu_recv_begin_check = common dso_local global i32 0, align 4
@dmu_recv_begin_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_recv_begin(i8* %0, i8* %1, %struct.TYPE_15__* %2, i8* %3, i8* %4, i8* %5, %struct.TYPE_16__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %15, align 8
  %17 = bitcast %struct.TYPE_17__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %19 = call i32 @bzero(%struct.TYPE_16__* %18, i32 72)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 9
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = call i8* (...) @CRED()
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %54 = call i64 @BSWAP_64(i64 %53)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %7
  %57 = load i32, i32* @B_TRUE, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = call i32 @fletcher_4_incremental_byteswap(%struct.TYPE_15__* %60, i32 16, i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = call i32 @byteswap_record(%struct.TYPE_15__* %64)
  br label %83

66:                                               ; preds = %7
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = call i32 @fletcher_4_incremental_native(%struct.TYPE_15__* %75, i32 16, i32* %77)
  br label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @EINVAL, align 4
  %81 = call i32 @SET_ERROR(i32 %80)
  store i32 %81, i32* %8, align 4
  br label %111

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %87, align 8
  %88 = call i8* (...) @CRED()
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @DMU_GET_FEATUREFLAGS(i32 %94)
  %96 = load i32, i32* @DMU_BACKUP_FEATURE_RESUMING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %83
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* @dmu_recv_resume_begin_check, align 4
  %102 = load i32, i32* @dmu_recv_resume_begin_sync, align 4
  %103 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %104 = call i32 @dsl_sync_task(i8* %100, i32 %101, i32 %102, %struct.TYPE_17__* %16, i32 5, i32 %103)
  store i32 %104, i32* %8, align 4
  br label %111

105:                                              ; preds = %83
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* @dmu_recv_begin_check, align 4
  %108 = load i32, i32* @dmu_recv_begin_sync, align 4
  %109 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %110 = call i32 @dsl_sync_task(i8* %106, i32 %107, i32 %108, %struct.TYPE_17__* %16, i32 5, i32 %109)
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %105, %99, %79
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bzero(%struct.TYPE_16__*, i32) #2

declare dso_local i8* @CRED(...) #2

declare dso_local i64 @BSWAP_64(i64) #2

declare dso_local i32 @fletcher_4_incremental_byteswap(%struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @byteswap_record(%struct.TYPE_15__*) #2

declare dso_local i32 @fletcher_4_incremental_native(%struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @DMU_GET_FEATUREFLAGS(i32) #2

declare dso_local i32 @dsl_sync_task(i8*, i32, i32, %struct.TYPE_17__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
