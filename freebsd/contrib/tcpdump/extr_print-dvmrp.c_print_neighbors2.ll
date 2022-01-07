; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_neighbors2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_neighbors2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c" (v %d.%d):\00", align 1
@target_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" [%s -> \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s (%d/%d\00", align 1
@DVMRP_NF_TUNNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"/tunnel\00", align 1
@DVMRP_NF_SRCRT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"/srcrt\00", align 1
@DVMRP_NF_QUERIER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"/querier\00", align 1
@DVMRP_NF_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"/disabled\00", align 1
@DVMRP_NF_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"/down\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c")]\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" [|]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @print_neighbors2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_neighbors2(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @target_level, align 4
  %17 = and i32 %16, 255
  %18 = load i32, i32* @target_level, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @ND_PRINT(i32* %22)
  br label %24

24:                                               ; preds = %138, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ult i32* %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %139

33:                                               ; preds = %31
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_TCHECK2(i32 %36, i32 8)
  %38 = load i32*, i32** %7, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %44, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* %47, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 8
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %125, %33
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %14, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ule i32* %64, %65
  br label %67

67:                                               ; preds = %62, %59, %55
  %68 = phi i1 [ false, %59 ], [ false, %55 ], [ %66, %62 ]
  br i1 %68, label %69, label %132

69:                                               ; preds = %67
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @ipaddr_string(i32* %71, i32* %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ipaddr_string(i32* %78, i32* %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @ND_PRINT(i32* %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @DVMRP_NF_TUNNEL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %69
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.3 to i32*))
  br label %93

93:                                               ; preds = %90, %69
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @DVMRP_NF_SRCRT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @DVMRP_NF_QUERIER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.5 to i32*))
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @DVMRP_NF_DISABLED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.6 to i32*))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @DVMRP_NF_DOWN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.7 to i32*))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.8 to i32*))
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32* %129, i32** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, 4
  store i32 %131, i32* %9, align 4
  br label %55

132:                                              ; preds = %67
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.9 to i32*))
  store i32 0, i32* %5, align 4
  br label %141

138:                                              ; preds = %132
  br label %24

139:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  br label %141

140:                                              ; No predecessors!
  store i32 -1, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %139, %135
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
