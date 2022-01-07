; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_unique_mesh_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_unique_mesh_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i64, %struct.edns_option* }
%struct.module_env = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unique_mesh_state(%struct.edns_option* %0, %struct.module_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edns_option*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca i64, align 8
  store %struct.edns_option* %0, %struct.edns_option** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  %7 = load %struct.module_env*, %struct.module_env** %5, align 8
  %8 = getelementptr inbounds %struct.module_env, %struct.module_env* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %50, %12
  %14 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %15 = icmp ne %struct.edns_option* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.module_env*, %struct.module_env** %5, align 8
  %20 = getelementptr inbounds %struct.module_env, %struct.module_env* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.module_env*, %struct.module_env** %5, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %32 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.module_env*, %struct.module_env** %5, align 8
  %37 = getelementptr inbounds %struct.module_env, %struct.module_env* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %55

45:                                               ; preds = %35, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %17

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %52 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %51, i32 0, i32 1
  %53 = load %struct.edns_option*, %struct.edns_option** %52, align 8
  store %struct.edns_option* %53, %struct.edns_option** %4, align 8
  br label %13

54:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %44, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
