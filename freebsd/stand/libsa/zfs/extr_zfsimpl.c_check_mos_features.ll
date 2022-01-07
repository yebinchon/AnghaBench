; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_check_mos_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_check_mos_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }

@DMU_OT_OBJECT_DIRECTORY = common dso_local global i64 0, align 8
@DMU_POOL_FEATURES_FOR_READ = common dso_local global i32 0, align 4
@DMU_OTN_ZAP_METADATA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@zap_scratch = common dso_local global i64 0, align 8
@ZBT_MICRO = common dso_local global i64 0, align 8
@check_feature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @check_mos_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mos_features(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* @DMU_OT_OBJECT_DIRECTORY, align 8
  %13 = call i32 @objset_get_dnode(%struct.TYPE_13__* %9, i32* %11, i64 %12, %struct.TYPE_14__* %4)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = load i32, i32* @DMU_POOL_FEATURES_FOR_READ, align 4
  %20 = call i32 @zap_lookup(%struct.TYPE_13__* %18, %struct.TYPE_14__* %4, i32 %19, i32 8, i32 1, i64* %5)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %67

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @objset_get_dnode(%struct.TYPE_13__* %24, i32* %26, i64 %27, %struct.TYPE_14__* %4)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMU_OTN_ZAP_METADATA, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 512
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %7, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i64, i64* @zap_scratch, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @dnode_read(%struct.TYPE_13__* %44, %struct.TYPE_14__* %4, i32 0, i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %39
  %52 = load i64, i64* @zap_scratch, align 8
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @ZBT_MICRO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @check_feature, align 4
  %60 = call i32 @mzap_list(%struct.TYPE_14__* %4, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = load i32, i32* @check_feature, align 4
  %64 = call i32 @fzap_list(%struct.TYPE_13__* %62, %struct.TYPE_14__* %4, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %49, %37, %30, %22, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @objset_get_dnode(%struct.TYPE_13__*, i32*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @zap_lookup(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32, i32, i64*) #1

declare dso_local i64 @dnode_read(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i64, i64) #1

declare dso_local i32 @mzap_list(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @fzap_list(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
