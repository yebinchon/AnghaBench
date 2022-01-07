; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_post_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_post_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32 }
%struct.TYPE_2__ = type { i8* }

@MD_spc = common dso_local global i32 0, align 4
@MD_nl = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@code_blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*)* @md_post_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_post_raw(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  %3 = alloca i8*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %5 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_2__* @md_act(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @MD_spc, align 4
  %13 = load i32, i32* @MD_nl, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @outflags, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @outflags, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @md_rawword(i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 96
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i32, i32* @code_blocks, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @code_blocks, align 4
  br label %27

27:                                               ; preds = %24, %11
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @md_act(i32) #1

declare dso_local i32 @md_rawword(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
