; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_views_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.views = type { i32, i32 }

@view_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.views* @views_create() #0 {
  %1 = alloca %struct.views*, align 8
  %2 = alloca %struct.views*, align 8
  %3 = call i64 @calloc(i32 1, i32 8)
  %4 = inttoptr i64 %3 to %struct.views*
  store %struct.views* %4, %struct.views** %2, align 8
  %5 = load %struct.views*, %struct.views** %2, align 8
  %6 = icmp ne %struct.views* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.views* null, %struct.views** %1, align 8
  br label %21

8:                                                ; preds = %0
  %9 = load %struct.views*, %struct.views** %2, align 8
  %10 = getelementptr inbounds %struct.views, %struct.views* %9, i32 0, i32 0
  %11 = call i32 @rbtree_init(i32* %10, i32* @view_cmp)
  %12 = load %struct.views*, %struct.views** %2, align 8
  %13 = getelementptr inbounds %struct.views, %struct.views* %12, i32 0, i32 1
  %14 = call i32 @lock_rw_init(i32* %13)
  %15 = load %struct.views*, %struct.views** %2, align 8
  %16 = getelementptr inbounds %struct.views, %struct.views* %15, i32 0, i32 1
  %17 = load %struct.views*, %struct.views** %2, align 8
  %18 = getelementptr inbounds %struct.views, %struct.views* %17, i32 0, i32 0
  %19 = call i32 @lock_protect(i32* %16, i32* %18, i32 4)
  %20 = load %struct.views*, %struct.views** %2, align 8
  store %struct.views* %20, %struct.views** %1, align 8
  br label %21

21:                                               ; preds = %8, %7
  %22 = load %struct.views*, %struct.views** %1, align 8
  ret %struct.views* %22
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
