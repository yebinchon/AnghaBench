; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_ext_is_reach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_ext_is_reach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NODE_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%sIS Neighbor: %s\00", align 1
@ISIS_TLV_IS_ALIAS_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c", Metric: %d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c", %ssub-TLVs present\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" (%u)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @isis_print_ext_is_reach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_ext_is_reach(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NODE_ID_LEN, align 4
  %18 = call i32 @ND_TTEST2(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %123

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @NODE_ID_LEN, align 4
  %26 = call i32 @isis_print_id(i32* %24, i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @ND_PRINT(i32* %28)
  %30 = load i32, i32* @NODE_ID_LEN, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ISIS_TLV_IS_ALIAS_ID, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %21
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ND_TTEST2(i32 %39, i32 3)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %123

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @EXTRACT_24BITS(i32* %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @ND_PRINT(i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32* %51, i32** %7, align 8
  br label %52

52:                                               ; preds = %43, %21
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ND_TTEST2(i32 %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %123

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  %61 = load i32, i32* %59, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @NODE_ID_LEN, align 4
  %63 = add nsw i32 %62, 3
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %70 = bitcast i8* %69 to i32*
  %71 = call i32 @ND_PRINT(i32* %70)
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %58
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @ND_PRINT(i32* %78)
  br label %80

80:                                               ; preds = %107, %74
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ND_TTEST2(i32 %85, i32 2)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %123

89:                                               ; preds = %83
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %7, align 8
  %92 = load i32, i32* %90, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  %95 = load i32, i32* %93, align 4
  store i32 %95, i32* %12, align 4
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @snprintf(i8* %96, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %104 = call i32 @isis_print_is_reach_subtlv(i32* %99, i32* %100, i32 %101, i32 %102, i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %123

107:                                              ; preds = %89
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 2
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 2
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %14, align 4
  br label %80

120:                                              ; preds = %80
  br label %121

121:                                              ; preds = %120, %58
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %106, %88, %57, %42, %20
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @isis_print_id(i32*, i32) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @isis_print_is_reach_subtlv(i32*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
