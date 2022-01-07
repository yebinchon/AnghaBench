; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Tag[%u] \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Tag[Unused] \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Salt %u \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s (0x%02x) \00", align 1
@rfc4675_tagged = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Unknown tag\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @print_attr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attr_string(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ND_TCHECK2(i32 %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %100 [
    i32 131, label %16
    i32 132, label %53
    i32 128, label %53
    i32 130, label %53
    i32 134, label %53
    i32 133, label %53
    i32 129, label %53
    i32 135, label %81
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %135

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 31
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  br label %38

35:                                               ; preds = %24, %20
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.1 to i32*))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @EXTRACT_16BITS(i32* %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @ND_PRINT(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %7, align 4
  br label %100

53:                                               ; preds = %4, %4, %4, %4, %4, %4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 31
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %135

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i32*
  %71 = call i32 @ND_PRINT(i32* %70)
  br label %75

72:                                               ; preds = %61
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.1 to i32*))
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %53
  br label %100

81:                                               ; preds = %4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %135

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @rfc4675_tagged, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @tok2str(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  %95 = call i32 @ND_PRINT(i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %4, %85, %80, %38
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %129, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i1 [ false, %101 ], [ %108, %105 ]
  br i1 %110, label %111, label %134

111:                                              ; preds = %109
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 32
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 126
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %111
  br label %124

121:                                              ; preds = %116
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %121, %120
  %125 = phi i32 [ 46, %120 ], [ %123, %121 ]
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i32*
  %128 = call i32 @ND_PRINT(i32* %127)
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %6, align 8
  br label %101

134:                                              ; preds = %109
  br label %141

135:                                              ; preds = %84, %60, %19
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* @tstr, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i32*
  %140 = call i32 @ND_PRINT(i32* %139)
  br label %141

141:                                              ; preds = %135, %134
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
