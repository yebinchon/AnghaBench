; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_probe_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_probe_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32, i32, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, i32* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_18__* }

@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_OFF = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"failed probe\00", align 1
@FM_EREPORT_ZFS_PROBE_FAILURE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @vdev_probe_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_probe_done(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZIO_TYPE_READ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @spa_writeable(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ZIO_CHECKSUM_OFF, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = load i32, i32* @ZIO_PRIORITY_SYNC_WRITE, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @B_TRUE, align 4
  %66 = call i32 @zio_write_phys(%struct.TYPE_18__* %48, %struct.TYPE_19__* %49, i32 %52, i32 %55, i32 %58, i32 %59, void (%struct.TYPE_18__*)* @vdev_probe_done, %struct.TYPE_20__* %60, i32 %61, i32 %64, i32 %65)
  %67 = call i32 @zio_nowait(i32 %66)
  br label %73

68:                                               ; preds = %41, %36
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @abd_free(i32 %71)
  br label %73

73:                                               ; preds = %68, %45
  br label %189

74:                                               ; preds = %1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @abd_free(i32 %91)
  br label %188

93:                                               ; preds = %74
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ZIO_TYPE_NULL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %187

99:                                               ; preds = %93
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = call i64 @vdev_readable(%struct.TYPE_19__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %99
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = call i64 @vdev_writeable(%struct.TYPE_19__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @spa_writeable(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %152

134:                                              ; preds = %127, %99
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @ASSERT(i32 %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = call i32 @vdev_dbgmsg(%struct.TYPE_19__* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %143 = load i32, i32* @FM_EREPORT_ZFS_PROBE_FAILURE, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = call i32 @zfs_ereport_post(i32 %143, i32* %144, %struct.TYPE_19__* %145, i32* null, i32 0, i32 0)
  %147 = load i32, i32* @ENXIO, align 4
  %148 = call i8* @SET_ERROR(i32 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %134, %131
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 2
  %155 = call i32 @mutex_enter(i32* %154)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %160 = icmp eq %struct.TYPE_18__* %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @ASSERT(i32 %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %164, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = call i32 @mutex_exit(i32* %166)
  store i32* null, i32** %7, align 8
  br label %168

168:                                              ; preds = %183, %152
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %170 = call %struct.TYPE_18__* @zio_walk_parents(%struct.TYPE_18__* %169, i32** %7)
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %6, align 8
  %171 = icmp ne %struct.TYPE_18__* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = call i32 @vdev_accessible(%struct.TYPE_19__* %173, %struct.TYPE_18__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* @ENXIO, align 4
  %179 = call i8* @SET_ERROR(i32 %178)
  %180 = ptrtoint i8* %179 to i64
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %177, %172
  br label %168

184:                                              ; preds = %168
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %186 = call i32 @kmem_free(%struct.TYPE_20__* %185, i32 12)
  br label %187

187:                                              ; preds = %184, %93
  br label %188

188:                                              ; preds = %187, %88
  br label %189

189:                                              ; preds = %188, %73
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_writeable(i32*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_write_phys(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i32, i32, void (%struct.TYPE_18__*)*, %struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @abd_free(i32) #1

declare dso_local i64 @vdev_readable(%struct.TYPE_19__*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_19__*) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @zfs_ereport_post(i32, i32*, %struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i8* @SET_ERROR(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_18__* @zio_walk_parents(%struct.TYPE_18__*, i32**) #1

declare dso_local i32 @vdev_accessible(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
