; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32** }
%struct.iter_env = type { %struct.iter_env*, i32, i32, %struct.iter_env*, i32 }

@caps_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_deinit(%struct.module_env* %0, i32 %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_env*, align 8
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
  br label %65

18:                                               ; preds = %8
  %19 = load %struct.module_env*, %struct.module_env** %3, align 8
  %20 = getelementptr inbounds %struct.module_env, %struct.module_env* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.iter_env*
  store %struct.iter_env* %26, %struct.iter_env** %5, align 8
  %27 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %28 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %27, i32 0, i32 4
  %29 = call i32 @lock_basic_destroy(i32* %28)
  %30 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %31 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %30, i32 0, i32 3
  %32 = load %struct.iter_env*, %struct.iter_env** %31, align 8
  %33 = call i32 @free(%struct.iter_env* %32)
  %34 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %35 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @priv_delete(i32 %36)
  %38 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %39 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @donotq_delete(i32 %40)
  %42 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %43 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %42, i32 0, i32 0
  %44 = load %struct.iter_env*, %struct.iter_env** %43, align 8
  %45 = icmp ne %struct.iter_env* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %18
  %47 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %48 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %47, i32 0, i32 0
  %49 = load %struct.iter_env*, %struct.iter_env** %48, align 8
  %50 = load i32, i32* @caps_free, align 4
  %51 = call i32 @traverse_postorder(%struct.iter_env* %49, i32 %50, i32* null)
  %52 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %53 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %52, i32 0, i32 0
  %54 = load %struct.iter_env*, %struct.iter_env** %53, align 8
  %55 = call i32 @free(%struct.iter_env* %54)
  br label %56

56:                                               ; preds = %46, %18
  %57 = load %struct.iter_env*, %struct.iter_env** %5, align 8
  %58 = call i32 @free(%struct.iter_env* %57)
  %59 = load %struct.module_env*, %struct.module_env** %3, align 8
  %60 = getelementptr inbounds %struct.module_env, %struct.module_env* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %56, %17
  ret void
}

declare dso_local i32 @lock_basic_destroy(i32*) #1

declare dso_local i32 @free(%struct.iter_env*) #1

declare dso_local i32 @priv_delete(i32) #1

declare dso_local i32 @donotq_delete(i32) #1

declare dso_local i32 @traverse_postorder(%struct.iter_env*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
