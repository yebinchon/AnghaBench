; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_In.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_In.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32 }

@NODE_SYNPRETTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"**\00", align 1
@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"#include <\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_In to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_In(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %3 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %4 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NODE_SYNPRETTY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %11 = call i32 @md_pre_syn(%struct.roff_node* %10)
  %12 = call i32 @md_rawword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @MD_spc, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @outflags, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @outflags, align 4
  %17 = call i32 @md_word(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %25

18:                                               ; preds = %1
  %19 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @MD_spc, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @outflags, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @outflags, align 4
  %24 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %9
  %26 = load i32, i32* @MD_spc, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @outflags, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* @outflags, align 4
  ret i32 1
}

declare dso_local i32 @md_pre_syn(%struct.roff_node*) #1

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i32 @md_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
