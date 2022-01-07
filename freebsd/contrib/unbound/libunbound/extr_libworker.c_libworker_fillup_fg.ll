; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_fillup_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_fillup_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_query = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx_query*, i32, i32*, i32, i8*, i32)* @libworker_fillup_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libworker_fillup_fg(%struct.ctx_query* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ctx_query*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ctx_query* %0, %struct.ctx_query** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %15 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @strdup(i8* %21)
  %23 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %24 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %6
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %33 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %38 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %80

39:                                               ; preds = %27
  %40 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %41 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %42 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %46 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @sldns_buffer_begin(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @sldns_buffer_limit(i32* %49)
  %51 = call i32 @memdup(i32 %48, i32 %50)
  %52 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %53 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @sldns_buffer_limit(i32* %54)
  %56 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %57 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %59 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %39
  br label %80

63:                                               ; preds = %39
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %66 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %68 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %72 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @libworker_enter_result(%struct.TYPE_6__* %69, i32* %70, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %63, %62, %30
  ret void
}

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @memdup(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @libworker_enter_result(%struct.TYPE_6__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
