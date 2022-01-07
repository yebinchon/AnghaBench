; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_snapshot_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @dmu_tx_pool(i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @nvlist_next_nvpair(i32 %19, i32* null)
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %70, %2
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @nvpair_name(i32* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 64)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = add nsw i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @strlcpy(i8* %28, i8* %33, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @dsl_dataset_hold(i32* %42, i8* %28, i32 %43, %struct.TYPE_6__** %8)
  %45 = call i32 @VERIFY0(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @dsl_dataset_snapshot_sync_impl(%struct.TYPE_6__* %46, i8* %48, i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %24
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @dsl_props_set_sync_impl(i32 %58, i32 %59, i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %55, %24
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %69)
  br label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32* @nvlist_next_nvpair(i32 %73, i32* %74)
  store i32* %75, i32** %7, align 8
  br label %21

76:                                               ; preds = %21
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @dsl_dataset_snapshot_sync_impl(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @dsl_props_set_sync_impl(i32, i32, i32*, i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_6__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
