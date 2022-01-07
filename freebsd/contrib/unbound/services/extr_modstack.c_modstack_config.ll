; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_modstack_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_modstack_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stack = type { i32, %struct.module_func_block** }
%struct.module_func_block = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"module config: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error: no modules specified\00", align 1
@MAX_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"error: too many modules (%d max %d)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [139 x i8] c"Unknown value in module-config, module: '%s'. This module is not present (not compiled in), See the list of linked modules with unbound -h\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modstack_config(%struct.module_stack* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_stack*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store %struct.module_stack* %0, %struct.module_stack** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @VERB_QUERY, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @verbose(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @count_modules(i8* %11)
  %13 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %14 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %16 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %23 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAX_MODULE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %29 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MAX_MODULE, align 4
  %32 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %96

33:                                               ; preds = %21
  %34 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %35 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = call i64 @calloc(i64 %37, i32 8)
  %39 = inttoptr i64 %38 to %struct.module_func_block**
  %40 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %41 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %40, i32 0, i32 1
  store %struct.module_func_block** %39, %struct.module_func_block*** %41, align 8
  %42 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %43 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %42, i32 0, i32 1
  %44 = load %struct.module_func_block**, %struct.module_func_block*** %43, align 8
  %45 = icmp ne %struct.module_func_block** %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %33
  %47 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

48:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %92, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %52 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %49
  %56 = call %struct.module_func_block* @module_factory(i8** %5)
  %57 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %58 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %57, i32 0, i32 1
  %59 = load %struct.module_func_block**, %struct.module_func_block*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.module_func_block*, %struct.module_func_block** %59, i64 %61
  store %struct.module_func_block* %56, %struct.module_func_block** %62, align 8
  %63 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %64 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %63, i32 0, i32 1
  %65 = load %struct.module_func_block**, %struct.module_func_block*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.module_func_block*, %struct.module_func_block** %65, i64 %67
  %69 = load %struct.module_func_block*, %struct.module_func_block** %68, align 8
  %70 = icmp ne %struct.module_func_block* %69, null
  br i1 %70, label %91, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @snprintf(i8* %72, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %76 = call i64* @strchr(i8* %75, i8 signext 32)
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %80 = call i64* @strchr(i8* %79, i8 signext 32)
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %71
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %83 = call i64* @strchr(i8* %82, i8 signext 9)
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %87 = call i64* @strchr(i8* %86, i8 signext 9)
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %81
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %90 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  store i32 0, i32* %3, align 4
  br label %96

91:                                               ; preds = %55
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %49

95:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %88, %46, %27, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @count_modules(i8*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local %struct.module_func_block* @module_factory(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
