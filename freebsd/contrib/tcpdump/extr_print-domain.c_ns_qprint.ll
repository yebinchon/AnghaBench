; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_qprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_qprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@ns_type2str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Type%d\00", align 1
@C_QU = common dso_local global i32 0, align 4
@C_IN = common dso_local global i32 0, align 4
@ns_class2str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"(Class %d)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" (QU)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" (QM)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @ns_qprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ns_qprint(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @ns_nskip(i32* %14, i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TTEST2(i32 %21, i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  store i32* null, i32** %5, align 8
  br label %90

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @EXTRACT_16BITS(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @ns_type2str, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @tok2str(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @ND_PRINT(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @EXTRACT_16BITS(i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32* %40, i32** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @C_QU, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %12, align 4
  br label %50

48:                                               ; preds = %25
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @C_IN, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ns_class2str, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @tok2str(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @C_QU, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %73 = bitcast i8* %72 to i32*
  %74 = call i32 @ND_PRINT(i32* %73)
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.5 to i32*))
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32* @ns_nprint(i32* %78, i32* %79, i32* %80)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  br label %88

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32* [ %86, %84 ], [ null, %87 ]
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %88, %24
  %91 = load i32*, i32** %5, align 8
  ret i32* %91
}

declare dso_local i32* @ns_nskip(i32*, i32*) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32* @ns_nprint(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
