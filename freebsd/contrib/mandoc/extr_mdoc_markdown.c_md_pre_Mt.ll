; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Mt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { %struct.roff_node*, i32, %struct.roff_node* }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"](mailto:\00", align 1
@outcount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Mt(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %4 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @MD_spc, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* @outflags, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* @outflags, align 4
  %9 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 2
  %11 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  store %struct.roff_node* %11, %struct.roff_node** %3, align 8
  br label %12

12:                                               ; preds = %20, %1
  %13 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %14 = icmp ne %struct.roff_node* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %17 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @md_word(i32 %18)
  br label %20

20:                                               ; preds = %15
  %21 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 0
  %23 = load %struct.roff_node*, %struct.roff_node** %22, align 8
  store %struct.roff_node* %23, %struct.roff_node** %3, align 8
  br label %12

24:                                               ; preds = %12
  %25 = load i32, i32* @MD_spc, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @outflags, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @outflags, align 4
  %29 = call i32 @md_rawword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 2
  %32 = load %struct.roff_node*, %struct.roff_node** %31, align 8
  store %struct.roff_node* %32, %struct.roff_node** %3, align 8
  br label %33

33:                                               ; preds = %50, %24
  %34 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %35 = icmp ne %struct.roff_node* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %38 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @md_uri(i32 %39)
  %41 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %42 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %41, i32 0, i32 0
  %43 = load %struct.roff_node*, %struct.roff_node** %42, align 8
  %44 = icmp ne %struct.roff_node* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = call i32 @putchar(i8 signext 32)
  %47 = load i32, i32* @outcount, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @outcount, align 4
  br label %49

49:                                               ; preds = %45, %36
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 0
  %53 = load %struct.roff_node*, %struct.roff_node** %52, align 8
  store %struct.roff_node* %53, %struct.roff_node** %3, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load i32, i32* @MD_spc, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @outflags, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @outflags, align 4
  %59 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i32 @md_word(i32) #1

declare dso_local i32 @md_uri(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
