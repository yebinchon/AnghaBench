; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_attr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_attr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"[|attr]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"type=#%d \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"value=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"len=%d value=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @ikev1_attr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ikev1_attr_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ND_TCHECK(i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i32 @ND_TCHECK_16BITS(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = call i32 @EXTRACT_16BITS(i32* %25)
  %27 = add nsw i32 4, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %20, %19
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = icmp ult i32* %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str to i32*))
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32* %39, i32** %4, align 8
  br label %101

40:                                               ; preds = %28
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @ND_TCHECK_16BITS(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @EXTRACT_16BITS(i32* %47)
  %49 = and i32 %48, 32767
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @ND_PRINT(i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %40
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = call i32 @rawprint(i32* %66, i32* %68, i32 2)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.4 to i32*))
  br label %100

74:                                               ; preds = %60
  br label %93

75:                                               ; preds = %40
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @ND_PRINT(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 4
  %87 = call i32 @rawprint(i32* %82, i32* %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.4 to i32*))
  br label %100

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.4 to i32*))
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32* %99, i32** %4, align 8
  br label %101

100:                                              ; preds = %89, %71
  store i32* null, i32** %4, align 8
  br label %101

101:                                              ; preds = %100, %93, %35
  %102 = load i32*, i32** %4, align 8
  ret i32* %102
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @rawprint(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
