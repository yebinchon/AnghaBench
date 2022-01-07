; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_sl2vl_update_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_sl2vl_update_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@IB_MAX_NUM_VLS = common dso_local global i32 0, align 4
@IB_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_ATTR_SLVL_TABLE = common dso_local global i32 0, align 4
@IB_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_15__*, i32*)* @sl2vl_update_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl2vl_update_table(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_15__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = call i32 @ib_port_info_get_op_vls(i32* %24)
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 1, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %74, %7
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* @IB_MAX_NUM_VLS, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %21, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %21, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 15
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %19, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %53, %34
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 15
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %20, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %20, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %19, align 4
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %20, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %21, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %21, align 4
  br label %29

77:                                               ; preds = %29
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call %struct.TYPE_15__* @osm_physp_get_slvl_tbl(%struct.TYPE_14__* %78, i32 %79)
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %17, align 8
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %85 = call i32 @memcmp(%struct.TYPE_15__* %84, %struct.TYPE_15__* %16, i32 8)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %88, i32* %8, align 4
  br label %108

89:                                               ; preds = %83, %77
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = bitcast %struct.TYPE_15__* %16 to i32*
  %93 = load i32, i32* @IB_MAD_ATTR_SLVL_TABLE, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call %struct.TYPE_13__* @osm_qos_mad_create(i32* %90, %struct.TYPE_14__* %91, i32 8, i32* %92, i32 %93, i32 %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %22, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @IB_INSUFFICIENT_MEMORY, align 4
  store i32 %99, i32* %8, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %102 = call i32 @memset(%struct.TYPE_15__* %101, i32 0, i32 8)
  %103 = load i32*, i32** %15, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = call i32 @cl_qlist_insert_tail(i32* %103, i32* %105)
  %107 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %100, %98, %87
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @ib_port_info_get_op_vls(i32*) #1

declare dso_local %struct.TYPE_15__* @osm_physp_get_slvl_tbl(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_13__* @osm_qos_mad_create(i32*, %struct.TYPE_14__*, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
