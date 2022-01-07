; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_delete_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigev_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@sn_link = common dso_local global i32 0, align 4
@SIGLIBRT = common dso_local global i32 0, align 4
@SNF_WORKING = common dso_local global i32 0, align 4
@SNF_REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sigev_delete_node(%struct.sigev_node* %0) #0 {
  %2 = alloca %struct.sigev_node*, align 8
  store %struct.sigev_node* %0, %struct.sigev_node** %2, align 8
  %3 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %4 = load i32, i32* @sn_link, align 4
  %5 = call i32 @LIST_REMOVE(%struct.sigev_node* %3, i32 %4)
  %6 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %7 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %15 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SIGLIBRT, align 4
  %20 = call i32 @_pthread_kill(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %23 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SNF_WORKING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @SNF_REMOVED, align 4
  %30 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %31 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %37

34:                                               ; preds = %21
  %35 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %36 = call i32 @__sigev_free(%struct.sigev_node* %35)
  br label %37

37:                                               ; preds = %34, %28
  ret i32 0
}

declare dso_local i32 @LIST_REMOVE(%struct.sigev_node*, i32) #1

declare dso_local i32 @_pthread_kill(i32, i32) #1

declare dso_local i32 @__sigev_free(%struct.sigev_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
