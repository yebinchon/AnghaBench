; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_choose_scroll_tab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_choose_scroll_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scroll_tab_list = type { i32*, %struct.scroll_tab_list* }
%struct.Strbuf = type { i64 }

@xfree = common dso_local global i32 0, align 4
@scroll_tab = common dso_local global %struct.scroll_tab_list* null, align 8
@fcompare = common dso_local global i32 0, align 4
@curchoice = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Strbuf*, i32)* @choose_scroll_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_scroll_tab(%struct.Strbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.Strbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scroll_tab_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32** @xmalloc(i32 %12)
  store i32** %13, i32*** %7, align 8
  %14 = load i32**, i32*** %7, align 8
  %15 = load i32, i32* @xfree, align 4
  %16 = call i32 @cleanup_push(i32** %14, i32 %15)
  %17 = load %struct.scroll_tab_list*, %struct.scroll_tab_list** @scroll_tab, align 8
  store %struct.scroll_tab_list* %17, %struct.scroll_tab_list** %5, align 8
  br label %18

18:                                               ; preds = %35, %2
  %19 = load %struct.scroll_tab_list*, %struct.scroll_tab_list** %5, align 8
  %20 = icmp ne %struct.scroll_tab_list* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %39

26:                                               ; preds = %24
  %27 = load %struct.scroll_tab_list*, %struct.scroll_tab_list** %5, align 8
  %28 = getelementptr inbounds %struct.scroll_tab_list, %struct.scroll_tab_list* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  store i32* %29, i32** %34, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load %struct.scroll_tab_list*, %struct.scroll_tab_list** %5, align 8
  %37 = getelementptr inbounds %struct.scroll_tab_list, %struct.scroll_tab_list* %36, i32 0, i32 1
  %38 = load %struct.scroll_tab_list*, %struct.scroll_tab_list** %37, align 8
  store %struct.scroll_tab_list* %38, %struct.scroll_tab_list** %5, align 8
  br label %18

39:                                               ; preds = %24
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @fcompare, align 4
  %43 = call i32 @qsort(i32** %40, i32 %41, i32 8, i32 %42)
  %44 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %45 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = load i64, i64* @curchoice, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @Strbuf_append(%struct.Strbuf* %46, i32* %50)
  %52 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %53 = call i32 @Strbuf_terminate(%struct.Strbuf* %52)
  %54 = load i32**, i32*** %7, align 8
  %55 = call i32 @cleanup_until(i32** %54)
  ret void
}

declare dso_local i32** @xmalloc(i32) #1

declare dso_local i32 @cleanup_push(i32**, i32) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i32*) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

declare dso_local i32 @cleanup_until(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
