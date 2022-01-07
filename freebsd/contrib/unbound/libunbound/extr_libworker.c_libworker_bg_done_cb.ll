; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_bg_done_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_bg_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.ub_ctx*, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32* }
%struct.ub_ctx = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@BIT_RD = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libworker_bg_done_cb(i8* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctx_query*, align 8
  %14 = alloca %struct.ub_ctx*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.ctx_query*
  store %struct.ctx_query* %16, %struct.ctx_query** %13, align 8
  %17 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %18 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %6
  %22 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %23 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %21, %6
  %31 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %32 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %39 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.ub_ctx*, %struct.ub_ctx** %41, align 8
  store %struct.ub_ctx* %42, %struct.ub_ctx** %14, align 8
  %43 = load %struct.ub_ctx*, %struct.ub_ctx** %14, align 8
  %44 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %43, i32 0, i32 0
  %45 = call i32 @lock_basic_lock(i32* %44)
  %46 = load %struct.ub_ctx*, %struct.ub_ctx** %14, align 8
  %47 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %46, i32 0, i32 2
  %48 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %49 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rbtree_delete(i32* %47, i32 %51)
  %53 = load %struct.ub_ctx*, %struct.ub_ctx** %14, align 8
  %54 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %58 = call i32 @context_query_delete(%struct.ctx_query* %57)
  %59 = load %struct.ub_ctx*, %struct.ub_ctx** %14, align 8
  %60 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %59, i32 0, i32 0
  %61 = call i32 @lock_basic_unlock(i32* %60)
  br label %62

62:                                               ; preds = %37, %30
  br label %95

63:                                               ; preds = %21
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %66 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %63
  %70 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %71 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %69, %63
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @BIT_RD, align 4
  %84 = call i32 @error_encode(i32* %81, i32 %82, i32* null, i32 0, i32 %83, i32* null)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %87 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* @UB_NOERROR, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @add_bg_result(%struct.TYPE_8__* %88, %struct.ctx_query* %89, i32* %90, i32 %91, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %62
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @error_encode(i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @add_bg_result(%struct.TYPE_8__*, %struct.ctx_query*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
