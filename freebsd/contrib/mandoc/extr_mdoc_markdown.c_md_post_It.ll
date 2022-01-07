; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_post_It.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_post_It.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, %struct.TYPE_6__*, %struct.roff_node*, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.roff_node* }

@ROFFT_BODY = common dso_local global i64 0, align 8
@code_blocks = common dso_local global i32 0, align 4
@quote_blocks = common dso_local global i32 0, align 4
@list_blocks = common dso_local global i32 0, align 4
@ROFFT_HEAD = common dso_local global i64 0, align 8
@outcount = common dso_local global i64 0, align 8
@MD_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@ESC_FON = common dso_local global i32 0, align 4
@escflags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*)* @md_post_It to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_post_It(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  %3 = alloca %struct.roff_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %6 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %7 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ROFFT_BODY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %121

12:                                               ; preds = %1
  %13 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.roff_node*, %struct.roff_node** %16, align 8
  store %struct.roff_node* %17, %struct.roff_node** %3, align 8
  %18 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %120 [
    i32 134, label %24
    i32 132, label %24
    i32 129, label %24
    i32 131, label %24
    i32 128, label %35
    i32 130, label %35
    i32 133, label %38
  ]

24:                                               ; preds = %12, %12, %12, %12
  %25 = call i32 @md_stack(i8 signext -1)
  %26 = load i32, i32* @code_blocks, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @quote_blocks, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %24
  %32 = load i32, i32* @list_blocks, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* @list_blocks, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %121

35:                                               ; preds = %12, %12
  %36 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %37 = call i32 @md_post_D1(%struct.roff_node* %36)
  br label %121

38:                                               ; preds = %12
  %39 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %40 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %121

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %47 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %46, i32 0, i32 2
  %48 = load %struct.roff_node*, %struct.roff_node** %47, align 8
  store %struct.roff_node* %48, %struct.roff_node** %2, align 8
  %49 = icmp ne %struct.roff_node* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ROFFT_HEAD, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ false, %45 ], [ %55, %50 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %45

61:                                               ; preds = %56
  %62 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %63 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %61
  %72 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %73 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @strlen(i32 %81)
  %83 = load i64, i64* @outcount, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 5
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %93

88:                                               ; preds = %71
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 5
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 3, i32 1
  br label %93

93:                                               ; preds = %88, %87
  %94 = phi i32 [ 4, %87 ], [ %92, %88 ]
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %84, %95
  br label %98

97:                                               ; preds = %61
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i64 [ %96, %93 ], [ 1, %97 ]
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %98
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %4, align 4
  %108 = icmp sgt i32 %106, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 @putchar(i8 signext 32)
  br label %105

111:                                              ; preds = %105
  %112 = load i32, i32* @MD_spc, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* @outflags, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* @outflags, align 4
  %116 = load i32, i32* @ESC_FON, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* @escflags, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* @escflags, align 4
  store i64 0, i64* @outcount, align 8
  br label %121

120:                                              ; preds = %12
  br label %121

121:                                              ; preds = %11, %120, %111, %43, %35, %34
  ret void
}

declare dso_local i32 @md_stack(i8 signext) #1

declare dso_local i32 @md_post_D1(%struct.roff_node*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
