; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_find_view.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_find_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.view** }
%struct.views = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.view* @views_find_view(%struct.views* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.views*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.view*, align 8
  %9 = alloca %struct.view, align 8
  store %struct.views* %0, %struct.views** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.view** %8, %struct.view*** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.views*, %struct.views** %5, align 8
  %15 = getelementptr inbounds %struct.views, %struct.views* %14, i32 0, i32 0
  %16 = call i32 @lock_rw_rdlock(i32* %15)
  %17 = load %struct.views*, %struct.views** %5, align 8
  %18 = getelementptr inbounds %struct.views, %struct.views* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 2
  %20 = call i64 @rbtree_search(i32* %18, %struct.TYPE_2__* %19)
  %21 = inttoptr i64 %20 to %struct.view*
  store %struct.view* %21, %struct.view** %8, align 8
  %22 = icmp ne %struct.view* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.views*, %struct.views** %5, align 8
  %25 = getelementptr inbounds %struct.views, %struct.views* %24, i32 0, i32 0
  %26 = call i32 @lock_rw_unlock(i32* %25)
  store %struct.view* null, %struct.view** %4, align 8
  br label %43

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.view*, %struct.view** %8, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 1
  %33 = call i32 @lock_rw_wrlock(i32* %32)
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.view*, %struct.view** %8, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 1
  %37 = call i32 @lock_rw_rdlock(i32* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.views*, %struct.views** %5, align 8
  %40 = getelementptr inbounds %struct.views, %struct.views* %39, i32 0, i32 0
  %41 = call i32 @lock_rw_unlock(i32* %40)
  %42 = load %struct.view*, %struct.view** %8, align 8
  store %struct.view* %42, %struct.view** %4, align 8
  br label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.view*, %struct.view** %4, align 8
  ret %struct.view* %44
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i64 @rbtree_search(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
