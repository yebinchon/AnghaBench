; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_find_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_find_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.roff_node* }
%struct.roff_node = type { i32, i64, i64, %struct.roff_node* }
%struct.TYPE_2__ = type { i32 }

@NODE_VALID = common dso_local global i32 0, align 4
@NODE_ENDED = common dso_local global i32 0, align 4
@ROFFT_BLOCK = common dso_local global i64 0, align 8
@MDOC_EXPLICIT = common dso_local global i32 0, align 4
@ROFFT_HEAD = common dso_local global i64 0, align 8
@MANDOCERR_BLK_NEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s breaks %s\00", align 1
@roff_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i32, i32, %struct.roff_node*)* @find_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_pending(%struct.roff_man* %0, i32 %1, i32 %2, i32 %3, %struct.roff_node* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.roff_man*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.roff_node*, align 8
  %12 = alloca %struct.roff_node*, align 8
  %13 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.roff_node* %4, %struct.roff_node** %11, align 8
  %14 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NODE_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %113

21:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %22 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %23 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %22, i32 0, i32 0
  %24 = load %struct.roff_node*, %struct.roff_node** %23, align 8
  store %struct.roff_node* %24, %struct.roff_node** %12, align 8
  br label %25

25:                                               ; preds = %107, %21
  %26 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %27 = icmp ne %struct.roff_node* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %30 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %31 = icmp ne %struct.roff_node* %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %111

34:                                               ; preds = %32
  %35 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %36 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NODE_ENDED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %107

42:                                               ; preds = %34
  %43 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %44 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ROFFT_BLOCK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %42
  %49 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %50 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.TYPE_2__* @mdoc_macro(i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MDOC_EXPLICIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  %59 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %60 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %59, i32 0, i32 0
  %61 = load %struct.roff_node*, %struct.roff_node** %60, align 8
  %62 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %63 = call i32 @break_intermediate(%struct.roff_node* %61, %struct.roff_node* %62)
  %64 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %65 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ROFFT_HEAD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @NODE_ENDED, align 4
  %71 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %72 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %105

75:                                               ; preds = %58
  %76 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %77 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NODE_ENDED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @MANDOCERR_BLK_NEST, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** @roff_name, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @roff_name, align 8
  %92 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %93 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mandoc_msg(i32 %83, i32 %84, i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %96)
  %98 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %103 = call i32 @mdoc_endbody_alloc(%struct.roff_man* %98, i32 %99, i32 %100, i32 %101, %struct.roff_node* %102)
  br label %104

104:                                              ; preds = %82, %75
  br label %105

105:                                              ; preds = %104, %69
  br label %106

106:                                              ; preds = %105, %48, %42
  br label %107

107:                                              ; preds = %106, %41
  %108 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %109 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %108, i32 0, i32 3
  %110 = load %struct.roff_node*, %struct.roff_node** %109, align 8
  store %struct.roff_node* %110, %struct.roff_node** %12, align 8
  br label %25

111:                                              ; preds = %32
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %20
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_2__* @mdoc_macro(i64) #1

declare dso_local i32 @break_intermediate(%struct.roff_node*, %struct.roff_node*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @mdoc_endbody_alloc(%struct.roff_man*, i32, i32, i32, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
