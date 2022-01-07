; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_markdown_mdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_markdown_mdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MD_Sm = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MD_spc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@MD_sp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @markdown_mdoc(i8* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %5 = load i32, i32* @MD_Sm, align 4
  store i32 %5, i32* @outflags, align 4
  %6 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %7 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @md_word(i8* %8)
  %10 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %11 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @MD_spc, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @outflags, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @outflags, align 4
  %19 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %21 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @md_word(i8* %22)
  %24 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %14, %2
  %26 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %28 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @md_word(i8* %29)
  %31 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %32 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %38 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @md_word(i8* %39)
  %41 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %25
  %43 = load i32, i32* @MD_sp, align 4
  %44 = load i32, i32* @outflags, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @outflags, align 4
  %46 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %47 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @md_nodelist(i32 %50)
  %52 = load i32, i32* @MD_sp, align 4
  %53 = load i32, i32* @outflags, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @outflags, align 4
  %55 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %56 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @md_word(i8* %57)
  %59 = call i32 @md_word(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %61 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @md_word(i8* %62)
  %64 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @md_word(i8*) #1

declare dso_local i32 @md_nodelist(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
