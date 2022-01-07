; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_stree_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_stree_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_switch = type { i32 }
%struct.torus = type { i32, i32, i32, %struct.t_switch**** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t_switch* (%struct.torus*)* @find_stree_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t_switch* @find_stree_root(%struct.torus* %0) #0 {
  %2 = alloca %struct.torus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.t_switch****, align 8
  %9 = alloca %struct.t_switch*, align 8
  %10 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %2, align 8
  %11 = load %struct.torus*, %struct.torus** %2, align 8
  %12 = getelementptr inbounds %struct.torus, %struct.torus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %7, align 4
  %15 = load %struct.torus*, %struct.torus** %2, align 8
  %16 = getelementptr inbounds %struct.torus, %struct.torus* %15, i32 0, i32 3
  %17 = load %struct.t_switch****, %struct.t_switch***** %16, align 8
  store %struct.t_switch**** %17, %struct.t_switch***** %8, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %155, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %158

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load %struct.torus*, %struct.torus** %2, align 8
  %27 = getelementptr inbounds %struct.torus, %struct.torus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @canonicalize(i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %72, %22
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.torus*, %struct.torus** %2, align 8
  %33 = getelementptr inbounds %struct.torus, %struct.torus* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i1 [ false, %30 ], [ %38, %36 ]
  br i1 %40, label %41, label %75

41:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.torus*, %struct.torus** %2, align 8
  %45 = getelementptr inbounds %struct.torus, %struct.torus* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ false, %42 ], [ %50, %48 ]
  br i1 %52, label %53, label %71

53:                                               ; preds = %51
  %54 = load %struct.t_switch****, %struct.t_switch***** %8, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %54, i64 %56
  %58 = load %struct.t_switch***, %struct.t_switch**** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %58, i64 %60
  %62 = load %struct.t_switch**, %struct.t_switch*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %62, i64 %64
  %66 = load %struct.t_switch*, %struct.t_switch** %65, align 8
  %67 = ptrtoint %struct.t_switch* %66 to i32
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %42

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %30

75:                                               ; preds = %39
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.torus*, %struct.torus** %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call %struct.t_switch* @find_plane_mid(%struct.torus* %79, i32 %80)
  store %struct.t_switch* %81, %struct.t_switch** %9, align 8
  %82 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %83 = icmp ne %struct.t_switch* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %162

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %155

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.torus*, %struct.torus** %2, align 8
  %95 = getelementptr inbounds %struct.torus, %struct.torus* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @canonicalize(i32 %93, i32 %96)
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %140, %90
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.torus*, %struct.torus** %2, align 8
  %101 = getelementptr inbounds %struct.torus, %struct.torus* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %104, %98
  %108 = phi i1 [ false, %98 ], [ %106, %104 ]
  br i1 %108, label %109, label %143

109:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.torus*, %struct.torus** %2, align 8
  %113 = getelementptr inbounds %struct.torus, %struct.torus* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i1 [ false, %110 ], [ %118, %116 ]
  br i1 %120, label %121, label %139

121:                                              ; preds = %119
  %122 = load %struct.t_switch****, %struct.t_switch***** %8, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %122, i64 %124
  %126 = load %struct.t_switch***, %struct.t_switch**** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %126, i64 %128
  %130 = load %struct.t_switch**, %struct.t_switch*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %130, i64 %132
  %134 = load %struct.t_switch*, %struct.t_switch** %133, align 8
  %135 = ptrtoint %struct.t_switch* %134 to i32
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %121
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %110

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %98

143:                                              ; preds = %107
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.torus*, %struct.torus** %2, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call %struct.t_switch* @find_plane_mid(%struct.torus* %147, i32 %148)
  store %struct.t_switch* %149, %struct.t_switch** %9, align 8
  %150 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %151 = icmp ne %struct.t_switch* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %162

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %143
  br label %155

155:                                              ; preds = %154, %89
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %18

158:                                              ; preds = %18
  %159 = load %struct.torus*, %struct.torus** %2, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call %struct.t_switch* @find_plane_mid(%struct.torus* %159, i32 %160)
  store %struct.t_switch* %161, %struct.t_switch** %9, align 8
  br label %162

162:                                              ; preds = %158, %152, %84
  %163 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  ret %struct.t_switch* %163
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local %struct.t_switch* @find_plane_mid(%struct.torus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
