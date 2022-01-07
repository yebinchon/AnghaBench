; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snap_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }

@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@MT_NORMALIZE = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_snap_lookup(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = call %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__* %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @MT_NORMALIZE, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @zap_lookup_norm(i32* %32, i32 %33, i8* %34, i32 8, i32 1, i32* %35, i32 %36, i32* null, i32 0, i32* null)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ENOTSUP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MT_NORMALIZE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @zap_lookup(i32* %47, i32 %48, i8* %49, i32 8, i32 1, i32* %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %46, %41, %31
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__*) #1

declare dso_local i32 @zap_lookup_norm(i32*, i32, i8*, i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
