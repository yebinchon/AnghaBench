; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Xr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Xr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { %struct.roff_node*, %struct.roff_node* }

@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Xr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Xr(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %5 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %4, i32 0, i32 1
  %6 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  store %struct.roff_node* %6, %struct.roff_node** %3, align 8
  %7 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %8 = icmp eq %struct.roff_node* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %12 = call i32 @md_node(%struct.roff_node* %11)
  %13 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 0
  %15 = load %struct.roff_node*, %struct.roff_node** %14, align 8
  store %struct.roff_node* %15, %struct.roff_node** %3, align 8
  %16 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %17 = icmp eq %struct.roff_node* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load i32, i32* @MD_spc, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @outflags, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @outflags, align 4
  %24 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %26 = call i32 @md_node(%struct.roff_node* %25)
  %27 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %18, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @md_node(%struct.roff_node*) #1

declare dso_local i32 @md_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
