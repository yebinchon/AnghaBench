; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_dnode_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_dnode_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i8* }

@DMU_OT_SA = common dso_local global i64 0, align 8
@DNODE_FLAG_SPILL_BLKPTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SA_SYMLINK_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*, i64)* @zfs_dnode_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_dnode_readlink(i32* %0, %struct.TYPE_6__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMU_OT_SA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %4
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = call i64 @DN_BONUS(%struct.TYPE_6__* %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %11, align 8
  br label %61

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DNODE_FLAG_SPILL_BLKPTR, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %5, align 4
  br label %106

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = call i32* @DN_SPILL_BLKPTR(%struct.TYPE_6__* %41)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i64 @BP_GET_LSIZE(i32* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @zfs_alloc(i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @zio_read(i32* %47, i32* %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @zfs_free(i8* %54, i64 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %106

58:                                               ; preds = %40
  %59 = load i8*, i8** %13, align 8
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %11, align 8
  br label %61

61:                                               ; preds = %58, %27
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @SA_HDR_SIZE(i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = ptrtoint i32* %64 to i64
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = load i64, i64* @SA_SYMLINK_OFFSET, align 8
  %70 = add i64 %68, %69
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %61
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @zfs_free(i8* %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %61
  store i32 0, i32* %5, align 4
  br label %106

83:                                               ; preds = %4
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ule i64 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @memcpy(i8* %91, i8* %95, i64 %96)
  br label %104

98:                                               ; preds = %83
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @dnode_read(i32* %99, %struct.TYPE_6__* %100, i32 0, i8* %101, i64 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %90
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %82, %53, %38
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @DN_BONUS(%struct.TYPE_6__*) #1

declare dso_local i32* @DN_SPILL_BLKPTR(%struct.TYPE_6__*) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i8* @zfs_alloc(i64) #1

declare dso_local i32 @zio_read(i32*, i32*, i8*) #1

declare dso_local i32 @zfs_free(i8*, i64) #1

declare dso_local i32 @SA_HDR_SIZE(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dnode_read(i32*, %struct.TYPE_6__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
