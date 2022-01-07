; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_config_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_config_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [103 x i8] c"vdev_label_sync_list() returned error %d for pool '%s' when syncing out the even labels of dirty vdevs\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"vdev_uberblock_sync_list() returned error %d for pool '%s'\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"vdev_label_sync_list() returned error %d for pool '%s' when syncing out the odd labels of dirty vdevs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_config_sync(%struct.TYPE_17__** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %14, i64 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %8, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %22 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  br label %28

28:                                               ; preds = %159, %142, %124, %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %163

38:                                               ; preds = %31
  %39 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp sle i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %42
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @uberblock_update(%struct.TYPE_18__* %56, i32 %59, i64 %60)
  %62 = load i64, i64* @B_FALSE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = call i64 @list_is_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %163

70:                                               ; preds = %64, %55, %42
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = call i64 @spa_freeze_txg(%struct.TYPE_19__* %72)
  %74 = icmp sgt i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %163

76:                                               ; preds = %70
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sle i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32* @zio_root(%struct.TYPE_19__* %84, i32* null, i32* null, i32 %85)
  store i32* %86, i32** %12, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @TXG_CLEAN(i64 %89)
  %91 = call %struct.TYPE_17__* @txg_list_head(i32* %88, i32 %90)
  store %struct.TYPE_17__* %91, %struct.TYPE_17__** %13, align 8
  br label %92

92:                                               ; preds = %99, %76
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %94 = icmp ne %struct.TYPE_17__* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %98 = call i32 @zio_flush(i32* %96, %struct.TYPE_17__* %97)
  br label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @TXG_CLEAN(i64 %103)
  %105 = call %struct.TYPE_17__* @txg_list_next(i32* %101, %struct.TYPE_17__* %102, i32 %104)
  store %struct.TYPE_17__* %105, %struct.TYPE_17__** %13, align 8
  br label %92

106:                                              ; preds = %92
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @zio_wait(i32* %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @vdev_label_sync_list(%struct.TYPE_19__* %109, i32 0, i64 %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %122 = call i32 @spa_name(%struct.TYPE_19__* %121)
  %123 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %28

125:                                              ; preds = %106
  %126 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @vdev_uberblock_sync_list(%struct.TYPE_17__** %126, i32 %127, %struct.TYPE_18__* %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = call i32 @spa_name(%struct.TYPE_19__* %139)
  %141 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %140)
  br label %142

142:                                              ; preds = %137, %132
  br label %28

143:                                              ; preds = %125
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @vdev_label_sync_list(%struct.TYPE_19__* %144, i32 1, i64 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %157 = call i32 @spa_name(%struct.TYPE_19__* %156)
  %158 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %154, %149
  br label %28

160:                                              ; preds = %143
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %162 = call i32 @trim_thread_wakeup(%struct.TYPE_19__* %161)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %75, %69, %36
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uberblock_update(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i64 @list_is_empty(i32*) #1

declare dso_local i64 @spa_freeze_txg(%struct.TYPE_19__*) #1

declare dso_local i32* @zio_root(%struct.TYPE_19__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_17__* @txg_list_head(i32*, i32) #1

declare dso_local i32 @TXG_CLEAN(i64) #1

declare dso_local i32 @zio_flush(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @txg_list_next(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @vdev_label_sync_list(%struct.TYPE_19__*, i32, i64, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_19__*) #1

declare dso_local i32 @vdev_uberblock_sync_list(%struct.TYPE_17__**, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @trim_thread_wakeup(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
