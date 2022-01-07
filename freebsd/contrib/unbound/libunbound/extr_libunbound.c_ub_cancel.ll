; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i32, i32, i32, i32 }
%struct.ctx_query = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UB_NOID = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4
@UB_PIPE = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_cancel(%struct.ub_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctx_query*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %9, i32 0, i32 0
  %11 = call i32 @lock_basic_lock(i32* %10)
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %12, i32 0, i32 4
  %14 = call i64 @rbtree_search(i32* %13, i32* %5)
  %15 = inttoptr i64 %14 to %struct.ctx_query*
  store %struct.ctx_query* %15, %struct.ctx_query** %6, align 8
  %16 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %17 = icmp ne %struct.ctx_query* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %20 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %24, i32 0, i32 0
  %26 = call i32 @lock_basic_unlock(i32* %25)
  %27 = load i32, i32* @UB_NOID, align 4
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %18
  %29 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %30 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @log_assert(i32 %31)
  %33 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %34 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %86, label %39

39:                                               ; preds = %28
  %40 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %40, i32 0, i32 4
  %42 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %43 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rbtree_delete(i32* %41, i32 %45)
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %52 = call i32* @context_serialize_cancel(%struct.ctx_query* %51, i32* %8)
  store i32* %52, i32** %7, align 8
  %53 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %54 = call i32 @context_query_delete(%struct.ctx_query* %53)
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %55, i32 0, i32 0
  %57 = call i32 @lock_basic_unlock(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %39
  %61 = load i32, i32* @UB_NOMEM, align 4
  store i32 %61, i32* %3, align 4
  br label %92

62:                                               ; preds = %39
  %63 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %63, i32 0, i32 1
  %65 = call i32 @lock_basic_lock(i32* %64)
  %66 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @tube_write_msg(i32 %68, i32* %69, i32 %70, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %62
  %74 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %74, i32 0, i32 1
  %76 = call i32 @lock_basic_unlock(i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @free(i32* %77)
  %79 = load i32, i32* @UB_PIPE, align 4
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %62
  %81 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %81, i32 0, i32 1
  %83 = call i32 @lock_basic_unlock(i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @free(i32* %84)
  br label %90

86:                                               ; preds = %28
  %87 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %87, i32 0, i32 0
  %89 = call i32 @lock_basic_unlock(i32* %88)
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* @UB_NOERROR, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %73, %60, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_search(i32*, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32* @context_serialize_cancel(%struct.ctx_query*, i32*) #1

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

declare dso_local i32 @tube_write_msg(i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
