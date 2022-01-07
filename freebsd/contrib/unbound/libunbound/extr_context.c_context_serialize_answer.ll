; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_serialize_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_serialize_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@UB_LIBCMD_ANSWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @context_serialize_answer(%struct.ctx_query* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ctx_query*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.ctx_query* %0, %struct.ctx_query** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 48, i64* %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @sldns_buffer_remaining(i32* %17)
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i64 [ %18, %16 ], [ 0, %19 ]
  store i64 %21, i64* %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %26 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %33 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strlen(i32 %36)
  %38 = add nsw i32 %37, 1
  br label %40

39:                                               ; preds = %24, %20
  br label %40

40:                                               ; preds = %39, %31
  %41 = phi i32 [ %38, %31 ], [ 0, %39 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %45, %46
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @malloc(i64 %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %40
  store i32* null, i32** %5, align 8
  br label %117

56:                                               ; preds = %40
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* @UB_LIBCMD_ANSWER, align 8
  %59 = call i32 @sldns_write_uint32(i32* %57, i64 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %63 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @sldns_write_uint32(i32* %61, i64 %64)
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @sldns_write_uint32(i32* %67, i64 %69)
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 24
  %73 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %74 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @sldns_write_uint32(i32* %72, i64 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 32
  %79 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %80 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @sldns_write_uint32(i32* %78, i64 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 40
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @sldns_write_uint32(i32* %86, i64 %87)
  %89 = load i64, i64* %12, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %56
  %92 = load i32*, i32** %13, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %96 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @memmove(i32* %94, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %91, %56
  %103 = load i64, i64* %11, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32*, i32** %13, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @sldns_buffer_begin(i32* %111)
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @memmove(i32* %110, i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %105, %102
  %116 = load i32*, i32** %13, align 8
  store i32* %116, i32** %5, align 8
  br label %117

117:                                              ; preds = %115, %55
  %118 = load i32*, i32** %5, align 8
  ret i32* %118
}

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @sldns_write_uint32(i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32, i64) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
