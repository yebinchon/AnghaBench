; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_send_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_send_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32*, i32 }

@FTAG = common dso_local global i32 0, align 4
@curproc = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @zfs_ioc_send_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_send_progress(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FTAG, align 4
  %12 = call i32 @dsl_pool_hold(i32 %10, i32 %11, i32** %4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FTAG, align 4
  %23 = call i32 @dsl_dataset_hold(i32* %18, i32 %21, i32 %22, %struct.TYPE_11__** %5)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_pool_rele(i32* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %17
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @mutex_enter(i32* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = call %struct.TYPE_12__* @list_head(i32* %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %6, align 8
  br label %38

38:                                               ; preds = %57, %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @curproc, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %62

56:                                               ; preds = %49, %41
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = call %struct.TYPE_12__* @list_next(i32* %59, %struct.TYPE_12__* %60)
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %6, align 8
  br label %38

62:                                               ; preds = %55, %38
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOENT, align 4
  %74 = call i32 @SET_ERROR(i32 %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = call i32 @mutex_exit(i32* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = load i32, i32* @FTAG, align 4
  %81 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %79, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @dsl_pool_rele(i32* %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %75, %26, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @dsl_pool_hold(i32, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_12__* @list_head(i32*) #1

declare dso_local %struct.TYPE_12__* @list_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
