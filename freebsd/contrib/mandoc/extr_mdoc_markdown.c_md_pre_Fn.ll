; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { %struct.roff_node*, %struct.roff_node* }

@.str = private unnamed_addr constant [3 x i8] c"**\00", align 1
@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Fn(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %5 = call i32 @md_pre_syn(%struct.roff_node* %4)
  %6 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %7 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %6, i32 0, i32 1
  %8 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  store %struct.roff_node* %8, %struct.roff_node** %3, align 8
  %9 = icmp eq %struct.roff_node* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = call i32 @md_rawword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @MD_spc, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @outflags, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @outflags, align 4
  %17 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %18 = call i32 @md_node(%struct.roff_node* %17)
  %19 = load i32, i32* @MD_spc, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @outflags, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @outflags, align 4
  %23 = call i32 @md_rawword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @MD_spc, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @outflags, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* @outflags, align 4
  %28 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %30 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %29, i32 0, i32 0
  %31 = load %struct.roff_node*, %struct.roff_node** %30, align 8
  store %struct.roff_node* %31, %struct.roff_node** %3, align 8
  %32 = icmp ne %struct.roff_node* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %11
  %34 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %35 = call i32 @md_pre_Fa(%struct.roff_node* %34)
  br label %36

36:                                               ; preds = %33, %11
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @md_pre_syn(%struct.roff_node*) #1

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i32 @md_node(%struct.roff_node*) #1

declare dso_local i32 @md_word(i8*) #1

declare dso_local i32 @md_pre_Fa(%struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
