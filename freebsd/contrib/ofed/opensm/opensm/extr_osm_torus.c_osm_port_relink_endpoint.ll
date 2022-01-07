; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_osm_port_relink_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_osm_port_relink_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.endpoint* }
%struct.TYPE_12__ = type { %struct.endpoint*, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.t_switch* }
%struct.t_switch = type { %struct.endpoint**, %struct.TYPE_11__* }

@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.endpoint* (%struct.TYPE_12__*)* @osm_port_relink_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.endpoint* @osm_port_relink_endpoint(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.t_switch*, align 8
  %7 = alloca %struct.endpoint*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.endpoint* null, %struct.endpoint** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @osm_physp_get_port_num(i32* %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %21 = call i64 @osm_node_get_node_guid(%struct.TYPE_13__* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = call i64 @osm_node_get_type(%struct.TYPE_13__* %25)
  %27 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %8, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.t_switch*, %struct.t_switch** %37, align 8
  %39 = icmp ne %struct.t_switch* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.t_switch*, %struct.t_switch** %42, align 8
  store %struct.t_switch* %43, %struct.t_switch** %6, align 8
  %44 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %45 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = icmp eq %struct.TYPE_11__* %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %51 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %50, i32 0, i32 0
  %52 = load %struct.endpoint**, %struct.endpoint*** %51, align 8
  %53 = getelementptr inbounds %struct.endpoint*, %struct.endpoint** %52, i64 0
  %54 = load %struct.endpoint*, %struct.endpoint** %53, align 8
  %55 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %61 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %60, i32 0, i32 0
  %62 = load %struct.endpoint**, %struct.endpoint*** %61, align 8
  %63 = getelementptr inbounds %struct.endpoint*, %struct.endpoint** %62, i64 0
  %64 = load %struct.endpoint*, %struct.endpoint** %63, align 8
  store %struct.endpoint* %64, %struct.endpoint** %7, align 8
  br label %146

65:                                               ; preds = %49, %40
  br label %66

66:                                               ; preds = %65, %35, %29
  br label %67

67:                                               ; preds = %66, %24, %1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call %struct.TYPE_13__* @osm_node_get_remote_node(%struct.TYPE_13__* %68, i64 %69, i64* %5)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %11, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %153

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %8, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = icmp ne %struct.TYPE_11__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %153

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.t_switch*, %struct.t_switch** %83, align 8
  store %struct.t_switch* %84, %struct.t_switch** %6, align 8
  %85 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %86 = icmp ne %struct.t_switch* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %89 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = icmp eq %struct.TYPE_11__* %90, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %87, %81
  br label %153

94:                                               ; preds = %87
  %95 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %96 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %95, i32 0, i32 0
  %97 = load %struct.endpoint**, %struct.endpoint*** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.endpoint*, %struct.endpoint** %97, i64 %98
  %100 = load %struct.endpoint*, %struct.endpoint** %99, align 8
  store %struct.endpoint* %100, %struct.endpoint** %7, align 8
  %101 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %102 = icmp ne %struct.endpoint* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %105 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = icmp ne %struct.TYPE_10__* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %103, %94
  br label %153

109:                                              ; preds = %103
  %110 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %111 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.endpoint*, %struct.endpoint** %113, align 8
  %115 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %114, i64 0
  %116 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %3, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %122 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %121, i32 0, i32 2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.endpoint*, %struct.endpoint** %124, align 8
  %126 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %125, i64 0
  store %struct.endpoint* %126, %struct.endpoint** %7, align 8
  br label %146

127:                                              ; preds = %109
  %128 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %129 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %128, i32 0, i32 2
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.endpoint*, %struct.endpoint** %131, align 8
  %133 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %132, i64 1
  %134 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %3, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %127
  %139 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %140 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.endpoint*, %struct.endpoint** %142, align 8
  %144 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %143, i64 1
  store %struct.endpoint* %144, %struct.endpoint** %7, align 8
  br label %146

145:                                              ; preds = %127
  store %struct.endpoint* null, %struct.endpoint** %7, align 8
  br label %153

146:                                              ; preds = %138, %120, %59
  %147 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store %struct.endpoint* %147, %struct.endpoint** %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %151 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  %152 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %151, i32 0, i32 1
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %152, align 8
  br label %153

153:                                              ; preds = %146, %145, %108, %93, %80, %73
  %154 = load %struct.endpoint*, %struct.endpoint** %7, align 8
  ret %struct.endpoint* %154
}

declare dso_local i64 @osm_physp_get_port_num(i32*) #1

declare dso_local i64 @osm_node_get_node_guid(%struct.TYPE_13__*) #1

declare dso_local i64 @osm_node_get_type(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @osm_node_get_remote_node(%struct.TYPE_13__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
