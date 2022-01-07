; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_It.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_pre_It.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.roff_node* }

@MD_sp = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MD_nl = common dso_local global i32 0, align 4
@MD_br = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"*\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-\09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d.\09\00", align 1
@ESC_FON = common dso_local global i32 0, align 4
@escflags = common dso_local global i32 0, align 4
@MD_spc = common dso_local global i32 0, align 4
@MD_nonl = common dso_local global i32 0, align 4
@outcount = common dso_local global i32 0, align 4
@code_blocks = common dso_local global i32 0, align 4
@quote_blocks = common dso_local global i32 0, align 4
@list_blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @md_pre_It to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_pre_It(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %5 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %6 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %133 [
    i32 130, label %8
    i32 128, label %9
    i32 129, label %112
  ]

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %134

9:                                                ; preds = %1
  %10 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %11 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  store %struct.roff_node* %14, %struct.roff_node** %4, align 8
  %15 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %9
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 140
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @MD_sp, align 4
  %32 = load i32, i32* @outflags, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @outflags, align 4
  br label %34

34:                                               ; preds = %30, %22, %9
  %35 = load i32, i32* @MD_nl, align 4
  %36 = load i32, i32* @outflags, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @outflags, align 4
  %38 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %93 [
    i32 133, label %44
    i32 134, label %48
    i32 138, label %48
    i32 132, label %48
    i32 131, label %52
    i32 136, label %52
    i32 141, label %56
    i32 139, label %58
    i32 135, label %58
    i32 137, label %60
    i32 140, label %89
  ]

44:                                               ; preds = %34
  %45 = load i32, i32* @MD_br, align 4
  %46 = load i32, i32* @outflags, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @outflags, align 4
  store i32 0, i32* %2, align 4
  br label %134

48:                                               ; preds = %34, %34, %34
  %49 = load i32, i32* @MD_br, align 4
  %50 = load i32, i32* @outflags, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @outflags, align 4
  store i32 1, i32* %2, align 4
  br label %134

52:                                               ; preds = %34, %34
  %53 = load i32, i32* @MD_sp, align 4
  %54 = load i32, i32* @outflags, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* @outflags, align 4
  store i32 1, i32* %2, align 4
  br label %134

56:                                               ; preds = %34
  %57 = call i32 @md_rawword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %94

58:                                               ; preds = %34, %34
  %59 = call i32 @md_rawword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %94

60:                                               ; preds = %34
  %61 = call i32 (...) @md_preword()
  %62 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %63 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 99
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %71 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %60
  %78 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %79 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ESC_FON, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* @escflags, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* @escflags, align 4
  br label %94

89:                                               ; preds = %34
  %90 = load i32, i32* @MD_br, align 4
  %91 = load i32, i32* @outflags, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* @outflags, align 4
  store i32 0, i32* %2, align 4
  br label %134

93:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %134

94:                                               ; preds = %77, %58, %56
  %95 = load i32, i32* @MD_spc, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* @outflags, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* @outflags, align 4
  %99 = load i32, i32* @MD_nonl, align 4
  %100 = load i32, i32* @outflags, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* @outflags, align 4
  store i32 0, i32* @outcount, align 4
  %102 = call i32 @md_stack(i8 signext 9)
  %103 = load i32, i32* @code_blocks, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @quote_blocks, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105, %94
  %109 = load i32, i32* @list_blocks, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @list_blocks, align 4
  br label %111

111:                                              ; preds = %108, %105
  store i32 0, i32* %2, align 4
  br label %134

112:                                              ; preds = %1
  %113 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %114 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.roff_node*, %struct.roff_node** %116, align 8
  store %struct.roff_node* %117, %struct.roff_node** %4, align 8
  %118 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %119 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %131 [
    i32 132, label %124
    i32 131, label %128
    i32 136, label %128
  ]

124:                                              ; preds = %112
  %125 = load i32, i32* @MD_br, align 4
  %126 = load i32, i32* @outflags, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* @outflags, align 4
  br label %132

128:                                              ; preds = %112, %112
  %129 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %130 = call i32 @md_pre_D1(%struct.roff_node* %129)
  br label %132

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %131, %128, %124
  store i32 1, i32* %2, align 4
  br label %134

133:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %132, %111, %93, %89, %52, %48, %44, %8
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @md_rawword(i8*) #1

declare dso_local i32 @md_preword(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @md_stack(i8 signext) #1

declare dso_local i32 @md_pre_D1(%struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
