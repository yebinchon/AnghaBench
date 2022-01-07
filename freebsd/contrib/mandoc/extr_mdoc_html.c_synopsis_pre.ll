; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_synopsis_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_synopsis_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32 }
%struct.roff_node = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NODE_SYNPRETTY = common dso_local global i32 0, align 4
@TAG_BR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TAG_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*, %struct.roff_node*)* @synopsis_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synopsis_pre(%struct.html* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %5 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %6 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp eq %struct.TYPE_2__* null, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @NODE_SYNPRETTY, align 4
  %11 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %12 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %2
  br label %75

17:                                               ; preds = %9
  %18 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 131, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 130, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 132, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.html*, %struct.html** %3, align 8
  %44 = load i32, i32* @TAG_BR, align 4
  %45 = call i32 (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %43, i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %75

46:                                               ; preds = %37, %32, %27, %17
  %47 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  switch i64 %51, label %65 [
    i64 133, label %52
    i64 132, label %52
    i64 131, label %52
    i64 129, label %52
    i64 128, label %52
    i64 130, label %53
  ]

52:                                               ; preds = %46, %46, %46, %46, %46
  br label %69

53:                                               ; preds = %46
  %54 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %55 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 132
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %60 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 131
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %69

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %46, %64
  %66 = load %struct.html*, %struct.html** %3, align 8
  %67 = load i32, i32* @TAG_BR, align 4
  %68 = call i32 (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %66, i32 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %75

69:                                               ; preds = %63, %52
  %70 = load %struct.html*, %struct.html** %3, align 8
  %71 = call i32 @html_close_paragraph(%struct.html* %70)
  %72 = load %struct.html*, %struct.html** %3, align 8
  %73 = load i32, i32* @TAG_P, align 4
  %74 = call i32 (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %72, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %65, %42, %16
  ret void
}

declare dso_local i32 @print_otag(%struct.html*, i32, i8*, ...) #1

declare dso_local i32 @html_close_paragraph(%struct.html*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
