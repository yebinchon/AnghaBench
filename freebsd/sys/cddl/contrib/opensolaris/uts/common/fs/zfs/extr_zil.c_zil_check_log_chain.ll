; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_check_log_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_check_log_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }

@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't open objset %llu, error %d\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@zil_claim_log_block = common dso_local global i32 0, align 4
@zil_claim_log_record = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zil_check_log_chain(i32* %0, %struct.TYPE_29__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %20 = call i32 @dmu_objset_from_ds(%struct.TYPE_29__* %19, %struct.TYPE_28__** %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* @CE_WARN, align 4
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @cmn_err(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %129

30:                                               ; preds = %3
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %32 = call %struct.TYPE_25__* @dmu_objset_zil(%struct.TYPE_28__* %31)
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %8, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %37, %struct.TYPE_30__** %10, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %39 = call i32 @BP_IS_HOLE(%struct.TYPE_30__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %97, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @B_TRUE, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCL_STATE, align 4
  %47 = load i32, i32* @FTAG, align 4
  %48 = load i32, i32* @RW_READER, align 4
  %49 = call i32 @spa_config_enter(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @DVA_GET_VDEV(i32* %56)
  %58 = call %struct.TYPE_27__* @vdev_lookup_top(i32 %52, i32 %57)
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %12, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %65 = call i64 @vdev_is_dead(%struct.TYPE_27__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %69 = call i32 @vdev_log_state_valid(%struct.TYPE_27__* %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %63, %41
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SCL_STATE, align 4
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @spa_config_exit(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %129

80:                                               ; preds = %70
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %82 = call %struct.TYPE_26__* @zil_header_in_syncing_context(%struct.TYPE_25__* %81)
  store %struct.TYPE_26__* %82, %struct.TYPE_26__** %14, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %129

96:                                               ; preds = %90, %80
  br label %97

97:                                               ; preds = %96, %30
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %99 = load i32, i32* @zil_claim_log_block, align 4
  %100 = load i32, i32* @zil_claim_log_record, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %114

109:                                              ; preds = %97
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @spa_min_claim_txg(i32 %112)
  br label %114

114:                                              ; preds = %109, %108
  %115 = phi i64 [ -1, %108 ], [ %113, %109 ]
  %116 = call i32 @zil_parse(%struct.TYPE_25__* %98, i32 %99, i32 %100, i8* %101, i64 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @ECKSUM, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @ENOENT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %114
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  br label %127

127:                                              ; preds = %125, %124
  %128 = phi i32 [ 0, %124 ], [ %126, %125 ]
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %95, %79, %23
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_29__*, %struct.TYPE_28__**) #1

declare dso_local i32 @cmn_err(i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_25__* @dmu_objset_zil(%struct.TYPE_28__*) #1

declare dso_local i32 @BP_IS_HOLE(%struct.TYPE_30__*) #1

declare dso_local i32 @spa_config_enter(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @vdev_lookup_top(i32, i32) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i64 @vdev_is_dead(%struct.TYPE_27__*) #1

declare dso_local i32 @vdev_log_state_valid(%struct.TYPE_27__*) #1

declare dso_local i32 @spa_config_exit(i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @zil_header_in_syncing_context(%struct.TYPE_25__*) #1

declare dso_local i32 @zil_parse(%struct.TYPE_25__*, i32, i32, i8*, i64) #1

declare dso_local i64 @spa_min_claim_txg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
