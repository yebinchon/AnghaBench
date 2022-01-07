; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_lookup_new_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_lookup_new_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i32 }
%struct.ub_ctx = type { i32 }

@UB_LIBCMD_NEWQUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctx_query* @context_lookup_new_query(%struct.ub_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ctx_query*, align 8
  %5 = alloca %struct.ub_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctx_query*, align 8
  %9 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 17
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.ctx_query* null, %struct.ctx_query** %4, align 8
  br label %38

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @sldns_read_uint32(i32* %15)
  %17 = load i64, i64* @UB_LIBCMD_NEWQUERY, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @log_assert(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = call i64 @sldns_read_uint32(i32* %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %25, i32 0, i32 0
  %27 = call i64 @rbtree_search(i32* %26, i32* %9)
  %28 = inttoptr i64 %27 to %struct.ctx_query*
  store %struct.ctx_query* %28, %struct.ctx_query** %8, align 8
  %29 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %30 = icmp ne %struct.ctx_query* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  store %struct.ctx_query* null, %struct.ctx_query** %4, align 8
  br label %38

32:                                               ; preds = %14
  %33 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %34 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @log_assert(i32 %35)
  %37 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  store %struct.ctx_query* %37, %struct.ctx_query** %4, align 8
  br label %38

38:                                               ; preds = %32, %31, %13
  %39 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  ret %struct.ctx_query* %39
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

declare dso_local i64 @rbtree_search(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
