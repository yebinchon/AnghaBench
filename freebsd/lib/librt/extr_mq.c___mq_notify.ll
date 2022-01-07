; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.sigev_node* }
%struct.sigev_node = type { i32, i32, i32 }
%struct.sigevent = type { i64 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SI_MESGQ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@mq_dispatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mq_notify(%struct.TYPE_3__* %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sigevent*, align 8
  %6 = alloca %struct.sigevent, align 8
  %7 = alloca %struct.sigev_node*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.sigevent* %1, %struct.sigevent** %5, align 8
  %9 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %10 = icmp eq %struct.sigevent* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %13 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SIGEV_THREAD, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11, %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.sigev_node*, %struct.sigev_node** %19, align 8
  %21 = icmp ne %struct.sigev_node* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = call i32 (...) @__sigev_list_lock()
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.sigev_node*, %struct.sigev_node** %25, align 8
  %27 = call i32 @__sigev_delete_node(%struct.sigev_node* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store %struct.sigev_node* null, %struct.sigev_node** %29, align 8
  %30 = call i32 (...) @__sigev_list_unlock()
  br label %31

31:                                               ; preds = %22, %17
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %36 = call i32 @__sys_kmq_notify(i32 %34, %struct.sigevent* %35)
  store i32 %36, i32* %3, align 4
  br label %89

37:                                               ; preds = %11
  %38 = call i64 (...) @__sigev_check_init()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %89

42:                                               ; preds = %37
  %43 = load i32, i32* @SI_MESGQ, align 4
  %44 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.sigev_node*, %struct.sigev_node** %46, align 8
  %48 = call %struct.sigev_node* @__sigev_alloc(i32 %43, %struct.sigevent* %44, %struct.sigev_node* %47, i32 1)
  store %struct.sigev_node* %48, %struct.sigev_node** %7, align 8
  %49 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %50 = icmp eq %struct.sigev_node* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @EAGAIN, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %89

53:                                               ; preds = %42
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %58 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @mq_dispatch, align 4
  %60 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %61 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %63 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %64 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__sigev_get_sigevent(%struct.sigev_node* %62, %struct.sigevent* %6, i32 %65)
  %67 = call i32 (...) @__sigev_list_lock()
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load %struct.sigev_node*, %struct.sigev_node** %69, align 8
  %71 = icmp ne %struct.sigev_node* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.sigev_node*, %struct.sigev_node** %74, align 8
  %76 = call i32 @__sigev_delete_node(%struct.sigev_node* %75)
  br label %77

77:                                               ; preds = %72, %53
  %78 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store %struct.sigev_node* %78, %struct.sigev_node** %80, align 8
  %81 = load %struct.sigev_node*, %struct.sigev_node** %7, align 8
  %82 = call i32 @__sigev_register(%struct.sigev_node* %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @__sys_kmq_notify(i32 %85, %struct.sigevent* %6)
  store i32 %86, i32* %8, align 4
  %87 = call i32 (...) @__sigev_list_unlock()
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %51, %40, %31
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_delete_node(%struct.sigev_node*) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

declare dso_local i32 @__sys_kmq_notify(i32, %struct.sigevent*) #1

declare dso_local i64 @__sigev_check_init(...) #1

declare dso_local %struct.sigev_node* @__sigev_alloc(i32, %struct.sigevent*, %struct.sigev_node*, i32) #1

declare dso_local i32 @__sigev_get_sigevent(%struct.sigev_node*, %struct.sigevent*, i32) #1

declare dso_local i32 @__sigev_register(%struct.sigev_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
