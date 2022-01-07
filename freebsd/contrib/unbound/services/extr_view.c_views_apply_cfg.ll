; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.views = type { i32 }
%struct.config_file = type { i32, i32*, %struct.config_strlist*, i32*, %struct.config_view* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }
%struct.config_view = type { %struct.config_strlist*, i32*, i32*, i64, i32, %struct.config_view* }
%struct.view = type { i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"view without a name\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"nodefault\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"failed to insert default zones into local-zone list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @views_apply_cfg(%struct.views* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.views*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_view*, align 8
  %7 = alloca %struct.view*, align 8
  %8 = alloca %struct.config_file, align 8
  %9 = alloca %struct.config_strlist*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.views* %0, %struct.views** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %12 = load %struct.config_file*, %struct.config_file** %5, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 4
  %14 = load %struct.config_view*, %struct.config_view** %13, align 8
  %15 = icmp ne %struct.config_view* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.config_file*, %struct.config_file** %5, align 8
  %18 = getelementptr inbounds %struct.config_file, %struct.config_file* %17, i32 0, i32 4
  %19 = load %struct.config_view*, %struct.config_view** %18, align 8
  %20 = getelementptr inbounds %struct.config_view, %struct.config_view* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %160

25:                                               ; preds = %16, %2
  %26 = load %struct.config_file*, %struct.config_file** %5, align 8
  %27 = getelementptr inbounds %struct.config_file, %struct.config_file* %26, i32 0, i32 4
  %28 = load %struct.config_view*, %struct.config_view** %27, align 8
  store %struct.config_view* %28, %struct.config_view** %6, align 8
  br label %29

29:                                               ; preds = %155, %25
  %30 = load %struct.config_view*, %struct.config_view** %6, align 8
  %31 = icmp ne %struct.config_view* %30, null
  br i1 %31, label %32, label %159

32:                                               ; preds = %29
  %33 = load %struct.views*, %struct.views** %4, align 8
  %34 = load %struct.config_view*, %struct.config_view** %6, align 8
  %35 = getelementptr inbounds %struct.config_view, %struct.config_view* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.view* @views_enter_view_name(%struct.views* %33, i32 %36)
  store %struct.view* %37, %struct.view** %7, align 8
  %38 = icmp ne %struct.view* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %160

40:                                               ; preds = %32
  %41 = load %struct.config_view*, %struct.config_view** %6, align 8
  %42 = getelementptr inbounds %struct.config_view, %struct.config_view* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.view*, %struct.view** %7, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.config_view*, %struct.config_view** %6, align 8
  %47 = getelementptr inbounds %struct.config_view, %struct.config_view* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load %struct.config_view*, %struct.config_view** %6, align 8
  %52 = getelementptr inbounds %struct.config_view, %struct.config_view* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %151

55:                                               ; preds = %50, %40
  %56 = call i32 (...) @local_zones_create()
  %57 = load %struct.view*, %struct.view** %7, align 8
  %58 = getelementptr inbounds %struct.view, %struct.view* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = icmp ne i32 %56, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load %struct.view*, %struct.view** %7, align 8
  %62 = getelementptr inbounds %struct.view, %struct.view* %61, i32 0, i32 0
  %63 = call i32 @lock_rw_unlock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %160

64:                                               ; preds = %55
  %65 = call i32 @memset(%struct.config_file* %8, i32 0, i32 40)
  %66 = load %struct.config_view*, %struct.config_view** %6, align 8
  %67 = getelementptr inbounds %struct.config_view, %struct.config_view* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 1
  store i32* %68, i32** %69, align 8
  %70 = load %struct.config_view*, %struct.config_view** %6, align 8
  %71 = getelementptr inbounds %struct.config_view, %struct.config_view* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 3
  store i32* %72, i32** %73, align 8
  %74 = load %struct.config_view*, %struct.config_view** %6, align 8
  %75 = getelementptr inbounds %struct.config_view, %struct.config_view* %74, i32 0, i32 0
  %76 = load %struct.config_strlist*, %struct.config_strlist** %75, align 8
  %77 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 2
  store %struct.config_strlist* %76, %struct.config_strlist** %77, align 8
  %78 = load %struct.view*, %struct.view** %7, align 8
  %79 = getelementptr inbounds %struct.view, %struct.view* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %134

82:                                               ; preds = %64
  %83 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.config_view*, %struct.config_view** %6, align 8
  %85 = getelementptr inbounds %struct.config_view, %struct.config_view* %84, i32 0, i32 0
  %86 = load %struct.config_strlist*, %struct.config_strlist** %85, align 8
  store %struct.config_strlist* %86, %struct.config_strlist** %9, align 8
  br label %87

87:                                               ; preds = %129, %82
  %88 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %89 = icmp ne %struct.config_strlist* %88, null
  br i1 %89, label %90, label %133

90:                                               ; preds = %87
  %91 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %92 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @strdup(i8* %93)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.view*, %struct.view** %7, align 8
  %100 = getelementptr inbounds %struct.view, %struct.view* %99, i32 0, i32 0
  %101 = call i32 @lock_rw_unlock(i32* %100)
  store i32 0, i32* %3, align 4
  br label %160

102:                                              ; preds = %90
  %103 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load %struct.view*, %struct.view** %7, align 8
  %111 = getelementptr inbounds %struct.view, %struct.view* %110, i32 0, i32 0
  %112 = call i32 @lock_rw_unlock(i32* %111)
  store i32 0, i32* %3, align 4
  br label %160

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 1
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @cfg_str2list_insert(i32** %114, i8* %115, i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = call i32 @log_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load %struct.view*, %struct.view** %7, align 8
  %126 = getelementptr inbounds %struct.view, %struct.view* %125, i32 0, i32 0
  %127 = call i32 @lock_rw_unlock(i32* %126)
  store i32 0, i32* %3, align 4
  br label %160

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %131 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %130, i32 0, i32 1
  %132 = load %struct.config_strlist*, %struct.config_strlist** %131, align 8
  store %struct.config_strlist* %132, %struct.config_strlist** %9, align 8
  br label %87

133:                                              ; preds = %87
  br label %134

134:                                              ; preds = %133, %64
  %135 = load %struct.view*, %struct.view** %7, align 8
  %136 = getelementptr inbounds %struct.view, %struct.view* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @local_zones_apply_cfg(i32 %137, %struct.config_file* %8)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = load %struct.view*, %struct.view** %7, align 8
  %142 = getelementptr inbounds %struct.view, %struct.view* %141, i32 0, i32 0
  %143 = call i32 @lock_rw_unlock(i32* %142)
  store i32 0, i32* %3, align 4
  br label %160

144:                                              ; preds = %134
  %145 = load %struct.config_view*, %struct.config_view** %6, align 8
  %146 = getelementptr inbounds %struct.config_view, %struct.config_view* %145, i32 0, i32 2
  store i32* null, i32** %146, align 8
  %147 = load %struct.config_view*, %struct.config_view** %6, align 8
  %148 = getelementptr inbounds %struct.config_view, %struct.config_view* %147, i32 0, i32 1
  store i32* null, i32** %148, align 8
  %149 = load %struct.config_view*, %struct.config_view** %6, align 8
  %150 = getelementptr inbounds %struct.config_view, %struct.config_view* %149, i32 0, i32 0
  store %struct.config_strlist* null, %struct.config_strlist** %150, align 8
  br label %151

151:                                              ; preds = %144, %50
  %152 = load %struct.view*, %struct.view** %7, align 8
  %153 = getelementptr inbounds %struct.view, %struct.view* %152, i32 0, i32 0
  %154 = call i32 @lock_rw_unlock(i32* %153)
  br label %155

155:                                              ; preds = %151
  %156 = load %struct.config_view*, %struct.config_view** %6, align 8
  %157 = getelementptr inbounds %struct.config_view, %struct.config_view* %156, i32 0, i32 5
  %158 = load %struct.config_view*, %struct.config_view** %157, align 8
  store %struct.config_view* %158, %struct.config_view** %6, align 8
  br label %29

159:                                              ; preds = %29
  store i32 1, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %140, %119, %106, %97, %60, %39, %23
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.view* @views_enter_view_name(%struct.views*, i32) #1

declare dso_local i32 @local_zones_create(...) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @memset(%struct.config_file*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cfg_str2list_insert(i32**, i8*, i8*) #1

declare dso_local i32 @local_zones_apply_cfg(i32, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
