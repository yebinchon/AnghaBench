; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_call_errors_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_call_errors_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AVP too short\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CRCErr=%u \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"FrameErr=%u \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"HardOver=%u \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"BufOver=%u \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Timeout=%u \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AlignErr=%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @l2tp_call_errors_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_call_errors_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

26:                                               ; preds = %16
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @EXTRACT_16BITS(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @ND_PRINT(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %26
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

52:                                               ; preds = %26
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @EXTRACT_16BITS(i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %6, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @EXTRACT_16BITS(i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 2
  store i32 %64, i32* %6, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @ND_PRINT(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %52
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

78:                                               ; preds = %52
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @EXTRACT_16BITS(i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 2
  store i32 %84, i32* %6, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @EXTRACT_16BITS(i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %6, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i32*
  %98 = call i32 @ND_PRINT(i32* %97)
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %78
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

104:                                              ; preds = %78
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @EXTRACT_16BITS(i32* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 2
  store i32 %110, i32* %6, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @EXTRACT_16BITS(i32* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %7, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 2
  store i32 %116, i32* %6, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 %118, 16
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32*
  %124 = call i32 @ND_PRINT(i32* %123)
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %130

127:                                              ; preds = %104
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

130:                                              ; preds = %104
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @EXTRACT_16BITS(i32* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %7, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sub nsw i32 %135, 2
  store i32 %136, i32* %6, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @EXTRACT_16BITS(i32* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %7, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sub nsw i32 %141, 2
  store i32 %142, i32* %6, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = shl i32 %144, 16
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i32*
  %150 = call i32 @ND_PRINT(i32* %149)
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 4
  br i1 %152, label %153, label %156

153:                                              ; preds = %130
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %173

156:                                              ; preds = %130
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @EXTRACT_16BITS(i32* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %7, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @EXTRACT_16BITS(i32* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %7, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* %8, align 4
  %167 = shl i32 %166, 16
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i32*
  %172 = call i32 @ND_PRINT(i32* %171)
  br label %173

173:                                              ; preds = %156, %153, %127, %101, %75, %49, %23, %13
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
