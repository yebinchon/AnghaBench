; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64, i64, i64 }
%struct.val_env = type { i32, i64, i32*, i32, i32, i32, i64, i64 }
%struct.config_file = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"validator: error in trustanchors config\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"validator: unparseable or odd nsec3 key iterations: %s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"validator: cannot apply nsec3 key iterations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.config_file*)* @val_apply_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @val_apply_cfg(%struct.module_env* %0, %struct.val_env* %1, %struct.config_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.val_env*, align 8
  %7 = alloca %struct.config_file*, align 8
  %8 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %5, align 8
  store %struct.val_env* %1, %struct.val_env** %6, align 8
  store %struct.config_file* %2, %struct.config_file** %7, align 8
  %9 = load %struct.config_file*, %struct.config_file** %7, align 8
  %10 = getelementptr inbounds %struct.config_file, %struct.config_file* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.val_env*, %struct.val_env** %6, align 8
  %13 = getelementptr inbounds %struct.val_env, %struct.val_env* %12, i32 0, i32 7
  store i64 %11, i64* %13, align 8
  %14 = load %struct.module_env*, %struct.module_env** %5, align 8
  %15 = getelementptr inbounds %struct.module_env, %struct.module_env* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i64 (...) @anchors_create()
  %20 = load %struct.module_env*, %struct.module_env** %5, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.module_env*, %struct.module_env** %5, align 8
  %24 = getelementptr inbounds %struct.module_env, %struct.module_env* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

29:                                               ; preds = %22
  %30 = load %struct.val_env*, %struct.val_env** %6, align 8
  %31 = getelementptr inbounds %struct.val_env, %struct.val_env* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.config_file*, %struct.config_file** %7, align 8
  %36 = call i64 @key_cache_create(%struct.config_file* %35)
  %37 = load %struct.val_env*, %struct.val_env** %6, align 8
  %38 = getelementptr inbounds %struct.val_env, %struct.val_env* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.val_env*, %struct.val_env** %6, align 8
  %41 = getelementptr inbounds %struct.val_env, %struct.val_env* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

46:                                               ; preds = %39
  %47 = load %struct.val_env*, %struct.val_env** %6, align 8
  %48 = getelementptr inbounds %struct.val_env, %struct.val_env* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.module_env*, %struct.module_env** %5, align 8
  %51 = getelementptr inbounds %struct.module_env, %struct.module_env* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.module_env*, %struct.module_env** %5, align 8
  %53 = getelementptr inbounds %struct.module_env, %struct.module_env* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.config_file*, %struct.config_file** %7, align 8
  %56 = call i32 @anchors_apply_cfg(i64 %54, %struct.config_file* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

60:                                               ; preds = %46
  %61 = load %struct.config_file*, %struct.config_file** %7, align 8
  %62 = getelementptr inbounds %struct.config_file, %struct.config_file* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.val_env*, %struct.val_env** %6, align 8
  %65 = getelementptr inbounds %struct.val_env, %struct.val_env* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.config_file*, %struct.config_file** %7, align 8
  %67 = getelementptr inbounds %struct.config_file, %struct.config_file* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.val_env*, %struct.val_env** %6, align 8
  %70 = getelementptr inbounds %struct.val_env, %struct.val_env* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.config_file*, %struct.config_file** %7, align 8
  %72 = getelementptr inbounds %struct.config_file, %struct.config_file* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.val_env*, %struct.val_env** %6, align 8
  %75 = getelementptr inbounds %struct.val_env, %struct.val_env* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.config_file*, %struct.config_file** %7, align 8
  %77 = getelementptr inbounds %struct.config_file, %struct.config_file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cfg_count_numbers(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %86, label %82

82:                                               ; preds = %60
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %60
  %87 = load %struct.config_file*, %struct.config_file** %7, align 8
  %88 = getelementptr inbounds %struct.config_file, %struct.config_file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store i32 0, i32* %4, align 4
  br label %139

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  %93 = sdiv i32 %92, 2
  %94 = load %struct.val_env*, %struct.val_env** %6, align 8
  %95 = getelementptr inbounds %struct.val_env, %struct.val_env* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.val_env*, %struct.val_env** %6, align 8
  %97 = load %struct.config_file*, %struct.config_file** %7, align 8
  %98 = getelementptr inbounds %struct.config_file, %struct.config_file* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sdiv i32 %100, 2
  %102 = call i32 @fill_nsec3_iter(%struct.val_env* %96, i32 %99, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %91
  %105 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

106:                                              ; preds = %91
  %107 = load %struct.val_env*, %struct.val_env** %6, align 8
  %108 = getelementptr inbounds %struct.val_env, %struct.val_env* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %106
  %112 = load %struct.config_file*, %struct.config_file** %7, align 8
  %113 = load %struct.val_env*, %struct.val_env** %6, align 8
  %114 = getelementptr inbounds %struct.val_env, %struct.val_env* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.val_env*, %struct.val_env** %6, align 8
  %117 = getelementptr inbounds %struct.val_env, %struct.val_env* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @val_neg_create(%struct.config_file* %112, i32 %122)
  %124 = load %struct.val_env*, %struct.val_env** %6, align 8
  %125 = getelementptr inbounds %struct.val_env, %struct.val_env* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %111, %106
  %127 = load %struct.val_env*, %struct.val_env** %6, align 8
  %128 = getelementptr inbounds %struct.val_env, %struct.val_env* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

133:                                              ; preds = %126
  %134 = load %struct.val_env*, %struct.val_env** %6, align 8
  %135 = getelementptr inbounds %struct.val_env, %struct.val_env* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.module_env*, %struct.module_env** %5, align 8
  %138 = getelementptr inbounds %struct.module_env, %struct.module_env* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  store i32 1, i32* %4, align 4
  br label %139

139:                                              ; preds = %133, %131, %104, %86, %58, %44, %27
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @anchors_create(...) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @key_cache_create(%struct.config_file*) #1

declare dso_local i32 @anchors_apply_cfg(i64, %struct.config_file*) #1

declare dso_local i32 @cfg_count_numbers(i32) #1

declare dso_local i32 @fill_nsec3_iter(%struct.val_env*, i32, i32) #1

declare dso_local i64 @val_neg_create(%struct.config_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
