; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.componentname = type { i8*, i32, i32, i32 }

@TX_CI = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_link(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.componentname, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %22 = bitcast %struct.TYPE_5__* %21 to i8*
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %15, align 4
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = call i32 @byteswap_uint64_array(%struct.TYPE_5__* %26, i32 12)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @zfs_zget(i32* %29, i32 %32, i32** %11)
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %100

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @zfs_zget(i32* %38, i32 %41, i32** %12)
  store i32 %42, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @ZTOV(i32* %45)
  %47 = call i32 @VN_RELE(i32 %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %4, align 4
  br label %100

49:                                               ; preds = %37
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TX_CI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @FIGNORECASE, align 4
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* @kcred, align 4
  %65 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @curthread, align 4
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @SAVENAME, align 4
  %69 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @ZTOV(i32* %70)
  %72 = load i32, i32* @LK_EXCLUSIVE, align 4
  %73 = load i32, i32* @LK_RETRY, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @vn_lock(i32 %71, i32 %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @ZTOV(i32* %76)
  %78 = load i32, i32* @LK_EXCLUSIVE, align 4
  %79 = load i32, i32* @LK_RETRY, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @vn_lock(i32 %77, i32 %80)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @ZTOV(i32* %82)
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @ZTOV(i32* %84)
  %86 = call i32 @VOP_LINK(i32 %83, i32 %85, %struct.componentname* %13)
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @ZTOV(i32* %87)
  %89 = call i32 @VOP_UNLOCK(i32 %88, i32 0)
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @ZTOV(i32* %90)
  %92 = call i32 @VOP_UNLOCK(i32 %91, i32 0)
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @ZTOV(i32* %93)
  %95 = call i32 @VN_RELE(i32 %94)
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @ZTOV(i32* %96)
  %98 = call i32 @VN_RELE(i32 %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %61, %44, %35
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @VN_RELE(i32) #1

declare dso_local i32 @ZTOV(i32*) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @VOP_LINK(i32, i32, %struct.componentname*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
