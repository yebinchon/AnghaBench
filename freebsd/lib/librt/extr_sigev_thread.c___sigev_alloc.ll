; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i64, i32, i32 }
%struct.sigev_node = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@sigev_generation = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sigev_node* @__sigev_alloc(i32 %0, %struct.sigevent* %1, %struct.sigev_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.sigev_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigev_node*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sigevent* %1, %struct.sigevent** %6, align 8
  store %struct.sigev_node* %2, %struct.sigev_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call %struct.sigev_node* @calloc(i32 1, i32 32)
  store %struct.sigev_node* %10, %struct.sigev_node** %9, align 8
  %11 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %12 = icmp ne %struct.sigev_node* %11, null
  br i1 %12, label %13, label %83

13:                                               ; preds = %4
  %14 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %15 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %18 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %20 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %23 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @memory_order_relaxed, align 4
  %25 = call i32 @atomic_fetch_add_explicit(i32* @sigev_generation, i32 1, i32 %24)
  %26 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %27 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %30 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %32 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %31, i32 0, i32 1
  %33 = call i32 @_pthread_attr_init(i32* %32)
  %34 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %35 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %34, i32 0, i32 1
  %36 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %37 = call i32 @_pthread_attr_setdetachstate(i32* %35, i32 %36)
  %38 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %39 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %13
  %43 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %44 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %47 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %46, i32 0, i32 1
  %48 = call i32 @attrcopy(i64 %45, i32* %47)
  br label %49

49:                                               ; preds = %42, %13
  %50 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %51 = icmp ne %struct.sigev_node* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = call i32 (...) @__sigev_list_lock()
  %54 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %55 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = call i32 (...) @__sigev_list_unlock()
  %61 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %62 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %65 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %64, i32 0, i32 2
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  br label %82

66:                                               ; preds = %49
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.TYPE_2__* @sigev_thread_create(i32 %67)
  %69 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %70 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %69, i32 0, i32 2
  store %struct.TYPE_2__* %68, %struct.TYPE_2__** %70, align 8
  %71 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %72 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp eq %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %77 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %76, i32 0, i32 1
  %78 = call i32 @_pthread_attr_destroy(i32* %77)
  %79 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  %80 = call i32 @free(%struct.sigev_node* %79)
  store %struct.sigev_node* null, %struct.sigev_node** %9, align 8
  br label %81

81:                                               ; preds = %75, %66
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82, %4
  %84 = load %struct.sigev_node*, %struct.sigev_node** %9, align 8
  ret %struct.sigev_node* %84
}

declare dso_local %struct.sigev_node* @calloc(i32, i32) #1

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #1

declare dso_local i32 @_pthread_attr_init(i32*) #1

declare dso_local i32 @_pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @attrcopy(i64, i32*) #1

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

declare dso_local %struct.TYPE_2__* @sigev_thread_create(i32) #1

declare dso_local i32 @_pthread_attr_destroy(i32*) #1

declare dso_local i32 @free(%struct.sigev_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
