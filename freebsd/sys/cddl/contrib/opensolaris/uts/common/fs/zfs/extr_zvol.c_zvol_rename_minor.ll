; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_rename_minor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_rename_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, %struct.cdev*, i32, %struct.g_provider*, i32 }
%struct.cdev = type { i32 }
%struct.g_provider = type { i32, %struct.TYPE_4__*, i32, i32, %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.make_dev_args = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32*, i32* }

@zfsdev_state_lock = common dso_local global i32 0, align 4
@ZFS_VOLMODE_GEOM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ZVOL_DRIVER = common dso_local global i32 0, align 4
@G_PF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@G_PF_DIRECT_SEND = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@ZFS_VOLMODE_DEV = common dso_local global i64 0, align 8
@ZVOL_EXCL = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@zvol_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @zvol_rename_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_rename_minor(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca %struct.make_dev_args, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 @MUTEX_HELD(i32* @zfsdev_state_lock)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ZFS_VOLMODE_GEOM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = call i32 (...) @g_topology_lock()
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %6, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %22 = icmp ne %struct.g_provider* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 4
  %27 = load %struct.g_geom*, %struct.g_geom** %26, align 8
  store %struct.g_geom* %27, %struct.g_geom** %5, align 8
  %28 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %29 = icmp ne %struct.g_geom* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store %struct.g_provider* null, %struct.g_provider** %33, align 8
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = load i32, i32* @ENXIO, align 4
  %36 = call i32 @g_wither_provider(%struct.g_provider* %34, i32 %35)
  %37 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %38 = load i32, i32* @ZVOL_DRIVER, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %39)
  store %struct.g_provider* %40, %struct.g_provider** %6, align 8
  %41 = load i32, i32* @G_PF_DIRECT_RECEIVE, align 4
  %42 = load i32, i32* @G_PF_DIRECT_SEND, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @DEV_BSIZE, align 4
  %49 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %50 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %55 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %58 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %57, i32 0, i32 1
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %58, align 8
  %59 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store %struct.g_provider* %59, %struct.g_provider** %61, align 8
  %62 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %63 = call i32 @g_error_provider(%struct.g_provider* %62, i32 0)
  %64 = call i32 (...) @g_topology_unlock()
  br label %126

65:                                               ; preds = %2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ZFS_VOLMODE_DEV, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load %struct.cdev*, %struct.cdev** %73, align 8
  store %struct.cdev* %74, %struct.cdev** %7, align 8
  %75 = icmp ne %struct.cdev* %74, null
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store %struct.cdev* null, %struct.cdev** %78, align 8
  %79 = load %struct.cdev*, %struct.cdev** %7, align 8
  %80 = call i32 @destroy_dev(%struct.cdev* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %76
  %86 = load i32, i32* @ZVOL_EXCL, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = call i32 @zvol_last_close(%struct.TYPE_4__* %94)
  br label %96

96:                                               ; preds = %85, %76
  br label %97

97:                                               ; preds = %96, %71
  %98 = call i32 @make_dev_args_init(%struct.make_dev_args* %8)
  %99 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %100 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %101 = or i32 %99, %100
  %102 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 6
  store i32* @zvol_cdevsw, i32** %103, align 8
  %104 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 5
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @UID_ROOT, align 4
  %106 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @GID_OPERATOR, align 4
  %108 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 3
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 1
  store i32 416, i32* %109, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 2
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %111, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32, i32* @ZVOL_DRIVER, align 4
  %115 = load i8*, i8** %4, align 8
  %116 = call i64 @make_dev_s(%struct.make_dev_args* %8, %struct.cdev** %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %114, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %97
  %119 = load i32, i32* @MAXPHYS, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load %struct.cdev*, %struct.cdev** %121, align 8
  %123 = getelementptr inbounds %struct.cdev, %struct.cdev* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %97
  br label %125

125:                                              ; preds = %124, %65
  br label %126

126:                                              ; preds = %125, %16
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @strlcpy(i32 %129, i8* %130, i32 4)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_wither_provider(%struct.g_provider*, i32) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i32, i8*) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @destroy_dev(%struct.cdev*) #1

declare dso_local i32 @zvol_last_close(%struct.TYPE_4__*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i64 @make_dev_s(%struct.make_dev_args*, %struct.cdev**, i8*, i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
