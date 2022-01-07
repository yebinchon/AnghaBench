; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_serialize_new_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_serialize_new_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@UB_LIBCMD_NEWQUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @context_serialize_new_query(%struct.ctx_query* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ctx_query*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.ctx_query* %0, %struct.ctx_query** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  %9 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @strlen(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %66

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @UB_LIBCMD_NEWQUERY, align 4
  %30 = call i32 @sldns_write_uint32(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  %34 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @sldns_write_uint32(i32* %32, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  %41 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sldns_write_uint32(i32* %39, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 12
  %49 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  %50 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @sldns_write_uint32(i32* %48, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 16
  %58 = load %struct.ctx_query*, %struct.ctx_query** %4, align 8
  %59 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @memmove(i32* %57, i32 %62, i64 %63)
  %65 = load i32*, i32** %6, align 8
  store i32* %65, i32** %3, align 8
  br label %66

66:                                               ; preds = %27, %26
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sldns_write_uint32(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
