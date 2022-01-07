; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_resolve_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_resolve_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ctx_query = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UB_NOMEM = common dso_local global i32 0, align 4
@UB_PIPE = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_resolve_async(%struct.ub_ctx* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ub_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ctx_query*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32*, i32** %15, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32*, i32** %15, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %7
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %26, i32 0, i32 3
  %28 = call i32 @lock_basic_lock(i32* %27)
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %35 = call i32 @context_finalize(%struct.ub_ctx* %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %39, i32 0, i32 3
  %41 = call i32 @lock_basic_unlock(i32* %40)
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %8, align 4
  br label %148

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %51 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %52, i32 0, i32 3
  %54 = call i32 @lock_basic_unlock(i32* %53)
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %56 = call i32 @libworker_bg(%struct.ub_ctx* %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %49
  %60 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %61 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %60, i32 0, i32 3
  %62 = call i32 @lock_basic_lock(i32* %61)
  %63 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %65, i32 0, i32 3
  %67 = call i32 @lock_basic_unlock(i32* %66)
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %8, align 4
  br label %148

69:                                               ; preds = %49
  br label %74

70:                                               ; preds = %44
  %71 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %71, i32 0, i32 3
  %73 = call i32 @lock_basic_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %69
  %75 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = call %struct.ctx_query* @context_new(%struct.ub_ctx* %75, i8* %76, i32 %77, i32 %78, i32 %79, i32* null, i8* %80)
  store %struct.ctx_query* %81, %struct.ctx_query** %16, align 8
  %82 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %83 = icmp ne %struct.ctx_query* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* @UB_NOMEM, align 4
  store i32 %85, i32* %8, align 4
  br label %148

86:                                               ; preds = %74
  %87 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %87, i32 0, i32 3
  %89 = call i32 @lock_basic_lock(i32* %88)
  %90 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %91 = call i32* @context_serialize_new_query(%struct.ctx_query* %90, i32* %18)
  store i32* %91, i32** %17, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %112, label %94

94:                                               ; preds = %86
  %95 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %96 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %95, i32 0, i32 5
  %97 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %98 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rbtree_delete(i32* %96, i32 %100)
  %102 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %103 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %107 = call i32 @context_query_delete(%struct.ctx_query* %106)
  %108 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %109 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %108, i32 0, i32 3
  %110 = call i32 @lock_basic_unlock(i32* %109)
  %111 = load i32, i32* @UB_NOMEM, align 4
  store i32 %111, i32* %8, align 4
  br label %148

112:                                              ; preds = %86
  %113 = load i32*, i32** %15, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %117 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %15, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %115, %112
  %121 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %122 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %121, i32 0, i32 3
  %123 = call i32 @lock_basic_unlock(i32* %122)
  %124 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %125 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %124, i32 0, i32 1
  %126 = call i32 @lock_basic_lock(i32* %125)
  %127 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %128 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @tube_write_msg(i32 %129, i32* %130, i32 %131, i32 0)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %120
  %135 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %136 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %135, i32 0, i32 1
  %137 = call i32 @lock_basic_unlock(i32* %136)
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @free(i32* %138)
  %140 = load i32, i32* @UB_PIPE, align 4
  store i32 %140, i32* %8, align 4
  br label %148

141:                                              ; preds = %120
  %142 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %143 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %142, i32 0, i32 1
  %144 = call i32 @lock_basic_unlock(i32* %143)
  %145 = load i32*, i32** %17, align 8
  %146 = call i32 @free(i32* %145)
  %147 = load i32, i32* @UB_NOERROR, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %141, %134, %94, %84, %59, %38
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @context_finalize(%struct.ub_ctx*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @libworker_bg(%struct.ub_ctx*) #1

declare dso_local %struct.ctx_query* @context_new(%struct.ub_ctx*, i8*, i32, i32, i32, i32*, i8*) #1

declare dso_local i32* @context_serialize_new_query(%struct.ctx_query*, i32*) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

declare dso_local i32 @tube_write_msg(i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
