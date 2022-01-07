; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32**, i32* }
%struct.val_env = type { %struct.val_env*, %struct.val_env*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_deinit(%struct.module_env* %0, i32 %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.val_env*, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.module_env*, %struct.module_env** %3, align 8
  %7 = icmp ne %struct.module_env* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.module_env*, %struct.module_env** %3, align 8
  %10 = getelementptr inbounds %struct.module_env, %struct.module_env* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %8, %2
  br label %60

18:                                               ; preds = %8
  %19 = load %struct.module_env*, %struct.module_env** %3, align 8
  %20 = getelementptr inbounds %struct.module_env, %struct.module_env* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.val_env*
  store %struct.val_env* %26, %struct.val_env** %5, align 8
  %27 = load %struct.val_env*, %struct.val_env** %5, align 8
  %28 = getelementptr inbounds %struct.val_env, %struct.val_env* %27, i32 0, i32 4
  %29 = call i32 @lock_basic_destroy(i32* %28)
  %30 = load %struct.module_env*, %struct.module_env** %3, align 8
  %31 = getelementptr inbounds %struct.module_env, %struct.module_env* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @anchors_delete(i32* %32)
  %34 = load %struct.module_env*, %struct.module_env** %3, align 8
  %35 = getelementptr inbounds %struct.module_env, %struct.module_env* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.val_env*, %struct.val_env** %5, align 8
  %37 = getelementptr inbounds %struct.val_env, %struct.val_env* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @key_cache_delete(i32 %38)
  %40 = load %struct.val_env*, %struct.val_env** %5, align 8
  %41 = getelementptr inbounds %struct.val_env, %struct.val_env* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @neg_cache_delete(i32 %42)
  %44 = load %struct.val_env*, %struct.val_env** %5, align 8
  %45 = getelementptr inbounds %struct.val_env, %struct.val_env* %44, i32 0, i32 1
  %46 = load %struct.val_env*, %struct.val_env** %45, align 8
  %47 = call i32 @free(%struct.val_env* %46)
  %48 = load %struct.val_env*, %struct.val_env** %5, align 8
  %49 = getelementptr inbounds %struct.val_env, %struct.val_env* %48, i32 0, i32 0
  %50 = load %struct.val_env*, %struct.val_env** %49, align 8
  %51 = call i32 @free(%struct.val_env* %50)
  %52 = load %struct.val_env*, %struct.val_env** %5, align 8
  %53 = call i32 @free(%struct.val_env* %52)
  %54 = load %struct.module_env*, %struct.module_env** %3, align 8
  %55 = getelementptr inbounds %struct.module_env, %struct.module_env* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @lock_basic_destroy(i32*) #1

declare dso_local i32 @anchors_delete(i32*) #1

declare dso_local i32 @key_cache_delete(i32) #1

declare dso_local i32 @neg_cache_delete(i32) #1

declare dso_local i32 @free(%struct.val_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
