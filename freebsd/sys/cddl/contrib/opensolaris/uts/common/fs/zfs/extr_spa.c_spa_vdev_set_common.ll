; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_set_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_set_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@SCL_ALL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_set_common(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @spa_writeable(i32* %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @SCL_ALL, align 4
  %18 = call i32 @spa_vdev_state_enter(i32* %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* @B_TRUE, align 8
  %22 = call %struct.TYPE_6__* @spa_lookup_by_guid(i32* %19, i32 %20, i64 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @ENOENT, align 4
  %27 = call i32 @spa_vdev_state_exit(i32* %25, %struct.TYPE_6__* null, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %103

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @ENOTSUP, align 4
  %38 = call i32 @spa_vdev_state_exit(i32* %36, %struct.TYPE_6__* null, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %103

39:                                               ; preds = %28
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @strcmp(i8* %43, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @spa_strfree(i32* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @spa_strdup(i8* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load i64, i64* @B_TRUE, align 8
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %49, %42
  br label %93

61:                                               ; preds = %39
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @spa_strdup(i8* %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  %72 = load i64, i64* @B_TRUE, align 8
  store i64 %72, i64* %11, align 8
  br label %92

73:                                               ; preds = %61
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @strcmp(i8* %74, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @spa_strfree(i32* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @spa_strdup(i8* %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  %90 = load i64, i64* @B_TRUE, align 8
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %80, %73
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32*, i32** %6, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  br label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi %struct.TYPE_6__* [ %98, %97 ], [ null, %99 ]
  %102 = call i32 @spa_vdev_state_exit(i32* %94, %struct.TYPE_6__* %101, i32 0)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %35, %24
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(i32*) #1

declare dso_local i32 @spa_vdev_state_enter(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @spa_lookup_by_guid(i32*, i32, i64) #1

declare dso_local i32 @spa_vdev_state_exit(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @spa_strfree(i32*) #1

declare dso_local i8* @spa_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
