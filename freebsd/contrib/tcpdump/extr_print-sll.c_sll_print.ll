; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sll.c_sll_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sll.c_sll_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sll_header = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%3s \00", align 1
@sll_pkttype_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@ETHERMTU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"802.3\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"802.2\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ethertype Unknown (0x%04x)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"ethertype %s (0x%04x)\00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c", length %u: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.sll_header*, i32)* @sll_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sll_print(%struct.TYPE_5__* %0, %struct.sll_header* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.sll_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.sll_header* %1, %struct.sll_header** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load i32, i32* @sll_pkttype_values, align 4
  %10 = load %struct.sll_header*, %struct.sll_header** %5, align 8
  %11 = getelementptr inbounds %struct.sll_header, %struct.sll_header* %10, i32 0, i32 3
  %12 = call i32 @EXTRACT_16BITS(i32* %11)
  %13 = call i32 @tok2str(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  %16 = call i32 @ND_PRINT(%struct.TYPE_5__* %15)
  %17 = load %struct.sll_header*, %struct.sll_header** %5, align 8
  %18 = getelementptr inbounds %struct.sll_header, %struct.sll_header* %17, i32 0, i32 2
  %19 = call i32 @EXTRACT_16BITS(i32* %18)
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load %struct.sll_header*, %struct.sll_header** %5, align 8
  %25 = getelementptr inbounds %struct.sll_header, %struct.sll_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @etheraddr_string(%struct.TYPE_5__* %23, i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  %30 = call i32 @ND_PRINT(%struct.TYPE_5__* %29)
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %31
  %37 = load %struct.sll_header*, %struct.sll_header** %5, align 8
  %38 = getelementptr inbounds %struct.sll_header, %struct.sll_header* %37, i32 0, i32 0
  %39 = call i32 @EXTRACT_16BITS(i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ETHERMTU, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %51 [
    i32 128, label %45
    i32 129, label %48
  ]

45:                                               ; preds = %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([6 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([6 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_5__*
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* %55)
  br label %57

57:                                               ; preds = %51, %48, %45
  br label %67

58:                                               ; preds = %36
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = load i32, i32* @ethertype_values, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @tok2str(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_5__*
  %66 = call i32 @ND_PRINT(%struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %58, %57
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_5__*
  %72 = call i32 @ND_PRINT(%struct.TYPE_5__* %71)
  br label %73

73:                                               ; preds = %67, %31
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
