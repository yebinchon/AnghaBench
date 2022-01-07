; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@RLIM64_INFINITY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 1
  %24 = bitcast %struct.TYPE_12__* %23 to i8*
  store i8* %24, i8** %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = call i32 @byteswap_uint64_array(%struct.TYPE_12__* %28, i32 32)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @zfs_zget(%struct.TYPE_11__* %31, i32 %34, %struct.TYPE_10__** %11)
  store i32 %35, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %104

44:                                               ; preds = %30
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %14, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %87

62:                                               ; preds = %44
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = call i64 @BP_GET_LSIZE(i32* %64)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %17, align 8
  %72 = srem i64 %70, %71
  %73 = load i64, i64* %15, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %17, align 8
  store i64 %75, i64* %16, align 8
  br label %76

76:                                               ; preds = %69, %62
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i32, i32* @UIO_WRITE, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = call i32 @ZTOV(%struct.TYPE_10__* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i32, i32* @UIO_SYSSPACE, align 4
  %95 = load i32, i32* @RLIM64_INFINITY, align 4
  %96 = load i32, i32* @kcred, align 4
  %97 = call i32 @vn_rdwr(i32 %88, i32 %90, i8* %91, i64 %92, i64 %93, i32 %94, i32 0, i32 %95, i32 %96, i32* %13)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = call i32 @ZTOV(%struct.TYPE_10__* %98)
  %100 = call i32 @VN_RELE(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %87, %42
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_11__*, i32, %struct.TYPE_10__**) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i32 @vn_rdwr(i32, i32, i8*, i64, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ZTOV(%struct.TYPE_10__*) #1

declare dso_local i32 @VN_RELE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
