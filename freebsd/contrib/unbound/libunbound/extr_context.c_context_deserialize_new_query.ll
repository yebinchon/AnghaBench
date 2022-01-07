; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_deserialize_new_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_deserialize_new_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ctx_query*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ub_ctx = type { i32, i32 }
%struct.ub_result = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ub_result*, i32 }

@UB_LIBCMD_NEWQUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctx_query* @context_deserialize_new_query(%struct.ub_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ctx_query*, align 8
  %5 = alloca %struct.ub_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctx_query*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i64 @calloc(i32 1, i32 40)
  %10 = inttoptr i64 %9 to %struct.ctx_query*
  store %struct.ctx_query* %10, %struct.ctx_query** %8, align 8
  %11 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %12 = icmp ne %struct.ctx_query* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ctx_query* null, %struct.ctx_query** %4, align 8
  br label %106

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 17
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %20 = bitcast %struct.ctx_query* %19 to %struct.ub_result*
  %21 = call i32 @free(%struct.ub_result* %20)
  store %struct.ctx_query* null, %struct.ctx_query** %4, align 8
  br label %106

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @sldns_read_uint32(i32* %23)
  %25 = load i64, i64* @UB_LIBCMD_NEWQUERY, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @log_assert(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = call i64 @sldns_read_uint32(i32* %30)
  %32 = trunc i64 %31 to i32
  %33 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %34 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %36 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %35, i32 0, i32 0
  %37 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %38 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %41 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = call i64 @calloc(i32 1, i32 40)
  %43 = inttoptr i64 %42 to %struct.ub_result*
  %44 = bitcast %struct.ub_result* %43 to %struct.ctx_query*
  %45 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %46 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %45, i32 0, i32 5
  store %struct.ctx_query* %44, %struct.ctx_query** %46, align 8
  %47 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %48 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %47, i32 0, i32 5
  %49 = load %struct.ctx_query*, %struct.ctx_query** %48, align 8
  %50 = icmp ne %struct.ctx_query* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %22
  %52 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %53 = bitcast %struct.ctx_query* %52 to %struct.ub_result*
  %54 = call i32 @free(%struct.ub_result* %53)
  store %struct.ctx_query* null, %struct.ctx_query** %4, align 8
  br label %106

55:                                               ; preds = %22
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = call i64 @sldns_read_uint32(i32* %57)
  %59 = trunc i64 %58 to i32
  %60 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %61 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %60, i32 0, i32 5
  %62 = load %struct.ctx_query*, %struct.ctx_query** %61, align 8
  %63 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  %66 = call i64 @sldns_read_uint32(i32* %65)
  %67 = trunc i64 %66 to i32
  %68 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %69 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %68, i32 0, i32 5
  %70 = load %struct.ctx_query*, %struct.ctx_query** %69, align 8
  %71 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %70, i32 0, i32 3
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @strdup(i8* %74)
  %76 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %77 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %76, i32 0, i32 5
  %78 = load %struct.ctx_query*, %struct.ctx_query** %77, align 8
  %79 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %78, i32 0, i32 6
  store i32 %75, i32* %79, align 8
  %80 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %81 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %80, i32 0, i32 5
  %82 = load %struct.ctx_query*, %struct.ctx_query** %81, align 8
  %83 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %55
  %87 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %88 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %87, i32 0, i32 5
  %89 = load %struct.ctx_query*, %struct.ctx_query** %88, align 8
  %90 = bitcast %struct.ctx_query* %89 to %struct.ub_result*
  %91 = call i32 @free(%struct.ub_result* %90)
  %92 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %93 = bitcast %struct.ctx_query* %92 to %struct.ub_result*
  %94 = call i32 @free(%struct.ub_result* %93)
  store %struct.ctx_query* null, %struct.ctx_query** %4, align 8
  br label %106

95:                                               ; preds = %55
  %96 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %100, i32 0, i32 0
  %102 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %103 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %102, i32 0, i32 4
  %104 = call i32 @rbtree_insert(i32* %101, %struct.TYPE_2__* %103)
  %105 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  store %struct.ctx_query* %105, %struct.ctx_query** %4, align 8
  br label %106

106:                                              ; preds = %95, %86, %51, %18, %13
  %107 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  ret %struct.ctx_query* %107
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.ub_result*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @rbtree_insert(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
