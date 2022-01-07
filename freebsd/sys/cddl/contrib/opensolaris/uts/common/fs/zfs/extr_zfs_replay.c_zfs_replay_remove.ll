; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_replay.c_zfs_replay_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.componentname = type { i8*, i32, i32, i32, i32, i32, i32 }

@TX_CI = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_remove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.componentname, align 8
  %13 = alloca i32*, align 8
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
  %27 = call i32 @byteswap_uint64_array(%struct.TYPE_5__* %26, i32 8)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @zfs_zget(i32* %29, i32 %32, i32** %11)
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %113

37:                                               ; preds = %28
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TX_CI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @FIGNORECASE, align 4
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 6
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @DELETE, align 4
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 5
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @ISLASTCN, align 4
  %58 = load i32, i32* @SAVENAME, align 4
  %59 = or i32 %57, %58
  %60 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @LK_EXCLUSIVE, align 4
  %62 = load i32, i32* @LK_RETRY, align 4
  %63 = or i32 %61, %62
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @kcred, align 4
  %66 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @curthread, align 4
  %68 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @ZTOV(i32* %69)
  %71 = load i32, i32* @LK_EXCLUSIVE, align 4
  %72 = load i32, i32* @LK_RETRY, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @vn_lock(i32 %70, i32 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @ZTOV(i32* %75)
  %77 = call i32 @VOP_LOOKUP(i32 %76, i32** %13, %struct.componentname* %12)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %49
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @ZTOV(i32* %81)
  %83 = call i32 @VOP_UNLOCK(i32 %82, i32 0)
  br label %108

84:                                               ; preds = %49
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %99 [
    i32 129, label %89
    i32 128, label %94
  ]

89:                                               ; preds = %84
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @ZTOV(i32* %90)
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @VOP_REMOVE(i32 %91, i32* %92, %struct.componentname* %12)
  store i32 %93, i32* %14, align 4
  br label %102

94:                                               ; preds = %84
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @ZTOV(i32* %95)
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @VOP_RMDIR(i32 %96, i32* %97, %struct.componentname* %12)
  store i32 %98, i32* %14, align 4
  br label %102

99:                                               ; preds = %84
  %100 = load i32, i32* @ENOTSUP, align 4
  %101 = call i32 @SET_ERROR(i32 %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %99, %94, %89
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @vput(i32* %103)
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @ZTOV(i32* %105)
  %107 = call i32 @VOP_UNLOCK(i32 %106, i32 0)
  br label %108

108:                                              ; preds = %102, %80
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @ZTOV(i32* %109)
  %111 = call i32 @VN_RELE(i32 %110)
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %35
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @ZTOV(i32*) #1

declare dso_local i32 @VOP_LOOKUP(i32, i32**, %struct.componentname*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @VOP_REMOVE(i32, i32*, %struct.componentname*) #1

declare dso_local i32 @VOP_RMDIR(i32, i32*, %struct.componentname*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vput(i32*) #1

declare dso_local i32 @VN_RELE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
