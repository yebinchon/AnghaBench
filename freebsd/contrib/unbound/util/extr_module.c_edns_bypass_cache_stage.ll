; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_edns_bypass_cache_stage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_edns_bypass_cache_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i64, %struct.edns_option* }
%struct.module_env = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edns_bypass_cache_stage(%struct.edns_option* %0, %struct.module_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edns_option*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca i64, align 8
  store %struct.edns_option* %0, %struct.edns_option** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  br label %7

7:                                                ; preds = %44, %2
  %8 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %9 = icmp ne %struct.edns_option* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %40, %10
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.module_env*, %struct.module_env** %5, align 8
  %14 = getelementptr inbounds %struct.module_env, %struct.module_env* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.module_env*, %struct.module_env** %5, align 8
  %19 = getelementptr inbounds %struct.module_env, %struct.module_env* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %26 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.module_env*, %struct.module_env** %5, align 8
  %31 = getelementptr inbounds %struct.module_env, %struct.module_env* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %49

39:                                               ; preds = %29, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %11

43:                                               ; preds = %11
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %46 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %45, i32 0, i32 1
  %47 = load %struct.edns_option*, %struct.edns_option** %46, align 8
  store %struct.edns_option* %47, %struct.edns_option** %4, align 8
  br label %7

48:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
