; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i64, i64, i32, i64, i64, i64, i32 }

@ZIO_CHECKSUM_OFF = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_COMPRESS_OFF = common dso_local global i64 0, align 8
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i32 0, align 4
@ZIO_FLAG_DDT_CHILD = common dso_local global i32 0, align 4
@ZIO_DDT_CHILD_WRITE_PIPELINE = common dso_local global i32 0, align 4
@ZIO_WRITE_PIPELINE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @zio_write(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, %struct.TYPE_9__* %7, i32* %8, i32* %9, i32* %10, i32* %11, i8* %12, i32 %13, i32 %14, i32* %15) #0 {
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %17, align 8
  store i32* %1, i32** %18, align 8
  store i32 %2, i32* %19, align 4
  store i32* %3, i32** %20, align 8
  store i32* %4, i32** %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %24, align 8
  store i32* %8, i32** %25, align 8
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32* %11, i32** %28, align 8
  store i8* %12, i8** %29, align 8
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  store i32* %15, i32** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ZIO_CHECKSUM_OFF, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %16
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZIO_CHECKSUM_FUNCTIONS, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ZIO_COMPRESS_OFF, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ZIO_COMPRESS_FUNCTIONS, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @DMU_OT_IS_VALID(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 32
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** %18, align 8
  %78 = call i64 @spa_max_replication(i32* %77)
  %79 = icmp sle i64 %76, %78
  br label %80

80:                                               ; preds = %73, %68, %63, %57, %51, %45, %39, %16
  %81 = phi i1 [ false, %68 ], [ false, %63 ], [ false, %57 ], [ false, %51 ], [ false, %45 ], [ false, %39 ], [ false, %16 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load i32*, i32** %20, align 8
  %88 = load i32*, i32** %21, align 8
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i32*, i32** %28, align 8
  %92 = load i8*, i8** %29, align 8
  %93 = load i32, i32* @ZIO_TYPE_WRITE, align 4
  %94 = load i32, i32* %30, align 4
  %95 = load i32, i32* %31, align 4
  %96 = load i32*, i32** %32, align 8
  %97 = load i32, i32* @ZIO_STAGE_OPEN, align 4
  %98 = load i32, i32* %31, align 4
  %99 = load i32, i32* @ZIO_FLAG_DDT_CHILD, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %80
  %103 = load i32, i32* @ZIO_DDT_CHILD_WRITE_PIPELINE, align 4
  br label %106

104:                                              ; preds = %80
  %105 = load i32, i32* @ZIO_WRITE_PIPELINE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = call %struct.TYPE_8__* @zio_create(%struct.TYPE_8__* %84, i32* %85, i32 %86, i32* %87, i32* %88, i32 %89, i32 %90, i32* %91, i8* %92, i32 %93, i32 %94, i32 %95, i32* null, i32 0, i32* %96, i32 %97, i32 %107)
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %33, align 8
  %109 = load i32*, i32** %25, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32* %109, i32** %111, align 8
  %112 = load i32*, i32** %26, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i32* %112, i32** %114, align 8
  %115 = load i32*, i32** %27, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %121 = bitcast %struct.TYPE_9__* %119 to i8*
  %122 = bitcast %struct.TYPE_9__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 56, i1 false)
  %123 = load i32*, i32** %21, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %106
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load i64, i64* @B_FALSE, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  store i64 %132, i64* %135, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  store i64 %132, i64* %138, align 8
  br label %139

139:                                              ; preds = %131, %125, %106
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  ret %struct.TYPE_8__* %140
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @DMU_OT_IS_VALID(i32) #1

declare dso_local i64 @spa_max_replication(i32*) #1

declare dso_local %struct.TYPE_8__* @zio_create(%struct.TYPE_8__*, i32*, i32, i32*, i32*, i32, i32, i32*, i8*, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
