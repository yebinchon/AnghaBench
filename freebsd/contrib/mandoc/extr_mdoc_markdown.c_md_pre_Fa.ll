; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Fa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Fa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, %struct.roff_node*, %struct.roff_node* }

@MDOC_Fa = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Fa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Fa(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  %3 = alloca i32, align 4
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %5 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MDOC_Fa, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 2
  %15 = load %struct.roff_node*, %struct.roff_node** %14, align 8
  store %struct.roff_node* %15, %struct.roff_node** %2, align 8
  br label %16

16:                                               ; preds = %12, %1
  br label %17

17:                                               ; preds = %39, %16
  %18 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %19 = icmp ne %struct.roff_node* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @MD_spc, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @outflags, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @outflags, align 4
  %26 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %27 = call i32 @md_node(%struct.roff_node* %26)
  %28 = load i32, i32* @MD_spc, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @outflags, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @outflags, align 4
  %32 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 1
  %35 = load %struct.roff_node*, %struct.roff_node** %34, align 8
  store %struct.roff_node* %35, %struct.roff_node** %2, align 8
  %36 = icmp ne %struct.roff_node* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %20
  br label %17

40:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i32 @md_node(%struct.roff_node*) #1

declare dso_local i32 @md_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
