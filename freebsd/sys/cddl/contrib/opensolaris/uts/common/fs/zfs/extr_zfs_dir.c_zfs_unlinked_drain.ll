; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_unlinked_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_unlinked_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@DMU_OT_PLAIN_FILE_CONTENTS = common dso_local global i64 0, align 8
@DMU_OT_DIRECTORY_CONTENTS = common dso_local global i64 0, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_unlinked_drain(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @zap_cursor_init(i32* %3, i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %63, %1
  %17 = call i64 @zap_cursor_retrieve(i32* %3, %struct.TYPE_14__* %4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dmu_object_info(i32 %22, i32 %24, %struct.TYPE_15__* %5)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %63

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMU_OT_PLAIN_FILE_CONTENTS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMU_OT_DIRECTORY_CONTENTS, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ true, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zfs_zget(%struct.TYPE_13__* %43, i32 %45, %struct.TYPE_12__** %6)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %63

50:                                               ; preds = %39
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = call i32 @ZTOV(%struct.TYPE_12__* %51)
  %53 = load i32, i32* @LK_EXCLUSIVE, align 4
  %54 = load i32, i32* @LK_RETRY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vn_lock(i32 %52, i32 %55)
  %57 = load i32, i32* @B_TRUE, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = call i32 @ZTOV(%struct.TYPE_12__* %60)
  %62 = call i32 @vput(i32 %61)
  br label %63

63:                                               ; preds = %50, %49, %28
  %64 = call i32 @zap_cursor_advance(i32* %3)
  br label %16

65:                                               ; preds = %16
  %66 = call i32 @zap_cursor_fini(i32* %3)
  ret void
}

declare dso_local i32 @zap_cursor_init(i32*, i32, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @dmu_object_info(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_13__*, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @ZTOV(%struct.TYPE_12__*) #1

declare dso_local i32 @vput(i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
