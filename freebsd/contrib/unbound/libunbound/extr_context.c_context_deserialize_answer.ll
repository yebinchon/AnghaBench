; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_deserialize_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_deserialize_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i64, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ub_ctx = type { i32 }

@UB_LIBCMD_ANSWER = common dso_local global i64 0, align 8
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctx_query* @context_deserialize_answer(%struct.ub_ctx* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ctx_query*, align 8
  %6 = alloca %struct.ub_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ctx_query*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 48, i64* %10, align 8
  store %struct.ctx_query* null, %struct.ctx_query** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.ctx_query* null, %struct.ctx_query** %5, align 8
  br label %142

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @sldns_read_uint32(i32* %19)
  %21 = load i64, i64* @UB_LIBCMD_ANSWER, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @log_assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = call i64 @sldns_read_uint32(i32* %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 0
  %31 = call i64 @rbtree_search(i32* %30, i32* %12)
  %32 = inttoptr i64 %31 to %struct.ctx_query*
  store %struct.ctx_query* %32, %struct.ctx_query** %11, align 8
  %33 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %34 = icmp ne %struct.ctx_query* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  store %struct.ctx_query* null, %struct.ctx_query** %5, align 8
  br label %142

36:                                               ; preds = %18
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  %39 = call i64 @sldns_read_uint32(i32* %38)
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 24
  %44 = call i64 @sldns_read_uint32(i32* %43)
  %45 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %46 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 32
  %49 = call i64 @sldns_read_uint32(i32* %48)
  %50 = trunc i64 %49 to i32
  %51 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %52 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 40
  %57 = call i64 @sldns_read_uint32(i32* %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %36
  %62 = load i64, i64* %13, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %61
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %66, %67
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @memdup(i32* %73, i64 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %78 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  br label %81

81:                                               ; preds = %70, %64
  %82 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %83 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %90 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @UB_NOMEM, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  store %struct.ctx_query* %93, %struct.ctx_query** %5, align 8
  br label %142

94:                                               ; preds = %81
  %95 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %96 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  br label %103

103:                                              ; preds = %94, %61, %36
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %105, %106
  %108 = icmp ugt i64 %104, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %13, align 8
  %114 = sub i64 %112, %113
  %115 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %116 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %123 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @memdup(i32* %121, i64 %124)
  %126 = inttoptr i64 %125 to i32*
  %127 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %128 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %127, i32 0, i32 1
  store i32* %126, i32** %128, align 8
  %129 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %130 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %109
  %134 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %135 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* @UB_NOMEM, align 4
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  store %struct.ctx_query* %138, %struct.ctx_query** %5, align 8
  br label %142

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139, %103
  %141 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  store %struct.ctx_query* %141, %struct.ctx_query** %5, align 8
  br label %142

142:                                              ; preds = %140, %133, %88, %35, %17
  %143 = load %struct.ctx_query*, %struct.ctx_query** %5, align 8
  ret %struct.ctx_query* %143
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

declare dso_local i64 @rbtree_search(i32*, i32*) #1

declare dso_local i64 @memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
