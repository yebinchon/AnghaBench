; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_env = type { i32, i32, i32, i64, i64, i64, i32* }
%struct.config_file = type { i32, i32, i64, i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"target fetch policy for level %d is %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not set donotqueryaddresses\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not set private addresses\00", align 1
@name_tree_compare = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Could not set capsforid whitelist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_apply_cfg(%struct.iter_env* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_env*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i32, align 4
  store %struct.iter_env* %0, %struct.iter_env** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @read_fetch_policy(%struct.iter_env* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %18 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i32, i32* @VERB_QUERY, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %26 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @verbose(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %38 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = call i64 (...) @donotq_create()
  %43 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %44 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %47 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %52 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.config_file*, %struct.config_file** %5, align 8
  %55 = call i32 @donotq_apply_cfg(i64 %53, %struct.config_file* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50, %45
  %58 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

59:                                               ; preds = %50
  %60 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %61 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = call i64 (...) @priv_create()
  %66 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %67 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %70 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %75 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.config_file*, %struct.config_file** %5, align 8
  %78 = call i32 @priv_apply_cfg(i64 %76, %struct.config_file* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73, %68
  %81 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

82:                                               ; preds = %73
  %83 = load %struct.config_file*, %struct.config_file** %5, align 8
  %84 = getelementptr inbounds %struct.config_file, %struct.config_file* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %82
  %88 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %89 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @name_tree_compare, align 4
  %94 = call i64 @rbtree_create(i32 %93)
  %95 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %96 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %99 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %104 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.config_file*, %struct.config_file** %5, align 8
  %107 = call i32 @caps_white_apply_cfg(i64 %105, %struct.config_file* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %102, %97
  %110 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %82
  %113 = load %struct.config_file*, %struct.config_file** %5, align 8
  %114 = getelementptr inbounds %struct.config_file, %struct.config_file* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %117 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.config_file*, %struct.config_file** %5, align 8
  %119 = getelementptr inbounds %struct.config_file, %struct.config_file* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %122 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %112, %109, %80, %57, %13
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @read_fetch_policy(%struct.iter_env*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32, i32) #1

declare dso_local i64 @donotq_create(...) #1

declare dso_local i32 @donotq_apply_cfg(i64, %struct.config_file*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @priv_create(...) #1

declare dso_local i32 @priv_apply_cfg(i64, %struct.config_file*) #1

declare dso_local i64 @rbtree_create(i32) #1

declare dso_local i32 @caps_white_apply_cfg(i64, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
