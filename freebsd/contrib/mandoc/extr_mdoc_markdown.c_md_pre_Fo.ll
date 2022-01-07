; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Fo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Fo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i32* }

@MD_spc = common dso_local global i32 0, align 4
@MD_nl = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Fo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Fo(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %5 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %27 [
    i32 130, label %7
    i32 128, label %10
    i32 129, label %19
  ]

7:                                                ; preds = %1
  %8 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %9 = call i32 @md_pre_syn(%struct.roff_node* %8)
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %12 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %18 = call i32 @md_pre_raw(%struct.roff_node* %17)
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @MD_spc, align 4
  %21 = load i32, i32* @MD_nl, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @outflags, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @outflags, align 4
  %26 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %19, %16, %7
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @md_pre_syn(%struct.roff_node*) #1

declare dso_local i32 @md_pre_raw(%struct.roff_node*) #1

declare dso_local i32 @md_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
