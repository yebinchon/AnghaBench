; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c_worker_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c_worker_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigev_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@SNF_SYNC = common dso_local global i32 0, align 4
@SNF_REMOVED = common dso_local global i32 0, align 4
@SNF_WORKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @worker_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigev_node*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sigev_node*
  store %struct.sigev_node* %5, %struct.sigev_node** %3, align 8
  %6 = call i32 (...) @__sigev_list_lock()
  %7 = load %struct.sigev_node*, %struct.sigev_node** %3, align 8
  %8 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SNF_SYNC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.sigev_node*, %struct.sigev_node** %3, align 8
  %15 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.sigev_node*, %struct.sigev_node** %3, align 8
  %19 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @_pthread_cond_broadcast(i32* %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.sigev_node*, %struct.sigev_node** %3, align 8
  %25 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SNF_REMOVED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.sigev_node*, %struct.sigev_node** %3, align 8
  %32 = call i32 @__sigev_free(%struct.sigev_node* %31)
  br label %40

33:                                               ; preds = %23
  %34 = load i32, i32* @SNF_WORKING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.sigev_node*, %struct.sigev_node** %3, align 8
  %37 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %30
  %41 = call i32 (...) @__sigev_list_unlock()
  ret void
}

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @_pthread_cond_broadcast(i32*) #1

declare dso_local i32 @__sigev_free(%struct.sigev_node*) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
