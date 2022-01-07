; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Lk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_Lk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, %struct.roff_node*, i32, %struct.roff_node*, %struct.roff_node*, %struct.roff_node* }

@NODE_DELIMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"](\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_Lk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_Lk(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %7 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %8 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %7, i32 0, i32 5
  %9 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  store %struct.roff_node* %9, %struct.roff_node** %4, align 8
  %10 = icmp eq %struct.roff_node* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

12:                                               ; preds = %1
  %13 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 4
  %15 = load %struct.roff_node*, %struct.roff_node** %14, align 8
  store %struct.roff_node* %15, %struct.roff_node** %6, align 8
  br label %16

16:                                               ; preds = %29, %12
  %17 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %18 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %19 = icmp ne %struct.roff_node* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NODE_DELIMC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 3
  %32 = load %struct.roff_node*, %struct.roff_node** %31, align 8
  store %struct.roff_node* %32, %struct.roff_node** %6, align 8
  br label %16

33:                                               ; preds = %27
  %34 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 1
  %36 = load %struct.roff_node*, %struct.roff_node** %35, align 8
  store %struct.roff_node* %36, %struct.roff_node** %6, align 8
  %37 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %38 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %37, i32 0, i32 1
  %39 = load %struct.roff_node*, %struct.roff_node** %38, align 8
  store %struct.roff_node* %39, %struct.roff_node** %5, align 8
  %40 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %41 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %42 = icmp eq %struct.roff_node* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  store %struct.roff_node* %44, %struct.roff_node** %5, align 8
  br label %45

45:                                               ; preds = %43, %33
  %46 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @MD_spc, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @outflags, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @outflags, align 4
  br label %51

51:                                               ; preds = %59, %45
  %52 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %53 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @md_word(i32 %54)
  %56 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %57 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %56, i32 0, i32 1
  %58 = load %struct.roff_node*, %struct.roff_node** %57, align 8
  store %struct.roff_node* %58, %struct.roff_node** %5, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %61 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %62 = icmp ne %struct.roff_node* %60, %61
  br i1 %62, label %51, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @MD_spc, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @outflags, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* @outflags, align 4
  %68 = call i32 @md_rawword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %70 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @md_uri(i32 %71)
  %73 = load i32, i32* @MD_spc, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* @outflags, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* @outflags, align 4
  %77 = call i32 @md_rawword(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %81, %63
  %79 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %80 = icmp ne %struct.roff_node* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %83 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @md_word(i32 %84)
  %86 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %87 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %86, i32 0, i32 1
  %88 = load %struct.roff_node*, %struct.roff_node** %87, align 8
  store %struct.roff_node* %88, %struct.roff_node** %6, align 8
  br label %78

89:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %11
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i32 @md_word(i32) #1

declare dso_local i32 @md_uri(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
