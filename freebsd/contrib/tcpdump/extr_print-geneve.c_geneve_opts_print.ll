; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-geneve.c_geneve_opts_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-geneve.c_geneve_opts_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@OPT_LEN_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"class %s (0x%x) type 0x%x%s len %u\00", align 1
@OPT_TYPE_CRITICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" [bad length]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" data\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i64)* @geneve_opts_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geneve_opts_print(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %13

13:                                               ; preds = %85, %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  %20 = call i32 @ND_PRINT(%struct.TYPE_4__* %19)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @EXTRACT_16BITS(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OPT_LEN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 4, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @format_opt_class(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @OPT_TYPE_CRITICAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_4__*
  %47 = call i32 @ND_PRINT(%struct.TYPE_4__* %46)
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %16
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([14 x i8]* @.str.5 to %struct.TYPE_4__*))
  br label %94

55:                                               ; preds = %16
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %11, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([6 x i8]* @.str.6 to %struct.TYPE_4__*))
  store i32 4, i32* %12, align 4
  br label %68

68:                                               ; preds = %81, %63
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @EXTRACT_32BITS(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_4__*
  %78 = call i32 @ND_PRINT(%struct.TYPE_4__* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* %12, align 4
  br label %68

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %60, %55
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %6, align 8
  %93 = sub nsw i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %13

94:                                               ; preds = %52, %13
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @format_opt_class(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
