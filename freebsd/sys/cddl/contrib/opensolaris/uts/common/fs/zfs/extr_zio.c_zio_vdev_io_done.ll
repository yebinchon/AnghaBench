; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_vdev_io_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_vdev_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*)*, i64 }
%struct.TYPE_19__ = type { i64, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }

@vdev_mirror_ops = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@B_FALSE = common dso_local global i64 0, align 8
@ZIO_CHILD_VDEV_BIT = common dso_local global i32 0, align 4
@ZIO_WAIT_DONE = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_FREE = common dso_local global i64 0, align 8
@ZIO_FLAG_IO_REPAIR = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_19__*)* @zio_vdev_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @zio_vdev_io_done(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = icmp ne %struct.TYPE_20__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.TYPE_21__* [ %15, %12 ], [ @vdev_mirror_ops, %16 ]
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %5, align 8
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = load i32, i32* @ZIO_CHILD_VDEV_BIT, align 4
  %22 = load i32, i32* @ZIO_WAIT_DONE, align 4
  %23 = call i64 @zio_wait_for_children(%struct.TYPE_19__* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %181

26:                                               ; preds = %17
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ZIO_TYPE_READ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32, %26
  %45 = phi i1 [ true, %32 ], [ true, %26 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = icmp ne %struct.TYPE_20__* %48, null
  br i1 %49, label %50, label %164

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %164

57:                                               ; preds = %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ZIO_TYPE_READ, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %164

75:                                               ; preds = %69, %63, %57
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = call i32 @trim_map_write_done(%struct.TYPE_19__* %89)
  br label %91

91:                                               ; preds = %88, %81, %75
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = call i32 @vdev_queue_io_done(%struct.TYPE_19__* %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = call i32 @vdev_cache_write(%struct.TYPE_19__* %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load i64, i64* @zio_injection_enabled, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = load i32, i32* @EIO, align 4
  %114 = call i64 @zio_handle_device_injection(%struct.TYPE_20__* %111, %struct.TYPE_19__* %112, i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %110, %105, %102
  %118 = load i64, i64* @zio_injection_enabled, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = load i32, i32* @EIO, align 4
  %128 = call i64 @zio_handle_label_injection(%struct.TYPE_19__* %126, i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %120, %117
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %131
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ENOTSUP, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %162

149:                                              ; preds = %142, %136
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %152 = call i32 @vdev_accessible(%struct.TYPE_20__* %150, %struct.TYPE_19__* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @ENXIO, align 4
  %156 = call i64 @SET_ERROR(i32 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  br label %161

159:                                              ; preds = %149
  %160 = load i64, i64* @B_TRUE, align 8
  store i64 %160, i64* %6, align 8
  br label %161

161:                                              ; preds = %159, %154
  br label %162

162:                                              ; preds = %161, %148
  br label %163

163:                                              ; preds = %162, %131
  br label %164

164:                                              ; preds = %163, %69, %50, %44
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %166, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %169 = call i32 %167(%struct.TYPE_19__* %168)
  %170 = load i64, i64* %6, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %175 = call i32* @vdev_probe(%struct.TYPE_20__* %173, %struct.TYPE_19__* %174)
  %176 = icmp eq i32* %175, null
  %177 = zext i1 %176 to i32
  %178 = call i32 @VERIFY(i32 %177)
  br label %179

179:                                              ; preds = %172, %164
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %180, %struct.TYPE_19__** %2, align 8
  br label %181

181:                                              ; preds = %179, %25
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %182
}

declare dso_local i64 @zio_wait_for_children(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trim_map_write_done(%struct.TYPE_19__*) #1

declare dso_local i32 @vdev_queue_io_done(%struct.TYPE_19__*) #1

declare dso_local i32 @vdev_cache_write(%struct.TYPE_19__*) #1

declare dso_local i64 @zio_handle_device_injection(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @zio_handle_label_injection(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @vdev_accessible(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @SET_ERROR(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @vdev_probe(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
