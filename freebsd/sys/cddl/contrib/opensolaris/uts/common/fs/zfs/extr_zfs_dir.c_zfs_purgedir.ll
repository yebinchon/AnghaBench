; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_purgedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_purgedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i64 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @zfs_purgedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_purgedir(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zap_cursor_init(i32* %3, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %124, %1
  %21 = call i32 @zap_cursor_retrieve(i32* %3, %struct.TYPE_18__* %4)
  store i32 %21, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %126

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ZFS_DIRENT_OBJ(i32 %26)
  %28 = call i32 @zfs_zget(%struct.TYPE_17__* %24, i32 %27, %struct.TYPE_16__** %5)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %124

34:                                               ; preds = %23
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = call %struct.TYPE_15__* @ZTOV(%struct.TYPE_16__* %35)
  %37 = load i32, i32* @LK_EXCLUSIVE, align 4
  %38 = load i32, i32* @LK_RETRY, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @vn_lock(%struct.TYPE_15__* %36, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = call %struct.TYPE_15__* @ZTOV(%struct.TYPE_16__* %41)
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VREG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %34
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call %struct.TYPE_15__* @ZTOV(%struct.TYPE_16__* %48)
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VLNK, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %47, %34
  %55 = phi i1 [ true, %34 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @dmu_tx_create(i32 %60)
  store i32* %61, i32** %6, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i32 @dmu_tx_hold_sa(i32* %62, i32 %65, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @dmu_tx_hold_zap(i32* %68, i32 %71, i32 %72, i32* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @B_FALSE, align 4
  %81 = call i32 @dmu_tx_hold_sa(i32* %76, i32 %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @dmu_tx_hold_zap(i32* %82, i32 %85, i32 %86, i32* null)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = call i32 @zfs_sa_upgrade_txholds(i32* %88, %struct.TYPE_16__* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @dmu_tx_mark_netfree(i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @TXG_WAIT, align 4
  %95 = call i32 @dmu_tx_assign(i32* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %54
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @dmu_tx_abort(i32* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = call %struct.TYPE_15__* @ZTOV(%struct.TYPE_16__* %101)
  %103 = call i32 @vput(%struct.TYPE_15__* %102)
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %124

106:                                              ; preds = %54
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @zfs_link_destroy(%struct.TYPE_16__* %107, i32* %109, %struct.TYPE_16__* %110, i32* %111, i32 0, i32* null)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @dmu_tx_commit(i32* %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = call %struct.TYPE_15__* @ZTOV(%struct.TYPE_16__* %121)
  %123 = call i32 @vput(%struct.TYPE_15__* %122)
  br label %124

124:                                              ; preds = %118, %98, %31
  %125 = call i32 @zap_cursor_advance(i32* %3)
  br label %20

126:                                              ; preds = %20
  %127 = call i32 @zap_cursor_fini(i32* %3)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @ENOENT, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @zap_cursor_init(i32*, i32, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_17__*, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @ZFS_DIRENT_OBJ(i32) #1

declare dso_local i32 @vn_lock(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @ZTOV(%struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i32*) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @vput(%struct.TYPE_15__*) #1

declare dso_local i32 @zfs_link_destroy(%struct.TYPE_16__*, i32*, %struct.TYPE_16__*, i32*, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
