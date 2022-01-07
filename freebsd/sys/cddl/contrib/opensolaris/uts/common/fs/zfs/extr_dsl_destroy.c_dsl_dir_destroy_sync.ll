; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_dsl_dir_destroy_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_dsl_dir_destroy_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i32*, i32, i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@DD_USED_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @dsl_dir_destroy_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_destroy_sync(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_11__* @dmu_tx_pool(i32* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_11__* @dmu_tx_pool(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = call i32 @RRW_WRITE_HELD(i32* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dsl_dir_hold_obj(%struct.TYPE_11__* %19, i32 %20, i32* null, i32 %21, %struct.TYPE_12__** %5)
  %23 = call i32 @VERIFY0(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %24)
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ASSERT0(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 37
  br i1 %35, label %36, label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_12__* %44, i32 -1, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %41, %36, %2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @dsl_dir_set_reservation_sync_impl(%struct.TYPE_12__* %49, i32 0, i32* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %52)
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ASSERT0(i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %57)
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ASSERT0(i32 %60)
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %75, %48
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @DD_USED_NUM, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %67)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ASSERT0(i32 %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %62

78:                                               ; preds = %62
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %80)
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @zap_destroy(i32* %79, i64 %83, i32* %84)
  %86 = call i32 @VERIFY0(i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %88)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @zap_destroy(i32* %87, i64 %91, i32* %92)
  %94 = call i32 @VERIFY0(i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %95)
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %78
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %102)
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @zap_destroy(i32* %101, i64 %105, i32* %106)
  %108 = call i32 @VERIFY0(i32 %107)
  br label %109

109:                                              ; preds = %100, %78
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %111)
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @dsl_deleg_destroy(i32* %110, i32 %114, i32* %115)
  %117 = call i32 @VERIFY0(i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %121)
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @zap_remove(i32* %118, i64 %124, i8* %127, i32* %128)
  %130 = call i32 @VERIFY0(i32 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %132 = load i32, i32* @FTAG, align 4
  %133 = call i32 @dsl_dir_rele(%struct.TYPE_12__* %131, i32 %132)
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @dmu_object_free_zapified(i32* %134, i32 %135, i32* %136)
  ret void
}

declare dso_local %struct.TYPE_11__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RRW_WRITE_HELD(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_11__*, i32, i32*, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @dsl_fs_ss_count_adjust(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dir_set_reservation_sync_impl(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @zap_destroy(i32*, i64, i32*) #1

declare dso_local i32 @dsl_deleg_destroy(i32*, i32, i32*) #1

declare dso_local i32 @zap_remove(i32*, i64, i8*, i32*) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dmu_object_free_zapified(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
