; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_dnode_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_dnode_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64 }
%struct.stat = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

@DMU_OT_SA = common dso_local global i64 0, align 8
@DNODE_FLAG_SPILL_BLKPTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SA_MODE_OFFSET = common dso_local global i32 0, align 4
@SA_UID_OFFSET = common dso_local global i32 0, align 4
@SA_GID_OFFSET = common dso_local global i32 0, align 4
@SA_SIZE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.stat*)* @zfs_dnode_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_dnode_stat(i32* %0, %struct.TYPE_7__* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMU_OT_SA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.stat*, %struct.stat** %7, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.stat*, %struct.stat** %7, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.stat*, %struct.stat** %7, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.stat*, %struct.stat** %7, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %143

45:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call i64 @DN_BONUS(%struct.TYPE_7__* %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %9, align 8
  br label %85

54:                                               ; preds = %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DNODE_FLAG_SPILL_BLKPTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %54
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = call i32* @DN_SPILL_BLKPTR(%struct.TYPE_7__* %62)
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i64 @BP_GET_LSIZE(i32* %64)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i8* @zfs_alloc(i64 %66)
  store i8* %67, i8** %12, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @zio_read(i32* %68, i32* %69, i8* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @zfs_free(i8* %75, i64 %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  br label %144

79:                                               ; preds = %61
  %80 = load i8*, i8** %12, align 8
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %9, align 8
  br label %84

82:                                               ; preds = %54
  %83 = load i32, i32* @EIO, align 4
  store i32 %83, i32* %4, align 4
  br label %144

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @SA_HDR_SIZE(i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* @SA_MODE_OFFSET, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to i8**
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.stat*, %struct.stat** %7, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* @SA_UID_OFFSET, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = bitcast i8* %107 to i8**
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.stat*, %struct.stat** %7, align 8
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* @SA_GID_OFFSET, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = bitcast i8* %119 to i8**
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.stat*, %struct.stat** %7, align 8
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i32, i32* @SA_SIZE_OFFSET, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i8**
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.stat*, %struct.stat** %7, align 8
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %85
  %139 = load i8*, i8** %12, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @zfs_free(i8* %139, i64 %140)
  br label %142

142:                                              ; preds = %138, %85
  br label %143

143:                                              ; preds = %142, %20
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %82, %74
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @DN_BONUS(%struct.TYPE_7__*) #1

declare dso_local i32* @DN_SPILL_BLKPTR(%struct.TYPE_7__*) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i8* @zfs_alloc(i64) #1

declare dso_local i32 @zio_read(i32*, i32*, i8*) #1

declare dso_local i32 @zfs_free(i8*, i64) #1

declare dso_local i32 @SA_HDR_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
