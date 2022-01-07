; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i32 }
%struct.ub_result = type { i32, i32* }
%struct.ctx_query = type { %struct.TYPE_2__, %struct.ub_result*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@UB_NOMEM = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_resolve(%struct.ub_ctx* %0, i8* %1, i32 %2, i32 %3, %struct.ub_result** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ub_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ub_result**, align 8
  %12 = alloca %struct.ctx_query*, align 8
  %13 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ub_result** %4, %struct.ub_result*** %11, align 8
  %14 = load %struct.ub_result**, %struct.ub_result*** %11, align 8
  store %struct.ub_result* null, %struct.ub_result** %14, align 8
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 0
  %17 = call i32 @lock_basic_lock(i32* %16)
  %18 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %5
  %23 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %24 = call i32 @context_finalize(%struct.ub_ctx* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %28, i32 0, i32 0
  %30 = call i32 @lock_basic_unlock(i32* %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %109

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %5
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %34, i32 0, i32 0
  %36 = call i32 @lock_basic_unlock(i32* %35)
  %37 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.ctx_query* @context_new(%struct.ub_ctx* %37, i8* %38, i32 %39, i32 %40, i32* null, i32* null, i32* null)
  store %struct.ctx_query* %41, %struct.ctx_query** %12, align 8
  %42 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %43 = icmp ne %struct.ctx_query* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @UB_NOMEM, align 4
  store i32 %45, i32* %6, align 4
  br label %109

46:                                               ; preds = %33
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %48 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %49 = call i32 @libworker_fg(%struct.ub_ctx* %47, %struct.ctx_query* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %53, i32 0, i32 0
  %55 = call i32 @lock_basic_lock(i32* %54)
  %56 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %56, i32 0, i32 1
  %58 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %59 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rbtree_delete(i32* %57, i32 %61)
  %63 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %64 = call i32 @context_query_delete(%struct.ctx_query* %63)
  %65 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %65, i32 0, i32 0
  %67 = call i32 @lock_basic_unlock(i32* %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %109

69:                                               ; preds = %46
  %70 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %71 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %74 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %73, i32 0, i32 1
  %75 = load %struct.ub_result*, %struct.ub_result** %74, align 8
  %76 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %75, i32 0, i32 1
  store i32* %72, i32** %76, align 8
  %77 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %78 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %82 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %81, i32 0, i32 1
  %83 = load %struct.ub_result*, %struct.ub_result** %82, align 8
  %84 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %86 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %88 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %87, i32 0, i32 1
  %89 = load %struct.ub_result*, %struct.ub_result** %88, align 8
  %90 = load %struct.ub_result**, %struct.ub_result*** %11, align 8
  store %struct.ub_result* %89, %struct.ub_result** %90, align 8
  %91 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %92 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %91, i32 0, i32 1
  store %struct.ub_result* null, %struct.ub_result** %92, align 8
  %93 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %93, i32 0, i32 0
  %95 = call i32 @lock_basic_lock(i32* %94)
  %96 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %96, i32 0, i32 1
  %98 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %99 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @rbtree_delete(i32* %97, i32 %101)
  %103 = load %struct.ctx_query*, %struct.ctx_query** %12, align 8
  %104 = call i32 @context_query_delete(%struct.ctx_query* %103)
  %105 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %106 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %105, i32 0, i32 0
  %107 = call i32 @lock_basic_unlock(i32* %106)
  %108 = load i32, i32* @UB_NOERROR, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %69, %52, %44, %27
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @context_finalize(%struct.ub_ctx*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local %struct.ctx_query* @context_new(%struct.ub_ctx*, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @libworker_fg(%struct.ub_ctx*, %struct.ctx_query*) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
