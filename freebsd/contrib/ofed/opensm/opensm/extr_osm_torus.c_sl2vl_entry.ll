; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_sl2vl_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_sl2vl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.t_switch = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@TORUS_MAX_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, %struct.t_switch*, i32, i32, i32)* @sl2vl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl2vl_entry(%struct.torus* %0, %struct.t_switch* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.torus*, align 8
  %7 = alloca %struct.t_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %6, align 8
  store %struct.t_switch* %1, %struct.t_switch** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %16 = icmp ne %struct.t_switch* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %5
  %18 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %19 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %28 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %11, align 4
  br label %41

39:                                               ; preds = %17, %5
  %40 = load i32, i32* @TORUS_MAX_DIM, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %43 = icmp ne %struct.t_switch* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %46 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %55 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %12, align 4
  br label %68

66:                                               ; preds = %44, %41
  %67 = load i32, i32* @TORUS_MAX_DIM, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %66, %53
  %69 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %70 = icmp ne %struct.t_switch* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.torus*, %struct.torus** %6, align 8
  %73 = getelementptr inbounds %struct.torus, %struct.torus* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  br label %85

78:                                               ; preds = %68
  %79 = load %struct.torus*, %struct.torus** %6, align 8
  %80 = getelementptr inbounds %struct.torus, %struct.torus* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %78, %71
  store i32 0, i32* %13, align 4
  %86 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %87 = icmp ne %struct.t_switch* %86, null
  br i1 %87, label %88, label %121

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @TORUS_MAX_DIM, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = icmp uge i32 %93, 2
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @sl_get_use_loop_vl(i32 %96, i32 %97)
  %99 = call i32 @vl_set_loop_vl(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %14, align 4
  %104 = icmp uge i32 %103, 4
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @vl_set_turn_vl(i32 %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %105, %102
  %112 = load i32, i32* %14, align 4
  %113 = icmp uge i32 %112, 8
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @sl_get_qos(i32 %115)
  %117 = call i32 @vl_set_qos_vl(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %114, %111
  br label %131

121:                                              ; preds = %88, %85
  %122 = load i32, i32* %14, align 4
  %123 = icmp uge i32 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @sl_get_qos(i32 %125)
  %127 = call i32 @vl_set_ca_qos_vl(i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %130, %120
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @vl_set_loop_vl(i32) #1

declare dso_local i32 @sl_get_use_loop_vl(i32, i32) #1

declare dso_local i32 @vl_set_turn_vl(i32, i32) #1

declare dso_local i32 @vl_set_qos_vl(i32) #1

declare dso_local i32 @sl_get_qos(i32) #1

declare dso_local i32 @vl_set_ca_qos_vl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
