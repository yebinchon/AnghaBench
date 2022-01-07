; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_add_bg_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_add_bg_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ctx_query = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@UB_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of memory for async answer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libworker*, %struct.ctx_query*, i32*, i32, i8*, i32)* @add_bg_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bg_result(%struct.libworker* %0, %struct.ctx_query* %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.libworker*, align 8
  %8 = alloca %struct.ctx_query*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.libworker* %0, %struct.libworker** %7, align 8
  store %struct.ctx_query* %1, %struct.ctx_query** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.libworker*, %struct.libworker** %7, align 8
  %16 = getelementptr inbounds %struct.libworker, %struct.libworker* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %21 = call i32 @context_query_delete(%struct.ctx_query* %20)
  br label %140

22:                                               ; preds = %6
  %23 = load %struct.libworker*, %struct.libworker** %7, align 8
  %24 = getelementptr inbounds %struct.libworker, %struct.libworker* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %22
  %28 = load %struct.libworker*, %struct.libworker** %7, align 8
  %29 = getelementptr inbounds %struct.libworker, %struct.libworker* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = call i32 @lock_basic_lock(i32* %31)
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @strdup(i8* %36)
  %38 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %39 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %27
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %45 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @sldns_buffer_remaining(i32* %51)
  %53 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %54 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @sldns_buffer_begin(i32* %55)
  %57 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %58 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memdup(i32 %56, i32 %59)
  %61 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %62 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %64 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %50
  %68 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %69 = load i32, i32* @UB_NOMEM, align 4
  %70 = call i32* @context_serialize_answer(%struct.ctx_query* %68, i32 %69, i32* null, i32* %14)
  store i32* %70, i32** %13, align 8
  br label %75

71:                                               ; preds = %50
  %72 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32* @context_serialize_answer(%struct.ctx_query* %72, i32 %73, i32* null, i32* %14)
  store i32* %74, i32** %13, align 8
  br label %75

75:                                               ; preds = %71, %67
  br label %80

76:                                               ; preds = %42
  %77 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32* @context_serialize_answer(%struct.ctx_query* %77, i32 %78, i32* null, i32* %14)
  store i32* %79, i32** %13, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.libworker*, %struct.libworker** %7, align 8
  %82 = getelementptr inbounds %struct.libworker, %struct.libworker* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = call i32 @lock_basic_unlock(i32* %84)
  br label %123

86:                                               ; preds = %22
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i8*, i8** %11, align 8
  %91 = call i8* @strdup(i8* %90)
  %92 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %93 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i8* %91, i8** %95, align 8
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %99 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  %102 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32* @context_serialize_answer(%struct.ctx_query* %102, i32 %103, i32* %104, i32* %14)
  store i32* %105, i32** %13, align 8
  %106 = load %struct.libworker*, %struct.libworker** %7, align 8
  %107 = getelementptr inbounds %struct.libworker, %struct.libworker* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %111 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @rbtree_delete(i32* %109, i32 %113)
  %115 = load %struct.libworker*, %struct.libworker** %7, align 8
  %116 = getelementptr inbounds %struct.libworker, %struct.libworker* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.ctx_query*, %struct.ctx_query** %8, align 8
  %122 = call i32 @context_query_delete(%struct.ctx_query* %121)
  br label %123

123:                                              ; preds = %96, %80
  %124 = load i32*, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %140

128:                                              ; preds = %123
  %129 = load %struct.libworker*, %struct.libworker** %7, align 8
  %130 = getelementptr inbounds %struct.libworker, %struct.libworker* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @tube_queue_item(i32 %133, i32* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %128
  %139 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %19, %126, %138, %128
  ret void
}

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @memdup(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32* @context_serialize_answer(%struct.ctx_query*, i32, i32*, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @tube_queue_item(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
