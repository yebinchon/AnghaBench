; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_acl_v0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_acl_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i64 }

@VSA_ACE = common dso_local global i32 0, align 4
@VSA_ACECNT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_acl_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_acl_v0(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 1
  %21 = bitcast %struct.TYPE_7__* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = call i32 @byteswap_uint64_array(%struct.TYPE_7__* %25, i32 8)
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @zfs_oldace_byteswap(i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zfs_zget(i32* %33, i32 %36, i32** %13)
  store i32 %37, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %32
  %42 = call i32 @bzero(%struct.TYPE_6__* %11, i32 32)
  %43 = load i32, i32* @VSA_ACE, align 4
  %44 = load i32, i32* @VSA_ACECNT, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32* @ZTOV(i32* %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @LK_EXCLUSIVE, align 4
  %64 = load i32, i32* @LK_RETRY, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @vn_lock(i32* %62, i32 %65)
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* @kcred, align 4
  %69 = call i32 @zfs_setsecattr(i32* %67, %struct.TYPE_6__* %11, i32 0, i32 %68, i32* null)
  store i32 %69, i32* %14, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @VOP_UNLOCK(i32* %70, i32 0)
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @VN_RELE(i32* %72)
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %41, %39
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @zfs_oldace_byteswap(i32*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @ZTOV(i32*) #1

declare dso_local i32 @vn_lock(i32*, i32) #1

declare dso_local i32 @zfs_setsecattr(i32*, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

declare dso_local i32 @VN_RELE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
