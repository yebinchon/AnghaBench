; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_enter_view_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_enter_view_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32 }
%struct.views = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"duplicate view: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.view* (%struct.views*, i8*)* @views_enter_view_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.view* @views_enter_view_name(%struct.views* %0, i8* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.views*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.view*, align 8
  store %struct.views* %0, %struct.views** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.view* @view_create(i8* %7)
  store %struct.view* %8, %struct.view** %6, align 8
  %9 = load %struct.view*, %struct.view** %6, align 8
  %10 = icmp ne %struct.view* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.view* null, %struct.view** %3, align 8
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.views*, %struct.views** %4, align 8
  %15 = getelementptr inbounds %struct.views, %struct.views* %14, i32 0, i32 0
  %16 = call i32 @lock_rw_wrlock(i32* %15)
  %17 = load %struct.view*, %struct.view** %6, align 8
  %18 = getelementptr inbounds %struct.view, %struct.view* %17, i32 0, i32 0
  %19 = call i32 @lock_rw_wrlock(i32* %18)
  %20 = load %struct.views*, %struct.views** %4, align 8
  %21 = getelementptr inbounds %struct.views, %struct.views* %20, i32 0, i32 1
  %22 = load %struct.view*, %struct.view** %6, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 1
  %24 = call i32 @rbtree_insert(i32* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %13
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @log_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load %struct.view*, %struct.view** %6, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 0
  %31 = call i32 @lock_rw_unlock(i32* %30)
  %32 = load %struct.view*, %struct.view** %6, align 8
  %33 = call i32 @view_delete(%struct.view* %32)
  %34 = load %struct.views*, %struct.views** %4, align 8
  %35 = getelementptr inbounds %struct.views, %struct.views* %34, i32 0, i32 0
  %36 = call i32 @lock_rw_unlock(i32* %35)
  store %struct.view* null, %struct.view** %3, align 8
  br label %42

37:                                               ; preds = %13
  %38 = load %struct.views*, %struct.views** %4, align 8
  %39 = getelementptr inbounds %struct.views, %struct.views* %38, i32 0, i32 0
  %40 = call i32 @lock_rw_unlock(i32* %39)
  %41 = load %struct.view*, %struct.view** %6, align 8
  store %struct.view* %41, %struct.view** %3, align 8
  br label %42

42:                                               ; preds = %37, %26, %11
  %43 = load %struct.view*, %struct.view** %3, align 8
  ret %struct.view* %43
}

declare dso_local %struct.view* @view_create(i8*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @view_delete(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
