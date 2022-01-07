; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_demandoc.c_pmdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_demandoc.c_pmdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i64, %struct.roff_node*, i32, i32, i32, %struct.roff_node* }

@NODE_LINE = common dso_local global i32 0, align 4
@ROFFT_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*, i32*, i32*, i32)* @pmdoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmdoc(%struct.roff_node* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.roff_node* %0, %struct.roff_node** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %56, %4
  %10 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %11 = icmp ne %struct.roff_node* %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load i32, i32* @NODE_LINE, align 4
  %14 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %21 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pline(i32 %22, i32* %23, i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load i64, i64* @ROFFT_TEXT, align 8
  %29 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %30 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %38 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @pstring(i32 %36, i32 %39, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %27
  %44 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %45 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %44, i32 0, i32 2
  %46 = load %struct.roff_node*, %struct.roff_node** %45, align 8
  %47 = icmp ne %struct.roff_node* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %50 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %49, i32 0, i32 2
  %51 = load %struct.roff_node*, %struct.roff_node** %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  call void @pmdoc(%struct.roff_node* %51, i32* %52, i32* %53, i32 %54)
  br label %55

55:                                               ; preds = %48, %43
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %58 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %57, i32 0, i32 6
  %59 = load %struct.roff_node*, %struct.roff_node** %58, align 8
  store %struct.roff_node* %59, %struct.roff_node** %5, align 8
  br label %9

60:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pline(i32, i32*, i32*, i32) #1

declare dso_local i32 @pstring(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
