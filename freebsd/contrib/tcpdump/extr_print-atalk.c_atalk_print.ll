; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_atalk_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_atalk_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.atDDP = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"AT \00", align 1
@ddpSize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" [|ddp %u]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" [|ddp]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" > %s.%s: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atalk_print(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atDDP*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([4 x i8]* @.str to %struct.TYPE_7__*))
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ddpSize, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  %24 = call i32 @ND_PRINT(%struct.TYPE_7__* %23)
  br label %92

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @ddpSize, align 8
  %29 = call i32 @ND_TTEST2(i32 %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.2 to %struct.TYPE_7__*))
  br label %92

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = bitcast i32* %35 to %struct.atDDP*
  store %struct.atDDP* %36, %struct.atDDP** %7, align 8
  %37 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %38 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %37, i32 0, i32 6
  %39 = call i32 @EXTRACT_16BITS(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %44 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ataddr_string(%struct.TYPE_7__* %41, i32 %42, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %49 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ddpskt_string(%struct.TYPE_7__* %47, i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_7__*
  %54 = call i32 @ND_PRINT(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %58 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %57, i32 0, i32 5
  %59 = call i32 @EXTRACT_16BITS(i32* %58)
  %60 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %61 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ataddr_string(%struct.TYPE_7__* %56, i32 %59, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %66 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ddpskt_string(%struct.TYPE_7__* %64, i32 %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_7__*
  %71 = call i32 @ND_PRINT(%struct.TYPE_7__* %70)
  %72 = load i64, i64* @ddpSize, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 %72
  store i32* %74, i32** %5, align 8
  %75 = load i64, i64* @ddpSize, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %82 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %86 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.atDDP*, %struct.atDDP** %7, align 8
  %89 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ddp_print(%struct.TYPE_7__* %78, i32* %79, i64 %80, i32 %83, i32 %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %34, %31, %20
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @ND_TTEST2(i32, i64) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ataddr_string(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ddpskt_string(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ddp_print(%struct.TYPE_7__*, i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
