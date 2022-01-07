; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_build_master_stree_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_build_master_stree_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_switch = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t_switch*, i32)* @build_master_stree_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_master_stree_branch(%struct.t_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.t_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.t_switch*, align 8
  %6 = alloca %struct.t_switch*, align 8
  %7 = alloca %struct.t_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.t_switch* %0, %struct.t_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %41 [
    i32 0, label %14
    i32 1, label %23
    i32 2, label %32
  ]

14:                                               ; preds = %2
  %15 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  %16 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  %19 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  %25 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  %28 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  %34 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  %37 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  br label %42

41:                                               ; preds = %2
  br label %183

42:                                               ; preds = %32, %23, %14
  %43 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  store %struct.t_switch* %43, %struct.t_switch** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  store %struct.t_switch* %46, %struct.t_switch** %7, align 8
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %78, %42
  %52 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %53 = icmp ne %struct.t_switch* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp uge i32 %55, 1
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %81

59:                                               ; preds = %57
  %60 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call %struct.t_switch* @ring_next_sw(%struct.t_switch* %60, i32 %61, i32 -1)
  store %struct.t_switch* %62, %struct.t_switch** %5, align 8
  %63 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %64 = icmp ne %struct.t_switch* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %67 = call i32 @sw_in_master_stree(%struct.t_switch* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %71 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @grow_master_stree_branch(%struct.t_switch* %70, %struct.t_switch* %71, i32 %72, i32 %73)
  %75 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  store %struct.t_switch* %75, %struct.t_switch** %6, align 8
  br label %77

76:                                               ; preds = %65, %59
  store %struct.t_switch* null, %struct.t_switch** %6, align 8
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %8, align 4
  br label %51

81:                                               ; preds = %57
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %112, %81
  %84 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %85 = icmp ne %struct.t_switch* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub i32 %88, 1
  %90 = icmp ult i32 %87, %89
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i1 [ false, %83 ], [ %90, %86 ]
  br i1 %92, label %93, label %115

93:                                               ; preds = %91
  %94 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call %struct.t_switch* @ring_next_sw(%struct.t_switch* %94, i32 %95, i32 1)
  store %struct.t_switch* %96, %struct.t_switch** %5, align 8
  %97 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %98 = icmp ne %struct.t_switch* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %101 = call i32 @sw_in_master_stree(%struct.t_switch* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %105 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @grow_master_stree_branch(%struct.t_switch* %104, %struct.t_switch* %105, i32 %106, i32 %107)
  %109 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  store %struct.t_switch* %109, %struct.t_switch** %7, align 8
  br label %111

110:                                              ; preds = %99, %93
  store %struct.t_switch* null, %struct.t_switch** %7, align 8
  br label %111

111:                                              ; preds = %110, %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %83

115:                                              ; preds = %91
  %116 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %117 = icmp ne %struct.t_switch* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %120 = icmp ne %struct.t_switch* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %183

122:                                              ; preds = %118, %115
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %179, %122
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %182

127:                                              ; preds = %123
  %128 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %129 = icmp ne %struct.t_switch* %128, null
  br i1 %129, label %130, label %149

130:                                              ; preds = %127
  %131 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call %struct.t_switch* @ring_next_sw(%struct.t_switch* %131, i32 %132, i32 -1)
  store %struct.t_switch* %133, %struct.t_switch** %5, align 8
  %134 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %135 = icmp ne %struct.t_switch* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %138 = call i32 @sw_in_master_stree(%struct.t_switch* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %142 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @grow_master_stree_branch(%struct.t_switch* %141, %struct.t_switch* %142, i32 %143, i32 %144)
  %146 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  store %struct.t_switch* %146, %struct.t_switch** %6, align 8
  br label %148

147:                                              ; preds = %136, %130
  store %struct.t_switch* null, %struct.t_switch** %6, align 8
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %127
  %150 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %151 = icmp ne %struct.t_switch* %150, null
  br i1 %151, label %152, label %171

152:                                              ; preds = %149
  %153 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call %struct.t_switch* @ring_next_sw(%struct.t_switch* %153, i32 %154, i32 1)
  store %struct.t_switch* %155, %struct.t_switch** %5, align 8
  %156 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %157 = icmp ne %struct.t_switch* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %160 = call i32 @sw_in_master_stree(%struct.t_switch* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %158
  %163 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %164 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @grow_master_stree_branch(%struct.t_switch* %163, %struct.t_switch* %164, i32 %165, i32 %166)
  %168 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  store %struct.t_switch* %168, %struct.t_switch** %7, align 8
  br label %170

169:                                              ; preds = %158, %152
  store %struct.t_switch* null, %struct.t_switch** %7, align 8
  br label %170

170:                                              ; preds = %169, %162
  br label %171

171:                                              ; preds = %170, %149
  %172 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %173 = icmp ne %struct.t_switch* %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %176 = icmp ne %struct.t_switch* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %182

178:                                              ; preds = %174, %171
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %123

182:                                              ; preds = %177, %123
  br label %183

183:                                              ; preds = %182, %121, %41
  ret void
}

declare dso_local %struct.t_switch* @ring_next_sw(%struct.t_switch*, i32, i32) #1

declare dso_local i32 @sw_in_master_stree(%struct.t_switch*) #1

declare dso_local i32 @grow_master_stree_branch(%struct.t_switch*, %struct.t_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
