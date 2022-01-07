; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32, i8** }
%struct.val_env = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"validator: could not apply configuration settings.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_init(%struct.module_env* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.val_env*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 @calloc(i32 1, i32 8)
  %8 = inttoptr i64 %7 to %struct.val_env*
  store %struct.val_env* %8, %struct.val_env** %6, align 8
  %9 = load %struct.val_env*, %struct.val_env** %6, align 8
  %10 = icmp ne %struct.val_env* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.val_env*, %struct.val_env** %6, align 8
  %15 = bitcast %struct.val_env* %14 to i8*
  %16 = load %struct.module_env*, %struct.module_env** %4, align 8
  %17 = getelementptr inbounds %struct.module_env, %struct.module_env* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %15, i8** %21, align 8
  %22 = load %struct.module_env*, %struct.module_env** %4, align 8
  %23 = getelementptr inbounds %struct.module_env, %struct.module_env* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.val_env*, %struct.val_env** %6, align 8
  %25 = getelementptr inbounds %struct.val_env, %struct.val_env* %24, i32 0, i32 1
  %26 = call i32 @lock_basic_init(i32* %25)
  %27 = load %struct.val_env*, %struct.val_env** %6, align 8
  %28 = getelementptr inbounds %struct.val_env, %struct.val_env* %27, i32 0, i32 1
  %29 = load %struct.val_env*, %struct.val_env** %6, align 8
  %30 = getelementptr inbounds %struct.val_env, %struct.val_env* %29, i32 0, i32 0
  %31 = call i32 @lock_protect(i32* %28, i32* %30, i32 4)
  %32 = load %struct.module_env*, %struct.module_env** %4, align 8
  %33 = load %struct.val_env*, %struct.val_env** %6, align 8
  %34 = load %struct.module_env*, %struct.module_env** %4, align 8
  %35 = getelementptr inbounds %struct.module_env, %struct.module_env* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @val_apply_cfg(%struct.module_env* %32, %struct.val_env* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %13
  %40 = call i32 @log_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

declare dso_local i32 @val_apply_cfg(%struct.module_env*, %struct.val_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
