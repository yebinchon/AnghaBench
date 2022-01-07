; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Sh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i32, i32 }

@SEC_AUTHORS = common dso_local global i32 0, align 4
@MD_An_split = common dso_local global i32 0, align 4
@MD_An_nosplit = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MD_sp = common dso_local global i32 0, align 4
@MDOC_Sh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Sh(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %3 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %4 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %36 [
    i32 130, label %6
    i32 128, label %20
    i32 129, label %32
  ]

6:                                                ; preds = %1
  %7 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %8 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SEC_AUTHORS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i32, i32* @MD_An_split, align 4
  %14 = load i32, i32* @MD_An_nosplit, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @outflags, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @outflags, align 4
  br label %19

19:                                               ; preds = %12, %6
  br label %37

20:                                               ; preds = %1
  %21 = load i32, i32* @MD_sp, align 4
  %22 = load i32, i32* @outflags, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @outflags, align 4
  %24 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %25 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MDOC_Sh, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %31 = call i32 @md_rawword(i8* %30)
  br label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @MD_sp, align 4
  %34 = load i32, i32* @outflags, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @outflags, align 4
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %32, %20, %19
  ret i32 1
}

declare dso_local i32 @md_rawword(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
