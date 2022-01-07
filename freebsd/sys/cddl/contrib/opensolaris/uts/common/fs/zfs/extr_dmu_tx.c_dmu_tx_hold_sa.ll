; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_hold_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_hold_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }

@B_TRUE = common dso_local global i32 0, align 4
@SA_LAYOUTS = common dso_local global i32* null, align 8
@SA_REGISTRY = common dso_local global i32* null, align 8
@DMU_NEW_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_tx_hold_sa(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = call i32 @sa_handle_object(%struct.TYPE_17__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dmu_tx_hold_bonus(%struct.TYPE_19__* %22, i32 %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %146

34:                                               ; preds = %3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %43, %34
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @B_TRUE, align 4
  %58 = load i32*, i32** @SA_LAYOUTS, align 8
  %59 = call i32 @dmu_tx_hold_zap(%struct.TYPE_19__* %53, i64 %56, i32 %57, i32* %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @B_TRUE, align 4
  %65 = load i32*, i32** @SA_REGISTRY, align 8
  %66 = call i32 @dmu_tx_hold_zap(%struct.TYPE_19__* %60, i64 %63, i32 %64, i32* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %69 = load i32, i32* @B_TRUE, align 4
  %70 = call i32 @dmu_tx_hold_zap(%struct.TYPE_19__* %67, i64 %68, i32 %69, i32* null)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %73 = load i32, i32* @B_TRUE, align 4
  %74 = call i32 @dmu_tx_hold_zap(%struct.TYPE_19__* %71, i64 %72, i32 %73, i32* null)
  br label %75

75:                                               ; preds = %52, %43
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = call i32 @dmu_tx_sa_registration_hold(%struct.TYPE_16__* %76, %struct.TYPE_19__* %77)
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @B_TRUE, align 4
  %96 = call i32 @dmu_tx_hold_zap(%struct.TYPE_19__* %91, i64 %94, i32 %95, i32* null)
  br label %97

97:                                               ; preds = %90, %81, %75
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105, %102, %97
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @dmu_tx_hold_spill(%struct.TYPE_19__* %117, i32 %118)
  br label %146

120:                                              ; preds = %105
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %9, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @DB_DNODE_ENTER(i32* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = call %struct.TYPE_18__* @DB_DNODE(i32* %127)
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %10, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %120
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @ASSERT(i32 %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @dmu_tx_hold_spill(%struct.TYPE_19__* %140, i32 %141)
  br label %143

143:                                              ; preds = %133, %120
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @DB_DNODE_EXIT(i32* %144)
  br label %146

146:                                              ; preds = %33, %143, %110
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sa_handle_object(%struct.TYPE_17__*) #1

declare dso_local i32 @dmu_tx_hold_bonus(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dmu_tx_hold_zap(%struct.TYPE_19__*, i64, i32, i32*) #1

declare dso_local i32 @dmu_tx_sa_registration_hold(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @dmu_tx_hold_spill(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local %struct.TYPE_18__* @DB_DNODE(i32*) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
