; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" (%s): \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Spectrum Management Act#%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"QoS Act#%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DLS Act#%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"BA \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"HT \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"MeshAction \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"MultiohopAction \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"SelfprotectAction \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Vendor Act#%d\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Reserved(%d) Act#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32)* @handle_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_action(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TTEST2(i32 %11, i32 2)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %118

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %118

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str to %struct.TYPE_5__*))
  br label %35

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @etheraddr_string(%struct.TYPE_5__* %29, i32* %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_5__*
  %34 = call i32 @ND_PRINT(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %106 [
    i32 0, label %39
    i32 1, label %47
    i32 2, label %55
    i32 3, label %63
    i32 7, label %70
    i32 13, label %77
    i32 14, label %84
    i32 15, label %91
    i32 127, label %98
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_5__* %45)
  br label %117

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_5__*
  %54 = call i32 @ND_PRINT(%struct.TYPE_5__* %53)
  br label %117

55:                                               ; preds = %35
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_5__*
  %62 = call i32 @ND_PRINT(%struct.TYPE_5__* %61)
  br label %117

63:                                               ; preds = %35
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([4 x i8]* @.str.5 to %struct.TYPE_5__*))
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PRINT_BA_ACTION(i32 %68)
  br label %117

70:                                               ; preds = %35
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([4 x i8]* @.str.6 to %struct.TYPE_5__*))
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PRINT_HT_ACTION(i32 %75)
  br label %117

77:                                               ; preds = %35
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str.7 to %struct.TYPE_5__*))
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PRINT_MESH_ACTION(i32 %82)
  br label %117

84:                                               ; preds = %35
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([17 x i8]* @.str.8 to %struct.TYPE_5__*))
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PRINT_MULTIHOP_ACTION(i32 %89)
  br label %117

91:                                               ; preds = %35
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([19 x i8]* @.str.9 to %struct.TYPE_5__*))
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PRINT_SELFPROT_ACTION(i32 %96)
  br label %117

98:                                               ; preds = %35
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_5__*
  %105 = call i32 @ND_PRINT(%struct.TYPE_5__* %104)
  br label %117

106:                                              ; preds = %35
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_5__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_5__* %115)
  br label %117

117:                                              ; preds = %106, %98, %91, %84, %77, %70, %63, %55, %47, %39
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %18, %14
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @PRINT_BA_ACTION(i32) #1

declare dso_local i32 @PRINT_HT_ACTION(i32) #1

declare dso_local i32 @PRINT_MESH_ACTION(i32) #1

declare dso_local i32 @PRINT_MULTIHOP_ACTION(i32) #1

declare dso_local i32 @PRINT_SELFPROT_ACTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
