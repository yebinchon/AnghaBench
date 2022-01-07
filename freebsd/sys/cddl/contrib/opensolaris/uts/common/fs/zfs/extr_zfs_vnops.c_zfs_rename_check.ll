; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_rename_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_rename_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"checkpath: .. not a directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @zfs_rename_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_rename_check(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = icmp eq %struct.TYPE_10__* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @SET_ERROR(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %120

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = icmp eq %struct.TYPE_10__* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %120

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %120

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %9, align 8
  br label %38

38:                                               ; preds = %97, %36
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = call i32 @SA_ZPL_PARENT(%struct.TYPE_11__* %49)
  %51 = call i32 @sa_lookup(i32 %48, i32 %50, i64* %11, i32 8)
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %99

54:                                               ; preds = %38
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @SET_ERROR(i32 %61)
  store i32 %62, i32* %12, align 4
  br label %99

63:                                               ; preds = %54
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %99

70:                                               ; preds = %63
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %99

77:                                               ; preds = %70
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @zfs_zget(%struct.TYPE_11__* %78, i64 %79, %struct.TYPE_10__** %10)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %99

84:                                               ; preds = %77
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = icmp ne %struct.TYPE_10__* %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = call i32 @ZTOV(%struct.TYPE_10__* %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dmu_objset_pool(i32 %93)
  %95 = call i32 @dsl_pool_vnrele_taskq(i32 %94)
  %96 = call i32 @VN_RELE_ASYNC(i32 %90, i32 %95)
  br label %97

97:                                               ; preds = %88, %84
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %9, align 8
  br label %38

99:                                               ; preds = %83, %76, %69, %60, %53
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @ENOTDIR, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = icmp ne %struct.TYPE_10__* %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = call i32 @ZTOV(%struct.TYPE_10__* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dmu_objset_pool(i32 %114)
  %116 = call i32 @dsl_pool_vnrele_taskq(i32 %115)
  %117 = call i32 @VN_RELE_ASYNC(i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %109, %105
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %35, %26, %19
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_11__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_11__*, i64, %struct.TYPE_10__**) #1

declare dso_local i32 @VN_RELE_ASYNC(i32, i32) #1

declare dso_local i32 @ZTOV(%struct.TYPE_10__*) #1

declare dso_local i32 @dsl_pool_vnrele_taskq(i32) #1

declare dso_local i32 @dmu_objset_pool(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
