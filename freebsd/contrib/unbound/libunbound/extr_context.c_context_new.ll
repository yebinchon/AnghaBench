; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i32, i32, i32, %struct.TYPE_2__, %struct.ctx_query*, i32, i8*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ub_ctx = type { i32, i32, i32 }
%struct.ub_result = type { i32, i32, i32, %struct.TYPE_2__, %struct.ub_result*, i32, i8*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctx_query* @context_new(%struct.ub_ctx* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.ctx_query*, align 8
  %9 = alloca %struct.ub_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ctx_query*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = call i64 @calloc(i32 1, i32 72)
  %18 = inttoptr i64 %17 to %struct.ctx_query*
  store %struct.ctx_query* %18, %struct.ctx_query** %16, align 8
  %19 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %20 = icmp ne %struct.ctx_query* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  store %struct.ctx_query* null, %struct.ctx_query** %8, align 8
  br label %134

22:                                               ; preds = %7
  %23 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %23, i32 0, i32 0
  %25 = call i32 @lock_basic_lock(i32* %24)
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %27 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %28 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %27, i32 0, i32 9
  %29 = call i32 @find_id(%struct.ub_ctx* %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %32, i32 0, i32 0
  %34 = call i32 @lock_basic_unlock(i32* %33)
  %35 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %36 = bitcast %struct.ctx_query* %35 to %struct.ub_result*
  %37 = call i32 @free(%struct.ub_result* %36)
  store %struct.ctx_query* null, %struct.ctx_query** %8, align 8
  br label %134

38:                                               ; preds = %22
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %39, i32 0, i32 0
  %41 = call i32 @lock_basic_unlock(i32* %40)
  %42 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %43 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %42, i32 0, i32 9
  %44 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %45 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32*, i32** %14, align 8
  %51 = icmp ne i32* %50, null
  br label %52

52:                                               ; preds = %49, %38
  %53 = phi i1 [ true, %38 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %56 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %59 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %58, i32 0, i32 8
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %62 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %61, i32 0, i32 7
  store i32* %60, i32** %62, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %65 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = call i64 @calloc(i32 1, i32 72)
  %67 = inttoptr i64 %66 to %struct.ub_result*
  %68 = bitcast %struct.ub_result* %67 to %struct.ctx_query*
  %69 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %70 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %69, i32 0, i32 4
  store %struct.ctx_query* %68, %struct.ctx_query** %70, align 8
  %71 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %72 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %71, i32 0, i32 4
  %73 = load %struct.ctx_query*, %struct.ctx_query** %72, align 8
  %74 = icmp ne %struct.ctx_query* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %52
  %76 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %77 = bitcast %struct.ctx_query* %76 to %struct.ub_result*
  %78 = call i32 @free(%struct.ub_result* %77)
  store %struct.ctx_query* null, %struct.ctx_query** %8, align 8
  br label %134

79:                                               ; preds = %52
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strdup(i8* %80)
  %82 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %83 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %82, i32 0, i32 4
  %84 = load %struct.ctx_query*, %struct.ctx_query** %83, align 8
  %85 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %84, i32 0, i32 5
  store i32 %81, i32* %85, align 8
  %86 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %87 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %86, i32 0, i32 4
  %88 = load %struct.ctx_query*, %struct.ctx_query** %87, align 8
  %89 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %79
  %93 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %94 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %93, i32 0, i32 4
  %95 = load %struct.ctx_query*, %struct.ctx_query** %94, align 8
  %96 = bitcast %struct.ctx_query* %95 to %struct.ub_result*
  %97 = call i32 @free(%struct.ub_result* %96)
  %98 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %99 = bitcast %struct.ctx_query* %98 to %struct.ub_result*
  %100 = call i32 @free(%struct.ub_result* %99)
  store %struct.ctx_query* null, %struct.ctx_query** %8, align 8
  br label %134

101:                                              ; preds = %79
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %104 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %103, i32 0, i32 4
  %105 = load %struct.ctx_query*, %struct.ctx_query** %104, align 8
  %106 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %109 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %108, i32 0, i32 4
  %110 = load %struct.ctx_query*, %struct.ctx_query** %109, align 8
  %111 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 8
  %112 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %113 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %112, i32 0, i32 0
  %114 = call i32 @lock_basic_lock(i32* %113)
  %115 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %116 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %101
  %120 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %101
  %125 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %126 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %125, i32 0, i32 1
  %127 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %128 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %127, i32 0, i32 3
  %129 = call i32 @rbtree_insert(i32* %126, %struct.TYPE_2__* %128)
  %130 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %131 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %130, i32 0, i32 0
  %132 = call i32 @lock_basic_unlock(i32* %131)
  %133 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  store %struct.ctx_query* %133, %struct.ctx_query** %8, align 8
  br label %134

134:                                              ; preds = %124, %92, %75, %31, %21
  %135 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  ret %struct.ctx_query* %135
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @find_id(%struct.ub_ctx*, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @free(%struct.ub_result*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @rbtree_insert(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
