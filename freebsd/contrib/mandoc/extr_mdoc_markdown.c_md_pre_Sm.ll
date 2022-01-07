; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MD_Sm = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@MD_spc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Sm(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %3 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %4 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @MD_Sm, align 4
  %9 = load i32, i32* @outflags, align 4
  %10 = xor i32 %9, %8
  store i32 %10, i32* @outflags, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %13 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @MD_Sm, align 4
  %21 = load i32, i32* @outflags, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @outflags, align 4
  br label %28

23:                                               ; preds = %11
  %24 = load i32, i32* @MD_Sm, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @outflags, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* @outflags, align 4
  br label %28

28:                                               ; preds = %23, %19
  br label %29

29:                                               ; preds = %28, %7
  %30 = load i32, i32* @outflags, align 4
  %31 = load i32, i32* @MD_Sm, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @MD_spc, align 4
  %36 = load i32, i32* @outflags, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @outflags, align 4
  br label %38

38:                                               ; preds = %34, %29
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
