; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" [|]\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0A\09Mask %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A\09  [Truncated Report]\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\0A\09  %s metric %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @print_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_report(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %16

16:                                               ; preds = %147, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %148

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str to i32*))
  store i32 0, i32* %5, align 4
  br label %150

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ND_TCHECK2(i32 %28, i32 3)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 -16777216, %33
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %10, align 4
  store i32 1, i32* %15, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %25
  store i32 2, i32* %15, align 4
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 3, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 4, i32* %15, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @htonl(i32 %63)
  %65 = call i32 @intoa(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ND_PRINT(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32* %70, i32** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 3
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %143, %61
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32*, i32** %8, align 8
  %80 = icmp ugt i32* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str to i32*))
  store i32 0, i32* %5, align 4
  br label %150

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([23 x i8]* @.str.2 to i32*))
  store i32 0, i32* %5, align 4
  br label %150

92:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK(i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 %101, 8
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %7, align 8
  %105 = load i32, i32* %103, align 4
  %106 = or i32 %102, %105
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %93

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %117, %110
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %115, 8
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %111

120:                                              ; preds = %111
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ND_TCHECK(i32 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %7, align 8
  %126 = load i32, i32* %124, align 4
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, 128
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %12, align 4
  %130 = and i32 %129, 127
  store i32 %130, i32* %12, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @htonl(i32 %132)
  %134 = call i32 @intoa(i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i32*
  %138 = call i32 @ND_PRINT(i32* %137)
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %120
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  br i1 %146, label %73, label %147

147:                                              ; preds = %143
  br label %16

148:                                              ; preds = %16
  store i32 0, i32* %5, align 4
  br label %150

149:                                              ; No predecessors!
  store i32 -1, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %148, %89, %81, %22
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @intoa(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ND_TCHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
