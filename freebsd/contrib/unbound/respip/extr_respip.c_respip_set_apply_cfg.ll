; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_set_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_set_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.respip_set = type { i8**, i32 }
%struct.config_strbytelist = type { %struct.config_strbytelist*, %struct.config_strbytelist*, %struct.config_strbytelist*, i32 }
%struct.config_str2list = type { %struct.config_str2list*, %struct.config_str2list*, %struct.config_str2list*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.respip_set*, i8**, i32, %struct.config_strbytelist*, %struct.config_str2list*, %struct.config_str2list*)* @respip_set_apply_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @respip_set_apply_cfg(%struct.respip_set* %0, i8** %1, i32 %2, %struct.config_strbytelist* %3, %struct.config_str2list* %4, %struct.config_str2list* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.respip_set*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.config_strbytelist*, align 8
  %12 = alloca %struct.config_str2list*, align 8
  %13 = alloca %struct.config_str2list*, align 8
  %14 = alloca %struct.config_strbytelist*, align 8
  %15 = alloca %struct.config_str2list*, align 8
  %16 = alloca %struct.config_str2list*, align 8
  %17 = alloca %struct.config_strbytelist*, align 8
  %18 = alloca %struct.config_str2list*, align 8
  %19 = alloca %struct.config_str2list*, align 8
  store %struct.respip_set* %0, %struct.respip_set** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.config_strbytelist* %3, %struct.config_strbytelist** %11, align 8
  store %struct.config_str2list* %4, %struct.config_str2list** %12, align 8
  store %struct.config_str2list* %5, %struct.config_str2list** %13, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = load %struct.respip_set*, %struct.respip_set** %8, align 8
  %22 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %21, i32 0, i32 0
  store i8** %20, i8*** %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.respip_set*, %struct.respip_set** %8, align 8
  %25 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.config_strbytelist*, %struct.config_strbytelist** %11, align 8
  store %struct.config_strbytelist* %26, %struct.config_strbytelist** %14, align 8
  br label %27

27:                                               ; preds = %62, %6
  %28 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %29 = icmp ne %struct.config_strbytelist* %28, null
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %32 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %31, i32 0, i32 2
  %33 = load %struct.config_strbytelist*, %struct.config_strbytelist** %32, align 8
  store %struct.config_strbytelist* %33, %struct.config_strbytelist** %17, align 8
  %34 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %35 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %34, i32 0, i32 1
  %36 = load %struct.config_strbytelist*, %struct.config_strbytelist** %35, align 8
  %37 = icmp ne %struct.config_strbytelist* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %40 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %39, i32 0, i32 0
  %41 = load %struct.config_strbytelist*, %struct.config_strbytelist** %40, align 8
  %42 = icmp ne %struct.config_strbytelist* %41, null
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i1 [ false, %30 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @log_assert(i32 %45)
  %47 = load %struct.respip_set*, %struct.respip_set** %8, align 8
  %48 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %49 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %48, i32 0, i32 1
  %50 = load %struct.config_strbytelist*, %struct.config_strbytelist** %49, align 8
  %51 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %52 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %51, i32 0, i32 0
  %53 = load %struct.config_strbytelist*, %struct.config_strbytelist** %52, align 8
  %54 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %55 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @respip_tag_cfg(%struct.respip_set* %47, %struct.config_strbytelist* %50, %struct.config_strbytelist* %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %61 = call i32 @config_del_strbytelist(%struct.config_strbytelist* %60)
  store i32 0, i32* %7, align 4
  br label %179

62:                                               ; preds = %43
  %63 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %64 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %63, i32 0, i32 1
  %65 = load %struct.config_strbytelist*, %struct.config_strbytelist** %64, align 8
  %66 = call i32 @free(%struct.config_strbytelist* %65)
  %67 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %68 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %67, i32 0, i32 0
  %69 = load %struct.config_strbytelist*, %struct.config_strbytelist** %68, align 8
  %70 = call i32 @free(%struct.config_strbytelist* %69)
  %71 = load %struct.config_strbytelist*, %struct.config_strbytelist** %14, align 8
  %72 = call i32 @free(%struct.config_strbytelist* %71)
  %73 = load %struct.config_strbytelist*, %struct.config_strbytelist** %17, align 8
  store %struct.config_strbytelist* %73, %struct.config_strbytelist** %14, align 8
  br label %27

74:                                               ; preds = %27
  %75 = load %struct.config_str2list*, %struct.config_str2list** %12, align 8
  store %struct.config_str2list* %75, %struct.config_str2list** %15, align 8
  br label %76

76:                                               ; preds = %111, %74
  %77 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %78 = icmp ne %struct.config_str2list* %77, null
  br i1 %78, label %79, label %126

79:                                               ; preds = %76
  %80 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %81 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %80, i32 0, i32 2
  %82 = load %struct.config_str2list*, %struct.config_str2list** %81, align 8
  store %struct.config_str2list* %82, %struct.config_str2list** %18, align 8
  %83 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %84 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %83, i32 0, i32 1
  %85 = load %struct.config_str2list*, %struct.config_str2list** %84, align 8
  %86 = icmp ne %struct.config_str2list* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %89 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %88, i32 0, i32 0
  %90 = load %struct.config_str2list*, %struct.config_str2list** %89, align 8
  %91 = icmp ne %struct.config_str2list* %90, null
  br label %92

92:                                               ; preds = %87, %79
  %93 = phi i1 [ false, %79 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @log_assert(i32 %94)
  %96 = load %struct.respip_set*, %struct.respip_set** %8, align 8
  %97 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %98 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %97, i32 0, i32 1
  %99 = load %struct.config_str2list*, %struct.config_str2list** %98, align 8
  %100 = bitcast %struct.config_str2list* %99 to %struct.config_strbytelist*
  %101 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %102 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %101, i32 0, i32 0
  %103 = load %struct.config_str2list*, %struct.config_str2list** %102, align 8
  %104 = bitcast %struct.config_str2list* %103 to %struct.config_strbytelist*
  %105 = call i32 @respip_action_cfg(%struct.respip_set* %96, %struct.config_strbytelist* %100, %struct.config_strbytelist* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %92
  %108 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %109 = bitcast %struct.config_str2list* %108 to %struct.config_strbytelist*
  %110 = call i32 @config_deldblstrlist(%struct.config_strbytelist* %109)
  store i32 0, i32* %7, align 4
  br label %179

111:                                              ; preds = %92
  %112 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %113 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %112, i32 0, i32 1
  %114 = load %struct.config_str2list*, %struct.config_str2list** %113, align 8
  %115 = bitcast %struct.config_str2list* %114 to %struct.config_strbytelist*
  %116 = call i32 @free(%struct.config_strbytelist* %115)
  %117 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %118 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %117, i32 0, i32 0
  %119 = load %struct.config_str2list*, %struct.config_str2list** %118, align 8
  %120 = bitcast %struct.config_str2list* %119 to %struct.config_strbytelist*
  %121 = call i32 @free(%struct.config_strbytelist* %120)
  %122 = load %struct.config_str2list*, %struct.config_str2list** %15, align 8
  %123 = bitcast %struct.config_str2list* %122 to %struct.config_strbytelist*
  %124 = call i32 @free(%struct.config_strbytelist* %123)
  %125 = load %struct.config_str2list*, %struct.config_str2list** %18, align 8
  store %struct.config_str2list* %125, %struct.config_str2list** %15, align 8
  br label %76

126:                                              ; preds = %76
  %127 = load %struct.config_str2list*, %struct.config_str2list** %13, align 8
  store %struct.config_str2list* %127, %struct.config_str2list** %16, align 8
  br label %128

128:                                              ; preds = %163, %126
  %129 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %130 = icmp ne %struct.config_str2list* %129, null
  br i1 %130, label %131, label %178

131:                                              ; preds = %128
  %132 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %133 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %132, i32 0, i32 2
  %134 = load %struct.config_str2list*, %struct.config_str2list** %133, align 8
  store %struct.config_str2list* %134, %struct.config_str2list** %19, align 8
  %135 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %136 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %135, i32 0, i32 1
  %137 = load %struct.config_str2list*, %struct.config_str2list** %136, align 8
  %138 = icmp ne %struct.config_str2list* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %141 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %140, i32 0, i32 0
  %142 = load %struct.config_str2list*, %struct.config_str2list** %141, align 8
  %143 = icmp ne %struct.config_str2list* %142, null
  br label %144

144:                                              ; preds = %139, %131
  %145 = phi i1 [ false, %131 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @log_assert(i32 %146)
  %148 = load %struct.respip_set*, %struct.respip_set** %8, align 8
  %149 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %150 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %149, i32 0, i32 1
  %151 = load %struct.config_str2list*, %struct.config_str2list** %150, align 8
  %152 = bitcast %struct.config_str2list* %151 to %struct.config_strbytelist*
  %153 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %154 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %153, i32 0, i32 0
  %155 = load %struct.config_str2list*, %struct.config_str2list** %154, align 8
  %156 = bitcast %struct.config_str2list* %155 to %struct.config_strbytelist*
  %157 = call i32 @respip_data_cfg(%struct.respip_set* %148, %struct.config_strbytelist* %152, %struct.config_strbytelist* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %144
  %160 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %161 = bitcast %struct.config_str2list* %160 to %struct.config_strbytelist*
  %162 = call i32 @config_deldblstrlist(%struct.config_strbytelist* %161)
  store i32 0, i32* %7, align 4
  br label %179

163:                                              ; preds = %144
  %164 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %165 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %164, i32 0, i32 1
  %166 = load %struct.config_str2list*, %struct.config_str2list** %165, align 8
  %167 = bitcast %struct.config_str2list* %166 to %struct.config_strbytelist*
  %168 = call i32 @free(%struct.config_strbytelist* %167)
  %169 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %170 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %169, i32 0, i32 0
  %171 = load %struct.config_str2list*, %struct.config_str2list** %170, align 8
  %172 = bitcast %struct.config_str2list* %171 to %struct.config_strbytelist*
  %173 = call i32 @free(%struct.config_strbytelist* %172)
  %174 = load %struct.config_str2list*, %struct.config_str2list** %16, align 8
  %175 = bitcast %struct.config_str2list* %174 to %struct.config_strbytelist*
  %176 = call i32 @free(%struct.config_strbytelist* %175)
  %177 = load %struct.config_str2list*, %struct.config_str2list** %19, align 8
  store %struct.config_str2list* %177, %struct.config_str2list** %16, align 8
  br label %128

178:                                              ; preds = %128
  store i32 1, i32* %7, align 4
  br label %179

179:                                              ; preds = %178, %159, %107, %59
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @respip_tag_cfg(%struct.respip_set*, %struct.config_strbytelist*, %struct.config_strbytelist*, i32) #1

declare dso_local i32 @config_del_strbytelist(%struct.config_strbytelist*) #1

declare dso_local i32 @free(%struct.config_strbytelist*) #1

declare dso_local i32 @respip_action_cfg(%struct.respip_set*, %struct.config_strbytelist*, %struct.config_strbytelist*) #1

declare dso_local i32 @config_deldblstrlist(%struct.config_strbytelist*) #1

declare dso_local i32 @respip_data_cfg(%struct.respip_set*, %struct.config_strbytelist*, %struct.config_strbytelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
