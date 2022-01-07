; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_syn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NODE_SYNPRETTY = common dso_local global i32 0, align 4
@MD_br = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MD_sp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*)* @md_pre_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_pre_syn(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %3 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %4 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %9 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NODE_SYNPRETTY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7, %1
  br label %73

15:                                               ; preds = %7
  %16 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %17 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %15
  %26 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %27 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 130
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 131
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 132
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @MD_br, align 4
  %42 = load i32, i32* @outflags, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @outflags, align 4
  br label %73

44:                                               ; preds = %35, %30, %25, %15
  %45 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %46 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  switch i64 %49, label %69 [
    i64 133, label %50
    i64 132, label %50
    i64 131, label %50
    i64 129, label %50
    i64 128, label %50
    i64 130, label %54
  ]

50:                                               ; preds = %44, %44, %44, %44, %44
  %51 = load i32, i32* @MD_sp, align 4
  %52 = load i32, i32* @outflags, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @outflags, align 4
  br label %73

54:                                               ; preds = %44
  %55 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %56 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 132
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 131
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @MD_sp, align 4
  %66 = load i32, i32* @outflags, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* @outflags, align 4
  br label %73

68:                                               ; preds = %59, %54
  br label %69

69:                                               ; preds = %44, %68
  %70 = load i32, i32* @MD_br, align 4
  %71 = load i32, i32* @outflags, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* @outflags, align 4
  br label %73

73:                                               ; preds = %14, %40, %69, %64, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
