; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Eo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Eo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@ENDBODY_NOT = common dso_local global i64 0, align 8
@MD_spc = common dso_local global i32 0, align 4
@MD_nl = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Eo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Eo(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %3 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %4 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ENDBODY_NOT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENDBODY_NOT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @md_preword()
  br label %81

32:                                               ; preds = %22, %17, %8, %1
  %33 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ENDBODY_NOT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %40 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %73, label %80

43:                                               ; preds = %32
  %44 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %45 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %43
  %53 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %54 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  %58 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %59 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %66 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %64, %52, %38
  %74 = load i32, i32* @MD_spc, align 4
  %75 = load i32, i32* @MD_nl, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* @outflags, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* @outflags, align 4
  br label %80

80:                                               ; preds = %73, %64, %57, %43, %38
  br label %81

81:                                               ; preds = %80, %30
  ret i32 1
}

declare dso_local i32 @md_preword(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
