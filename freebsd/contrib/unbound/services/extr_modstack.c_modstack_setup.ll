; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_modstack_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_modstack_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stack = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 (%struct.module_env*, i32)* }
%struct.module_env = type { i64 }

@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"init module %d: %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"module init for module %s failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modstack_setup(%struct.module_stack* %0, i8* %1, %struct.module_env* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_stack*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca i32, align 4
  store %struct.module_stack* %0, %struct.module_stack** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.module_env* %2, %struct.module_env** %7, align 8
  %9 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %10 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %15 = load %struct.module_env*, %struct.module_env** %7, align 8
  %16 = call i32 @modstack_desetup(%struct.module_stack* %14, %struct.module_env* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @modstack_config(%struct.module_stack* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %85

23:                                               ; preds = %17
  %24 = load %struct.module_env*, %struct.module_env** %7, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %81, %23
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %29 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %26
  %33 = load i32, i32* @VERB_OPS, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %36 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @verbose(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %43)
  %45 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %46 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.module_env*, i32)*, i32 (%struct.module_env*, i32)** %52, align 8
  %54 = call i32 @fptr_whitelist_mod_init(i32 (%struct.module_env*, i32)* %53)
  %55 = call i32 @fptr_ok(i32 %54)
  %56 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %57 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.module_env*, i32)*, i32 (%struct.module_env*, i32)** %63, align 8
  %65 = load %struct.module_env*, %struct.module_env** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %64(%struct.module_env* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %32
  %70 = load %struct.module_stack*, %struct.module_stack** %5, align 8
  %71 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %85

80:                                               ; preds = %32
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %26

84:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %69, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @modstack_desetup(%struct.module_stack*, %struct.module_env*) #1

declare dso_local i32 @modstack_config(%struct.module_stack*, i8*) #1

declare dso_local i32 @verbose(i32, i8*, i32, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_mod_init(i32 (%struct.module_env*, i32)*) #1

declare dso_local i32 @log_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
