; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_An.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_An.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MD_An_nosplit = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MD_An_split = common dso_local global i32 0, align 4
@MD_br = common dso_local global i32 0, align 4
@SEC_AUTHORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_An to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_An(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %5 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %26 [
    i32 128, label %10
    i32 129, label %18
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @MD_An_nosplit, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @outflags, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @outflags, align 4
  %15 = load i32, i32* @MD_An_split, align 4
  %16 = load i32, i32* @outflags, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @outflags, align 4
  store i32 0, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* @MD_An_split, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @outflags, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @outflags, align 4
  %23 = load i32, i32* @MD_An_nosplit, align 4
  %24 = load i32, i32* @outflags, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @outflags, align 4
  store i32 0, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load i32, i32* @outflags, align 4
  %28 = load i32, i32* @MD_An_split, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @MD_br, align 4
  %33 = load i32, i32* @outflags, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @outflags, align 4
  br label %51

35:                                               ; preds = %26
  %36 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SEC_AUTHORS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @outflags, align 4
  %43 = load i32, i32* @MD_An_nosplit, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @MD_An_split, align 4
  %48 = load i32, i32* @outflags, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @outflags, align 4
  br label %50

50:                                               ; preds = %46, %41, %35
  br label %51

51:                                               ; preds = %50, %31
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %18, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
