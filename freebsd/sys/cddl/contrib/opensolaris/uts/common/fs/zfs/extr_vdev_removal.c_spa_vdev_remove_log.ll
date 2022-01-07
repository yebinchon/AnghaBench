; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i64, i64, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_13__*, i32*, i32* }
%struct.TYPE_12__ = type { i64 }

@TXG_CONCURRENT_STATES = common dso_local global i64 0, align 8
@TXG_DEFER_SIZE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vdev remove\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s vdev %llu (log) %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@VDEV_INITIALIZE_CANCELED = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_REMOVE_DEV = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@VDEV_LABEL_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64*)* @spa_vdev_remove_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_remove_log(%struct.TYPE_13__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 11
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 10
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = icmp eq %struct.TYPE_13__* %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @metaslab_group_passivate(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TXG_CONCURRENT_STATES, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @TXG_DEFER_SIZE, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @spa_vdev_config_exit(i32* %29, i32* null, i64 %35, i32 0, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @spa_reset_logs(i32* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @spa_vdev_config_enter(i32* %53)
  %55 = load i64*, i64** %5, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @metaslab_group_activate(i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %156

62:                                               ; preds = %52
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ASSERT0(i64 %66)
  %68 = load i32, i32* @B_TRUE, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = load i32, i32* @VDD_DTL, align 4
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @vdev_dirty_leaves(%struct.TYPE_13__* %71, i32 %72, i64 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call i32 @vdev_config_dirty(%struct.TYPE_13__* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @spa_name(i32* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %62
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i8* [ %91, %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %92 ]
  %95 = call i32 @spa_history_log_internal(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, i8* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @FTAG, align 4
  %100 = call i32 @spa_vdev_config_exit(i32* %96, i32* null, i64 %98, i32 0, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = load i32, i32* @VDEV_INITIALIZE_CANCELED, align 4
  %103 = call i32 @vdev_initialize_stop_all(%struct.TYPE_13__* %101, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @spa_vdev_config_enter(i32* %104)
  %106 = load i64*, i64** %5, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = load i32, i32* @ESC_ZFS_VDEV_REMOVE_DEV, align 4
  %110 = call i32* @spa_event_create(i32* %107, %struct.TYPE_13__* %108, i32* null, i32 %109)
  store i32* %110, i32** %9, align 8
  %111 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = load i64, i64* @SCL_ALL, align 8
  %115 = load i32, i32* @RW_WRITER, align 4
  %116 = call i64 @spa_config_held(i32* %113, i64 %114, i32 %115)
  %117 = load i64, i64* @SCL_ALL, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @ASSERT(i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ASSERT0(i64 %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ASSERT0(i64 %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = load i32, i32* @VDEV_LABEL_REMOVE, align 4
  %131 = call i32 @vdev_label_init(%struct.TYPE_13__* %129, i32 0, i32 %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 5
  %134 = call i64 @list_link_active(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %93
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = call i32 @vdev_state_clean(%struct.TYPE_13__* %137)
  br label %139

139:                                              ; preds = %136, %93
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  %142 = call i64 @list_link_active(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = call i32 @vdev_config_clean(%struct.TYPE_13__* %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = call i32 @vdev_remove_make_hole_and_free(%struct.TYPE_13__* %148)
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @spa_event_post(i32* %153)
  br label %155

155:                                              ; preds = %152, %147
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %58
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @metaslab_group_passivate(i32*) #1

declare dso_local i32 @spa_vdev_config_exit(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @spa_reset_logs(i32*) #1

declare dso_local i64 @spa_vdev_config_enter(i32*) #1

declare dso_local i32 @metaslab_group_activate(i32*) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i32 @vdev_dirty_leaves(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_history_log_internal(i32*, i8*, i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @spa_name(i32*) #1

declare dso_local i32 @vdev_initialize_stop_all(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @spa_event_create(i32*, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local i32 @vdev_label_init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @list_link_active(i32*) #1

declare dso_local i32 @vdev_state_clean(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_config_clean(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_remove_make_hole_and_free(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_event_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
