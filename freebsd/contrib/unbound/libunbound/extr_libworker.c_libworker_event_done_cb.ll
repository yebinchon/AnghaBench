; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_event_done_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_event_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i8*, i32 (i8*, i32, i8*, i32, i32, i8*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ub_ctx* }
%struct.ub_ctx = type { i32, i32, i32 }

@sec_status_bogus = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libworker_event_done_cb(i8* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctx_query*, align 8
  %14 = alloca i32 (i8*, i32, i8*, i32, i32, i8*, i32)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ub_ctx*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.ctx_query*
  store %struct.ctx_query* %20, %struct.ctx_query** %13, align 8
  %21 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %22 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %21, i32 0, i32 4
  %23 = load i32 (i8*, i32, i8*, i32, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32, i32, i8*, i32)** %22, align 8
  store i32 (i8*, i32, i8*, i32, i32, i8*, i32)* %23, i32 (i8*, i32, i8*, i32, i32, i8*, i32)** %14, align 8
  %24 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %25 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %28 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  %30 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %31 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %33, align 8
  store %struct.ub_ctx* %34, %struct.ub_ctx** %17, align 8
  %35 = load %struct.ub_ctx*, %struct.ub_ctx** %17, align 8
  %36 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %35, i32 0, i32 0
  %37 = call i32 @lock_basic_lock(i32* %36)
  %38 = load %struct.ub_ctx*, %struct.ub_ctx** %17, align 8
  %39 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %38, i32 0, i32 2
  %40 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %41 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rbtree_delete(i32* %39, i32 %43)
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %17, align 8
  %46 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ctx_query*, %struct.ctx_query** %13, align 8
  %50 = call i32 @context_query_delete(%struct.ctx_query* %49)
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %17, align 8
  %52 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %51, i32 0, i32 0
  %53 = call i32 @lock_basic_unlock(i32* %52)
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %93, label %56

56:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @sec_status_bogus, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %18, align 4
  br label %67

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @sec_status_secure, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 2, i32* %18, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i32 (i8*, i32, i8*, i32, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32, i32, i8*, i32)** %14, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @sldns_buffer_begin(i32* %74)
  %76 = inttoptr i64 %75 to i8*
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i8* [ %76, %73 ], [ null, %77 ]
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = call i64 @sldns_buffer_limit(i32* %83)
  %85 = trunc i64 %84 to i32
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 0, %86 ]
  %89 = load i32, i32* %18, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 %68(i8* %69, i32 %70, i8* %79, i32 %88, i32 %89, i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %6
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
