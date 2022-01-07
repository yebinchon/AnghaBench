; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos_policy.c_osm_qos_policy_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos_policy.c_osm_qos_policy_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osm_qos_policy_destroy(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %165

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = call i64 @cl_list_head(i32* %14)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %31, %12
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = call i64 @cl_list_end(i32* %19)
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @cl_list_obj(i64 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @osm_qos_policy_port_group_destroy(i32* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @cl_list_next(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = call i32 @cl_list_remove_all(i32* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = call i32 @cl_list_destroy(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = call i64 @cl_list_head(i32* %42)
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %59, %34
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = call i64 @cl_list_end(i32* %47)
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @cl_list_obj(i64 %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @osm_qos_policy_vlarb_scope_destroy(i32* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @cl_list_next(i64 %60)
  store i64 %61, i64* %3, align 8
  br label %44

62:                                               ; preds = %44
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = call i32 @cl_list_remove_all(i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = call i32 @cl_list_destroy(i32* %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = call i64 @cl_list_head(i32* %70)
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %87, %62
  %73 = load i64, i64* %3, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = call i64 @cl_list_end(i32* %75)
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @cl_list_obj(i64 %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @osm_qos_policy_sl2vl_scope_destroy(i32* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i64, i64* %3, align 8
  %89 = call i64 @cl_list_next(i64 %88)
  store i64 %89, i64* %3, align 8
  br label %72

90:                                               ; preds = %72
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = call i32 @cl_list_remove_all(i32* %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = call i32 @cl_list_destroy(i32* %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = call i64 @cl_list_head(i32* %98)
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %115, %90
  %101 = load i64, i64* %3, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = call i64 @cl_list_end(i32* %103)
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i64, i64* %3, align 8
  %108 = call i64 @cl_list_obj(i64 %107)
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %7, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @osm_qos_policy_qos_level_destroy(i32* %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load i64, i64* %3, align 8
  %117 = call i64 @cl_list_next(i64 %116)
  store i64 %117, i64* %3, align 8
  br label %100

118:                                              ; preds = %100
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = call i32 @cl_list_remove_all(i32* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = call i32 @cl_list_destroy(i32* %123)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = call i64 @cl_list_head(i32* %126)
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %143, %118
  %129 = load i64, i64* %3, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = call i64 @cl_list_end(i32* %131)
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = load i64, i64* %3, align 8
  %136 = call i64 @cl_list_obj(i64 %135)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** %8, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @osm_qos_policy_match_rule_destroy(i32* %141)
  br label %143

143:                                              ; preds = %140, %134
  %144 = load i64, i64* %3, align 8
  %145 = call i64 @cl_list_next(i64 %144)
  store i64 %145, i64* %3, align 8
  br label %128

146:                                              ; preds = %128
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = call i32 @cl_list_remove_all(i32* %148)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = call i32 @cl_list_destroy(i32* %151)
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @st_free_table(i64 %160)
  br label %162

162:                                              ; preds = %157, %146
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = call i32 @free(%struct.TYPE_4__* %163)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %165

165:                                              ; preds = %162, %11
  ret void
}

declare dso_local i64 @cl_list_head(i32*) #1

declare dso_local i64 @cl_list_end(i32*) #1

declare dso_local i64 @cl_list_obj(i64) #1

declare dso_local i32 @osm_qos_policy_port_group_destroy(i32*) #1

declare dso_local i64 @cl_list_next(i64) #1

declare dso_local i32 @cl_list_remove_all(i32*) #1

declare dso_local i32 @cl_list_destroy(i32*) #1

declare dso_local i32 @osm_qos_policy_vlarb_scope_destroy(i32*) #1

declare dso_local i32 @osm_qos_policy_sl2vl_scope_destroy(i32*) #1

declare dso_local i32 @osm_qos_policy_qos_level_destroy(i32*) #1

declare dso_local i32 @osm_qos_policy_match_rule_destroy(i32*) #1

declare dso_local i32 @st_free_table(i64) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
