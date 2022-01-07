; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_module_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_module_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.search_context = type { i32*, i32*, i64 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"__exidx_start\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"exidx_start\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__exidx_end\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"exidx_end\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Invalid module %s, no unwind tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @module_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_search(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.search_context*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.search_context*
  store %struct.search_context* %10, %struct.search_context** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.search_context*, %struct.search_context** %6, align 8
  %15 = getelementptr inbounds %struct.search_context, %struct.search_context* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.search_context*, %struct.search_context** %6, align 8
  %27 = getelementptr inbounds %struct.search_context, %struct.search_context* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i64 @LINKER_LOOKUP_SYMBOL(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i64 @LINKER_LOOKUP_SYMBOL(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34, %30
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @LINKER_SYMBOL_VALUES(%struct.TYPE_8__* %39, i32 %40, %struct.TYPE_7__* %7)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.search_context*, %struct.search_context** %6, align 8
  %47 = getelementptr inbounds %struct.search_context, %struct.search_context* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %43, %38, %34
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i64 @LINKER_LOOKUP_SYMBOL(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = call i64 @LINKER_LOOKUP_SYMBOL(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52, %48
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @LINKER_SYMBOL_VALUES(%struct.TYPE_8__* %57, i32 %58, %struct.TYPE_7__* %7)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.search_context*, %struct.search_context** %6, align 8
  %65 = getelementptr inbounds %struct.search_context, %struct.search_context* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %61, %56, %52
  %67 = load %struct.search_context*, %struct.search_context** %6, align 8
  %68 = getelementptr inbounds %struct.search_context, %struct.search_context* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.search_context*, %struct.search_context** %6, align 8
  %73 = getelementptr inbounds %struct.search_context, %struct.search_context* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %83

77:                                               ; preds = %71, %66
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %18, %2
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @LINKER_LOOKUP_SYMBOL(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @LINKER_SYMBOL_VALUES(%struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
