; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_build_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_build_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.roff_node*, i32 }
%struct.roff_node = type { i32, i32, i32, %struct.roff_node*, %struct.roff_node* }

@NODE_NOSRC = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@NODE_DELIMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32)* @build_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_list(%struct.roff_man* %0, i32 %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %8 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %7, i32 0, i32 0
  %9 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 3
  %11 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  store %struct.roff_node* %11, %struct.roff_node** %5, align 8
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %103, %2
  %13 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %14 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %18 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @roff_elem_alloc(%struct.roff_man* %13, i32 %16, i32 %19, i32 %20)
  %22 = load i32, i32* @NODE_NOSRC, align 4
  %23 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %24 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %23, i32 0, i32 0
  %25 = load %struct.roff_node*, %struct.roff_node** %24, align 8
  %26 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 8
  %29 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %30 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %31 = call i32 @roff_node_relink(%struct.roff_man* %29, %struct.roff_node* %30)
  %32 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %33 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %32, i32 0, i32 0
  %34 = load %struct.roff_node*, %struct.roff_node** %33, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 4
  %36 = load %struct.roff_node*, %struct.roff_node** %35, align 8
  %37 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %38 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %37, i32 0, i32 0
  store %struct.roff_node* %36, %struct.roff_node** %38, align 8
  store %struct.roff_node* %36, %struct.roff_node** %5, align 8
  %39 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %40 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %41 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %43 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %42, i32 0, i32 3
  %44 = load %struct.roff_node*, %struct.roff_node** %43, align 8
  %45 = icmp eq %struct.roff_node* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %12
  %47 = load i32, i32* %6, align 4
  ret i32 %47

48:                                               ; preds = %12
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %53 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %52, i32 0, i32 3
  %54 = load %struct.roff_node*, %struct.roff_node** %53, align 8
  %55 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %54, i32 0, i32 3
  %56 = load %struct.roff_node*, %struct.roff_node** %55, align 8
  %57 = icmp ne %struct.roff_node* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %51, %48
  %59 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %60 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %64 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @roff_word_alloc(%struct.roff_man* %59, i32 %62, i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @NODE_DELIMC, align 4
  %68 = load i32, i32* @NODE_NOSRC, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %71 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %70, i32 0, i32 0
  %72 = load %struct.roff_node*, %struct.roff_node** %71, align 8
  %73 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %58, %51
  %77 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %78 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %77, i32 0, i32 0
  %79 = load %struct.roff_node*, %struct.roff_node** %78, align 8
  %80 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %79, i32 0, i32 3
  %81 = load %struct.roff_node*, %struct.roff_node** %80, align 8
  store %struct.roff_node* %81, %struct.roff_node** %5, align 8
  %82 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %83 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %82, i32 0, i32 3
  %84 = load %struct.roff_node*, %struct.roff_node** %83, align 8
  %85 = icmp eq %struct.roff_node* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %76
  %87 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %88 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %89 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %92 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @roff_word_alloc(%struct.roff_man* %87, i32 %90, i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @NODE_NOSRC, align 4
  %96 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %97 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %96, i32 0, i32 0
  %98 = load %struct.roff_node*, %struct.roff_node** %97, align 8
  %99 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %86, %76
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %12
}

declare dso_local i32 @roff_elem_alloc(%struct.roff_man*, i32, i32, i32) #1

declare dso_local i32 @roff_node_relink(%struct.roff_man*, %struct.roff_node*) #1

declare dso_local i32 @roff_word_alloc(%struct.roff_man*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
