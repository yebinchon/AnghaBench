; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_queues_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_queues_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@OF_PACKET_QUEUE_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0A\09  queue_id %u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c", len %u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i32*, i64)* @of10_queues_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_queues_print(%struct.TYPE_5__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %9, align 8
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %89, %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %93

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @OF_PACKET_QUEUE_LEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %95

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK2(i32 %25, i64 4)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @EXTRACT_32BITS(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_5__*
  %32 = call i32 @ND_PRINT(%struct.TYPE_5__* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_TCHECK2(i32 %36, i64 2)
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @EXTRACT_16BITS(i32* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_5__*
  %45 = call i32 @ND_PRINT(%struct.TYPE_5__* %44)
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @OF_PACKET_QUEUE_LEN, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %23
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %23
  br label %95

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ND_TCHECK2(i32 %56, i64 2)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32* %59, i32** %7, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @OF_PACKET_QUEUE_LEN, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i32 @ND_TCHECK2(i32 %66, i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @OF_PACKET_QUEUE_LEN, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %7, align 8
  br label %89

76:                                               ; preds = %54
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @OF_PACKET_QUEUE_LEN, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i32* @of10_queue_props_print(%struct.TYPE_5__* %78, i32* %79, i32* %80, i64 %83)
  store i32* %84, i32** %7, align 8
  %85 = icmp eq i32* %77, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32*, i32** %8, align 8
  store i32* %87, i32** %5, align 8
  br label %115

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %9, align 8
  br label %15

93:                                               ; preds = %15
  %94 = load i32*, i32** %7, align 8
  store i32* %94, i32** %5, align 8
  br label %115

95:                                               ; preds = %53, %22
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = load i32, i32* @istr, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_5__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_5__* %99)
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @ND_TCHECK2(i32 %102, i64 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %5, align 8
  br label %115

108:                                              ; No predecessors!
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = load i32, i32* @tstr, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to %struct.TYPE_5__*
  %113 = call i32 @ND_PRINT(%struct.TYPE_5__* %112)
  %114 = load i32*, i32** %8, align 8
  store i32* %114, i32** %5, align 8
  br label %115

115:                                              ; preds = %108, %95, %93, %86
  %116 = load i32*, i32** %5, align 8
  ret i32* %116
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32* @of10_queue_props_print(%struct.TYPE_5__*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
