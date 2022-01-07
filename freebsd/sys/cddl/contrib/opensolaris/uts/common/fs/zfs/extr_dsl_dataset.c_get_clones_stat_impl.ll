; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_get_clones_stat_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_get_clones_stat_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_clones_stat_impl(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = call i32 @dsl_pool_config_held(%struct.TYPE_14__* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_13__* %27)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_13__* %34)
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @zap_count(i32* %33, i64 %37, i32* %6)
  %39 = call i32 @VERIFY0(i32 %38)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_13__* %42)
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %3, align 4
  br label %89

50:                                               ; preds = %40
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_13__* %52)
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @zap_cursor_init(i32* %8, i32* %51, i64 %55)
  br label %57

57:                                               ; preds = %85, %50
  %58 = call i64 @zap_cursor_retrieve(i32* %8, %struct.TYPE_12__* %9)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %11, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %12, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_14__* %69, i32 %71, i32 %72, %struct.TYPE_13__** %10)
  %74 = call i32 @VERIFY0(i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = call i32 @dsl_dir_name(%struct.TYPE_15__* %77, i8* %64)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fnvlist_add_boolean(i32* %79, i8* %64)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = load i32, i32* @FTAG, align 4
  %83 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %81, i32 %82)
  %84 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %85

85:                                               ; preds = %60
  %86 = call i32 @zap_cursor_advance(i32* %8)
  br label %57

87:                                               ; preds = %57
  %88 = call i32 @zap_cursor_fini(i32* %8)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %48
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_count(i32*, i64, i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_14__*, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @dsl_dir_name(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_13__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
