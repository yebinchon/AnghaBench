; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_copy_fuid_2_ace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_copy_fuid_2_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ACE_TYPE_FLAGS = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@ZFS_ACE_GROUP = common dso_local global i32 0, align 4
@ZFS_ACE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*, i32)* @zfs_copy_fuid_2_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_copy_fuid_2_ace(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %15, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %16, align 8
  br label %23

23:                                               ; preds = %90, %33, %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i32* @zfs_acl_next_ace(i32* %24, i32* %25, i64* %11, i32* %12, i32* %13, i32* %14)
  store i32* %26, i32** %15, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %105

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  switch i32 %29, label %53 [
    i32 131, label %30
    i32 130, label %30
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %28, %28, %28, %28
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %23

34:                                               ; preds = %30
  %35 = load i32*, i32** %15, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %18, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %38 = bitcast %struct.TYPE_5__* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %17, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bcopy(i32 %41, i32 %44, i32 4)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bcopy(i32 %48, i32 %51, i32 4)
  store i64 8, i64* %19, align 8
  br label %54

53:                                               ; preds = %28
  store i64 24, i64* %19, align 8
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @ACE_TYPE_FLAGS, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @ACE_OWNER, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* @OWNING_GROUP, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @ACE_EVERYONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @ZFS_ACE_GROUP, align 4
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @ZFS_ACE_USER, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = call i64 @zfs_fuid_map_id(i32* %70, i64 %71, i32* %72, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  br label %90

86:                                               ; preds = %65, %61, %54
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %101 = ptrtoint %struct.TYPE_5__* %100 to i64
  %102 = load i64, i64* %19, align 8
  %103 = add i64 %101, %102
  %104 = inttoptr i64 %103 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %16, align 8
  br label %23

105:                                              ; preds = %23
  ret void
}

declare dso_local i32* @zfs_acl_next_ace(i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i64 @zfs_fuid_map_id(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
