; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_inplace_cb_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_inplace_cb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.inplace_cb** }
%struct.inplace_cb = type { i32, %struct.inplace_cb* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inplace_cb_delete(%struct.module_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inplace_cb*, align 8
  %8 = alloca %struct.inplace_cb*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.module_env*, %struct.module_env** %4, align 8
  %10 = getelementptr inbounds %struct.module_env, %struct.module_env* %9, i32 0, i32 0
  %11 = load %struct.inplace_cb**, %struct.inplace_cb*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.inplace_cb*, %struct.inplace_cb** %11, i64 %13
  %15 = load %struct.inplace_cb*, %struct.inplace_cb** %14, align 8
  store %struct.inplace_cb* %15, %struct.inplace_cb** %7, align 8
  store %struct.inplace_cb* null, %struct.inplace_cb** %8, align 8
  br label %16

16:                                               ; preds = %64, %3
  %17 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %18 = icmp ne %struct.inplace_cb* %17, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %21 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.inplace_cb*, %struct.inplace_cb** %8, align 8
  %27 = icmp ne %struct.inplace_cb* %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %30 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %29, i32 0, i32 1
  %31 = load %struct.inplace_cb*, %struct.inplace_cb** %30, align 8
  %32 = load %struct.module_env*, %struct.module_env** %4, align 8
  %33 = getelementptr inbounds %struct.module_env, %struct.module_env* %32, i32 0, i32 0
  %34 = load %struct.inplace_cb**, %struct.inplace_cb*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.inplace_cb*, %struct.inplace_cb** %34, i64 %36
  store %struct.inplace_cb* %31, %struct.inplace_cb** %37, align 8
  %38 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %39 = call i32 @free(%struct.inplace_cb* %38)
  %40 = load %struct.module_env*, %struct.module_env** %4, align 8
  %41 = getelementptr inbounds %struct.module_env, %struct.module_env* %40, i32 0, i32 0
  %42 = load %struct.inplace_cb**, %struct.inplace_cb*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.inplace_cb*, %struct.inplace_cb** %42, i64 %44
  %46 = load %struct.inplace_cb*, %struct.inplace_cb** %45, align 8
  store %struct.inplace_cb* %46, %struct.inplace_cb** %7, align 8
  br label %58

47:                                               ; preds = %25
  %48 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %49 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %48, i32 0, i32 1
  %50 = load %struct.inplace_cb*, %struct.inplace_cb** %49, align 8
  %51 = load %struct.inplace_cb*, %struct.inplace_cb** %8, align 8
  %52 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %51, i32 0, i32 1
  store %struct.inplace_cb* %50, %struct.inplace_cb** %52, align 8
  %53 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %54 = call i32 @free(%struct.inplace_cb* %53)
  %55 = load %struct.inplace_cb*, %struct.inplace_cb** %8, align 8
  %56 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %55, i32 0, i32 1
  %57 = load %struct.inplace_cb*, %struct.inplace_cb** %56, align 8
  store %struct.inplace_cb* %57, %struct.inplace_cb** %7, align 8
  br label %58

58:                                               ; preds = %47, %28
  br label %64

59:                                               ; preds = %19
  %60 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  store %struct.inplace_cb* %60, %struct.inplace_cb** %8, align 8
  %61 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %62 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %61, i32 0, i32 1
  %63 = load %struct.inplace_cb*, %struct.inplace_cb** %62, align 8
  store %struct.inplace_cb* %63, %struct.inplace_cb** %7, align 8
  br label %64

64:                                               ; preds = %59, %58
  br label %16

65:                                               ; preds = %16
  ret void
}

declare dso_local i32 @free(%struct.inplace_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
