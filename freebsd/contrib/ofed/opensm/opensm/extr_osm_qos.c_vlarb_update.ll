; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_vlarb_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_vlarb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qos_config = type { i32*, i32* }

@IB_SUCCESS = common dso_local global i32 0, align 4
@IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32, %struct.qos_config*, i32*)* @vlarb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlarb_update(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, %struct.qos_config* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qos_config*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.qos_config* %4, %struct.qos_config** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %15, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %6
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %33, %30 ], [ %35, %34 ]
  store i32 %37, i32* %16, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.qos_config*, %struct.qos_config** %12, align 8
  %43 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @vlarb_update_table_block(i32* %38, %struct.TYPE_5__* %39, i32 %40, i32 %41, i32* %45, i32 %46, i32 0, i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @IB_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %147

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %6
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %65 = urem i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.qos_config*, %struct.qos_config** %12, align 8
  %71 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %16, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @vlarb_update_table_block(i32* %66, %struct.TYPE_5__* %67, i32 %68, i32 %69, i32* %73, i32 %74, i32 1, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* @IB_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %60
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %147

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ugt i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %82
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i32 [ %96, %93 ], [ %98, %97 ]
  store i32 %100, i32* %16, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.qos_config*, %struct.qos_config** %12, align 8
  %106 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @vlarb_update_table_block(i32* %101, %struct.TYPE_5__* %102, i32 %103, i32 %104, i32* %108, i32 %109, i32 2, i32* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* @IB_SUCCESS, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %7, align 4
  br label %147

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %82
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %117
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %128 = urem i32 %126, %127
  store i32 %128, i32* %16, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.qos_config*, %struct.qos_config** %12, align 8
  %134 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %16, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @vlarb_update_table_block(i32* %129, %struct.TYPE_5__* %130, i32 %131, i32 %132, i32* %136, i32 %137, i32 3, i32* %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* @IB_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %123
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %7, align 4
  br label %147

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %145, %142, %114, %79, %51
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @vlarb_update_table_block(i32*, %struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
