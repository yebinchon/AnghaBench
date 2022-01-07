; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_file.c_vdev_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_file.c_vdev_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i8*, %struct.TYPE_18__*, %struct.TYPE_15__, i32, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_19__ = type { i32, i32 }

@B_TRUE = common dso_local global i8* null, align 8
@VDEV_AUX_BAD_LABEL = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@FOFFMAX = common dso_local global i32 0, align 4
@rootdir = common dso_local global i32 0, align 4
@VDEV_AUX_OPEN_FAILED = common dso_local global i8* null, align 8
@AT_SIZE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32*, i32*, i32*)* @vdev_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_file_open(%struct.TYPE_17__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** @B_TRUE, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 47
  br i1 %30, label %31, label %38

31:                                               ; preds = %23, %5
  %32 = load i8*, i8** @VDEV_AUX_BAD_LABEL, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %152

38:                                               ; preds = %23
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = icmp ne %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %12, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %13, align 8
  br label %106

54:                                               ; preds = %38
  %55 = load i32, i32* @KM_SLEEP, align 4
  %56 = call %struct.TYPE_18__* @kmem_zalloc(i32 8, i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %58, align 8
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %12, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br label %71

71:                                               ; preds = %63, %54
  %72 = phi i1 [ false, %54 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i32, i32* @UIO_SYSSPACE, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @spa_mode(i32 %82)
  %84 = load i32, i32* @FOFFMAX, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @rootdir, align 4
  %87 = call i32 @vn_openat(i8* %78, i32 %79, i32 %85, i32 0, %struct.TYPE_16__** %13, i32 0, i32 0, i32 %86, i32 -1)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %71
  %91 = load i8*, i8** @VDEV_AUX_OPEN_FAILED, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = call i32 @kmem_free(%struct.TYPE_18__* %97, i32 8)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %100, align 8
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %152

102:                                              ; preds = %71
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %105, align 8
  br label %106

106:                                              ; preds = %102, %43
  %107 = load i32, i32* @AT_SIZE, align 4
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = load i32, i32* @LK_SHARED, align 4
  %111 = load i32, i32* @LK_RETRY, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @vn_lock(%struct.TYPE_16__* %109, i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %115 = load i32, i32* @kcred, align 4
  %116 = call i32 @VOP_GETATTR(%struct.TYPE_16__* %114, %struct.TYPE_19__* %14, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %118 = call i32 @VOP_UNLOCK(%struct.TYPE_16__* %117, i32 0)
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %106
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @spa_mode(i32 %125)
  %127 = load i32, i32* @kcred, align 4
  %128 = call i32 @VOP_CLOSE(%struct.TYPE_16__* %122, i32 %126, i32 1, i32 0, i32 %127, i32* null)
  %129 = load i8*, i8** @VDEV_AUX_OPEN_FAILED, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = call i32 @kmem_free(%struct.TYPE_18__* %135, i32 8)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %138, align 8
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %6, align 4
  br label %152

140:                                              ; preds = %106
  %141 = load i8*, i8** @B_TRUE, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %9, align 8
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %149 = load i32*, i32** %10, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %151 = load i32*, i32** %11, align 8
  store i32 %150, i32* %151, align 4
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %140, %121, %90, %31
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_18__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @vn_openat(i8*, i32, i32, i32, %struct.TYPE_16__**, i32, i32, i32, i32) #1

declare dso_local i32 @spa_mode(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vn_lock(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.TYPE_16__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @VOP_CLOSE(%struct.TYPE_16__*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
