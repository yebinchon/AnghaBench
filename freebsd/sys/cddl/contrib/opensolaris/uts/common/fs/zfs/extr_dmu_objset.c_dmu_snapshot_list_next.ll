; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_snapshot_list_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_snapshot_list_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_snapshot_list_next(%struct.TYPE_14__* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %14, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = call i32 @dmu_objset_pool(%struct.TYPE_14__* %20)
  %22 = call i32 @dsl_pool_config_held(i32 %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %25 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__* %24)
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOENT, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %87

32:                                               ; preds = %6
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %41 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__* %40)
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zap_cursor_init_serialized(i32* %15, i32 %39, i64 %43, i32 %45)
  %47 = call i64 @zap_cursor_retrieve(i32* %15, %struct.TYPE_13__* %16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = call i32 @zap_cursor_fini(i32* %15)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %87

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = call i32 @zap_cursor_fini(i32* %15)
  %62 = load i32, i32* @ENAMETOOLONG, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %87

64:                                               ; preds = %53
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i8* %65, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = call i32 @zap_cursor_advance(i32* %15)
  %84 = call i32 @zap_cursor_serialize(i32* %15)
  %85 = load i32*, i32** %12, align 8
  store i32 %84, i32* %85, align 4
  %86 = call i32 @zap_cursor_fini(i32* %15)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %82, %60, %49, %29
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32, i64, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_serialize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
