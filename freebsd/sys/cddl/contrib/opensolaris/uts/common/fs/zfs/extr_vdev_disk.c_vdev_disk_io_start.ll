; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_io_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_io_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.dk_callback*, %struct.TYPE_16__* }
%struct.dk_callback = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i32, i32 (...)*, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ZIO_TYPE_IOCTL = common dso_local global i64 0, align 8
@zfs_nocacheflush = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@vdev_disk_vsd_ops = common dso_local global i32 0, align 4
@vdev_disk_ioctl_done = common dso_local global i32 0, align 4
@FLUSH_VOLATILE = common dso_local global i32 0, align 4
@FKIOCTL = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@B_BUSY = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@B_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4
@B_FAILFAST = common dso_local global i32 0, align 4
@vdev_disk_io_intr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @vdev_disk_io_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_disk_io_start(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.dk_callback*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %3, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @ENXIO, align 4
  %29 = call i8* @SET_ERROR(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = call i32 @zio_interrupt(%struct.TYPE_15__* %33)
  br label %234

35:                                               ; preds = %22, %17
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ZIO_TYPE_IOCTL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = call i32 @vdev_readable(%struct.TYPE_16__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENXIO, align 4
  %47 = call i8* @SET_ERROR(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = call i32 @zio_interrupt(%struct.TYPE_15__* %51)
  br label %234

53:                                               ; preds = %41
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %107 [
    i32 128, label %57
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @zfs_nocacheflush, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %113

61:                                               ; preds = %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOTSUP, align 4
  %68 = call i8* @SET_ERROR(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %113

72:                                               ; preds = %61
  %73 = load i32, i32* @KM_SLEEP, align 4
  %74 = call i8* @kmem_alloc(i32 16, i32 %73)
  %75 = bitcast i8* %74 to %struct.dk_callback*
  store %struct.dk_callback* %75, %struct.dk_callback** %6, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 9
  store %struct.dk_callback* %75, %struct.dk_callback** %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 8
  store i32* @vdev_disk_vsd_ops, i32** %79, align 8
  %80 = load i32, i32* @vdev_disk_ioctl_done, align 4
  %81 = load %struct.dk_callback*, %struct.dk_callback** %6, align 8
  %82 = getelementptr inbounds %struct.dk_callback, %struct.dk_callback* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @FLUSH_VOLATILE, align 4
  %84 = load %struct.dk_callback*, %struct.dk_callback** %6, align 8
  %85 = getelementptr inbounds %struct.dk_callback, %struct.dk_callback* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = load %struct.dk_callback*, %struct.dk_callback** %6, align 8
  %88 = getelementptr inbounds %struct.dk_callback, %struct.dk_callback* %87, i32 0, i32 0
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dk_callback*, %struct.dk_callback** %6, align 8
  %96 = ptrtoint %struct.dk_callback* %95 to i64
  %97 = load i32, i32* @FKIOCTL, align 4
  %98 = load i32, i32* @kcred, align 4
  %99 = call i32 @ldi_ioctl(i32* %91, i32 %94, i64 %96, i32 %97, i32 %98, i32* null)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %72
  br label %234

103:                                              ; preds = %72
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %113

107:                                              ; preds = %53
  %108 = load i32, i32* @ENOTSUP, align 4
  %109 = call i8* @SET_ERROR(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %107, %103, %66, %60
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = call i32 @zio_execute(%struct.TYPE_15__* %114)
  br label %234

116:                                              ; preds = %35
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ZIO_TYPE_READ, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %122, %116
  %129 = phi i1 [ true, %116 ], [ %127, %122 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @ASSERT(i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %133 = call i32 @zio_handle_io_delay(%struct.TYPE_15__* %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @KM_SLEEP, align 4
  %137 = call i8* @kmem_alloc(i32 40, i32 %136)
  %138 = bitcast i8* %137 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %5, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  store %struct.TYPE_19__* %143, %struct.TYPE_19__** %7, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = call i32 @bioinit(%struct.TYPE_19__* %144)
  %146 = load i32, i32* @B_BUSY, align 4
  %147 = load i32, i32* @B_NOCACHE, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ZIO_TYPE_READ, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %128
  %155 = load i32, i32* @B_READ, align 4
  br label %158

156:                                              ; preds = %128
  %157 = load i32, i32* @B_WRITE, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = or i32 %148, %159
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %167 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %158
  %172 = load i32, i32* @B_FAILFAST, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %158
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ZIO_TYPE_READ, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %177
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @abd_borrow_buf(i32 %191, i32 %194)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  br label %210

199:                                              ; preds = %177
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @abd_borrow_buf_copy(i32 %202, i32 %205)
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  br label %210

210:                                              ; preds = %199, %188
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @lbtodb(i32 %213)
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load i64, i64* @vdev_disk_io_intr, align 8
  %223 = inttoptr i64 %222 to i32 (...)*
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  store i32 (...)* %223, i32 (...)** %225, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %230 = call i64 @ldi_strategy(i32* %228, %struct.TYPE_19__* %229)
  %231 = icmp eq i64 %230, 0
  %232 = zext i1 %231 to i32
  %233 = call i32 @VERIFY(i32 %232)
  br label %234

234:                                              ; preds = %210, %113, %102, %45, %27
  ret void
}

declare dso_local i8* @SET_ERROR(i32) #1

declare dso_local i32 @zio_interrupt(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_16__*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @ldi_ioctl(i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @zio_execute(%struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zio_handle_io_delay(%struct.TYPE_15__*) #1

declare dso_local i32 @bioinit(%struct.TYPE_19__*) #1

declare dso_local i32 @abd_borrow_buf(i32, i32) #1

declare dso_local i32 @abd_borrow_buf_copy(i32, i32) #1

declare dso_local i32 @lbtodb(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @ldi_strategy(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
