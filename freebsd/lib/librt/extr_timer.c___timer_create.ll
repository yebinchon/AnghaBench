; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_timer.c___timer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_timer.c___timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i64 }
%struct.__timer = type { %struct.sigev_node*, i32 }
%struct.sigev_node = type { i32, i32, i32, i32 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI_TIMER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SNF_SYNC = common dso_local global i32 0, align 4
@timer_dispatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__timer_create(i32 %0, %struct.sigevent* %1, %struct.__timer** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.__timer**, align 8
  %8 = alloca %struct.__timer*, align 8
  %9 = alloca %struct.sigevent, align 8
  %10 = alloca %struct.sigev_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sigevent* %1, %struct.sigevent** %6, align 8
  store %struct.__timer** %2, %struct.__timer*** %7, align 8
  %13 = call %struct.__timer* @malloc(i32 16)
  store %struct.__timer* %13, %struct.__timer** %8, align 8
  %14 = load %struct.__timer*, %struct.__timer** %8, align 8
  %15 = icmp eq %struct.__timer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %104

17:                                               ; preds = %3
  %18 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %19 = icmp eq %struct.sigevent* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %22 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SIGEV_THREAD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %29 = load %struct.__timer*, %struct.__timer** %8, align 8
  %30 = getelementptr inbounds %struct.__timer, %struct.__timer* %29, i32 0, i32 1
  %31 = call i32 @__sys_ktimer_create(i32 %27, %struct.sigevent* %28, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.__timer*, %struct.__timer** %8, align 8
  %37 = call i32 @free(%struct.__timer* %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* @errno, align 4
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %104

40:                                               ; preds = %26
  %41 = load %struct.__timer*, %struct.__timer** %8, align 8
  %42 = getelementptr inbounds %struct.__timer, %struct.__timer* %41, i32 0, i32 0
  store %struct.sigev_node* null, %struct.sigev_node** %42, align 8
  %43 = load %struct.__timer*, %struct.__timer** %8, align 8
  %44 = load %struct.__timer**, %struct.__timer*** %7, align 8
  store %struct.__timer* %43, %struct.__timer** %44, align 8
  store i32 0, i32* %4, align 4
  br label %104

45:                                               ; preds = %20
  %46 = call i64 (...) @__sigev_check_init()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.__timer*, %struct.__timer** %8, align 8
  %50 = call i32 @free(%struct.__timer* %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %104

52:                                               ; preds = %45
  %53 = load i32, i32* @SI_TIMER, align 4
  %54 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %55 = call %struct.sigev_node* @__sigev_alloc(i32 %53, %struct.sigevent* %54, i32* null, i32 0)
  store %struct.sigev_node* %55, %struct.sigev_node** %10, align 8
  %56 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %57 = icmp eq %struct.sigev_node* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.__timer*, %struct.__timer** %8, align 8
  %60 = call i32 @free(%struct.__timer* %59)
  %61 = load i32, i32* @EAGAIN, align 4
  store i32 %61, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %104

62:                                               ; preds = %52
  %63 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %64 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %65 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__sigev_get_sigevent(%struct.sigev_node* %63, %struct.sigevent* %9, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.__timer*, %struct.__timer** %8, align 8
  %70 = getelementptr inbounds %struct.__timer, %struct.__timer* %69, i32 0, i32 1
  %71 = call i32 @__sys_ktimer_create(i32 %68, %struct.sigevent* %9, i32* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %77 = call i32 @__sigev_free(%struct.sigev_node* %76)
  %78 = load %struct.__timer*, %struct.__timer** %8, align 8
  %79 = call i32 @free(%struct.__timer* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %104

81:                                               ; preds = %62
  %82 = load i32, i32* @SNF_SYNC, align 4
  %83 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %84 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @timer_dispatch, align 4
  %88 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %89 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.__timer*, %struct.__timer** %8, align 8
  %91 = getelementptr inbounds %struct.__timer, %struct.__timer* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %94 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %96 = load %struct.__timer*, %struct.__timer** %8, align 8
  %97 = getelementptr inbounds %struct.__timer, %struct.__timer* %96, i32 0, i32 0
  store %struct.sigev_node* %95, %struct.sigev_node** %97, align 8
  %98 = call i32 (...) @__sigev_list_lock()
  %99 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %100 = call i32 @__sigev_register(%struct.sigev_node* %99)
  %101 = call i32 (...) @__sigev_list_unlock()
  %102 = load %struct.__timer*, %struct.__timer** %8, align 8
  %103 = load %struct.__timer**, %struct.__timer*** %7, align 8
  store %struct.__timer* %102, %struct.__timer** %103, align 8
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %81, %74, %58, %48, %40, %34, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.__timer* @malloc(i32) #1

declare dso_local i32 @__sys_ktimer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @free(%struct.__timer*) #1

declare dso_local i64 @__sigev_check_init(...) #1

declare dso_local %struct.sigev_node* @__sigev_alloc(i32, %struct.sigevent*, i32*, i32) #1

declare dso_local i32 @__sigev_get_sigevent(%struct.sigev_node*, %struct.sigevent*, i32) #1

declare dso_local i32 @__sigev_free(%struct.sigev_node*) #1

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_register(%struct.sigev_node*) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
