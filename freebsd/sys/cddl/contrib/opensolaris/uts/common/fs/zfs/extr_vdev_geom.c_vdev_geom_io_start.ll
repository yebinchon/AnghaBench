; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_io_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_io_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.bio*, i32, i32, i32, i32, i8*, i32, %struct.TYPE_11__* }
%struct.bio = type { i32, i32, i32, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.g_consumer*, i32, i32 }
%struct.g_consumer = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@zfs_nocacheflush = common dso_local global i32 0, align 4
@vdev_geom_bio_flush_disable = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@vdev_geom_bio_delete_disable = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@BIO_DELETE = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@vdev_geom_io_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @vdev_geom_io_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_geom_io_start(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %73 [
    i32 130, label %13
    i32 131, label %55
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @vdev_readable(%struct.TYPE_11__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  %19 = call i8* @SET_ERROR(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = call i32 @zio_interrupt(%struct.TYPE_10__* %22)
  br label %205

24:                                               ; preds = %13
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %46 [
    i32 132, label %28
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @zfs_nocacheflush, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @vdev_geom_bio_flush_disable, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  br label %51

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOTSUP, align 4
  %42 = call i8* @SET_ERROR(i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  br label %51

45:                                               ; preds = %35
  br label %74

46:                                               ; preds = %24
  %47 = load i32, i32* @ENOTSUP, align 4
  %48 = call i8* @SET_ERROR(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %40, %34
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = call i32 @zio_execute(%struct.TYPE_10__* %53)
  br label %205

55:                                               ; preds = %1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOTSUP, align 4
  %62 = call i8* @SET_ERROR(i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  br label %70

65:                                               ; preds = %55
  %66 = load i32, i32* @vdev_geom_bio_delete_disable, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %74

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %60
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = call i32 @zio_execute(%struct.TYPE_10__* %71)
  br label %205

73:                                               ; preds = %1
  br label %74

74:                                               ; preds = %73, %68, %45
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 129
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 128
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 131
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 130
  br label %94

94:                                               ; preds = %89, %84, %79, %74
  %95 = phi i1 [ true, %84 ], [ true, %79 ], [ true, %74 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @ASSERT(i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.g_consumer*, %struct.g_consumer** %99, align 8
  store %struct.g_consumer* %100, %struct.g_consumer** %4, align 8
  %101 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %102 = icmp eq %struct.g_consumer* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load i32, i32* @ENXIO, align 4
  %105 = call i8* @SET_ERROR(i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = call i32 @zio_interrupt(%struct.TYPE_10__* %108)
  br label %205

110:                                              ; preds = %94
  %111 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %111, %struct.bio** %5, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = load %struct.bio*, %struct.bio** %5, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 5
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %195 [
    i32 129, label %118
    i32 128, label %118
    i32 131, label %164
    i32 130, label %180
  ]

118:                                              ; preds = %110, %110
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = call i32 @zio_handle_io_delay(%struct.TYPE_10__* %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.bio*, %struct.bio** %5, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 129
  br i1 %136, label %137, label %150

137:                                              ; preds = %118
  %138 = load i32, i32* @BIO_READ, align 4
  %139 = load %struct.bio*, %struct.bio** %5, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32* @abd_borrow_buf(i32 %143, i32 %146)
  %148 = load %struct.bio*, %struct.bio** %5, align 8
  %149 = getelementptr inbounds %struct.bio, %struct.bio* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  br label %163

150:                                              ; preds = %118
  %151 = load i32, i32* @BIO_WRITE, align 4
  %152 = load %struct.bio*, %struct.bio** %5, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32* @abd_borrow_buf_copy(i32 %156, i32 %159)
  %161 = load %struct.bio*, %struct.bio** %5, align 8
  %162 = getelementptr inbounds %struct.bio, %struct.bio* %161, i32 0, i32 3
  store i32* %160, i32** %162, align 8
  br label %163

163:                                              ; preds = %150, %137
  br label %195

164:                                              ; preds = %110
  %165 = load i32, i32* @BIO_DELETE, align 4
  %166 = load %struct.bio*, %struct.bio** %5, align 8
  %167 = getelementptr inbounds %struct.bio, %struct.bio* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load %struct.bio*, %struct.bio** %5, align 8
  %169 = getelementptr inbounds %struct.bio, %struct.bio* %168, i32 0, i32 3
  store i32* null, i32** %169, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.bio*, %struct.bio** %5, align 8
  %174 = getelementptr inbounds %struct.bio, %struct.bio* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.bio*, %struct.bio** %5, align 8
  %179 = getelementptr inbounds %struct.bio, %struct.bio* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  br label %195

180:                                              ; preds = %110
  %181 = load i32, i32* @BIO_FLUSH, align 4
  %182 = load %struct.bio*, %struct.bio** %5, align 8
  %183 = getelementptr inbounds %struct.bio, %struct.bio* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load %struct.bio*, %struct.bio** %5, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 3
  store i32* null, i32** %185, align 8
  %186 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %187 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.bio*, %struct.bio** %5, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.bio*, %struct.bio** %5, align 8
  %194 = getelementptr inbounds %struct.bio, %struct.bio* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %110, %180, %164, %163
  %196 = load i32, i32* @vdev_geom_io_intr, align 4
  %197 = load %struct.bio*, %struct.bio** %5, align 8
  %198 = getelementptr inbounds %struct.bio, %struct.bio* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.bio*, %struct.bio** %5, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  store %struct.bio* %199, %struct.bio** %201, align 8
  %202 = load %struct.bio*, %struct.bio** %5, align 8
  %203 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %204 = call i32 @g_io_request(%struct.bio* %202, %struct.g_consumer* %203)
  br label %205

205:                                              ; preds = %195, %103, %70, %52, %17
  ret void
}

declare dso_local i32 @vdev_readable(%struct.TYPE_11__*) #1

declare dso_local i8* @SET_ERROR(i32) #1

declare dso_local i32 @zio_interrupt(%struct.TYPE_10__*) #1

declare dso_local i32 @zio_execute(%struct.TYPE_10__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @zio_handle_io_delay(%struct.TYPE_10__*) #1

declare dso_local i32* @abd_borrow_buf(i32, i32) #1

declare dso_local i32* @abd_borrow_buf_copy(i32, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
