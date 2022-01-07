; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_drawop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_drawop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.pkt_dop = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c" wb-dop:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %s:%u<%u:%u>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.pkt_dop*, i32)* @wb_drawop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_drawop(%struct.TYPE_8__* %0, %struct.pkt_dop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.pkt_dop*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.pkt_dop* %1, %struct.pkt_dop** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([9 x i8]* @.str to %struct.TYPE_8__*))
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %15 = bitcast %struct.pkt_dop* %14 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @ND_TTEST(i64 %17, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %62

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 16
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %31 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = call i32 @ipaddr_string(%struct.TYPE_8__* %29, i32* %32)
  %34 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %35 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @EXTRACT_32BITS(i32* %36)
  %38 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %39 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %38, i32 0, i32 1
  %40 = call i32 @EXTRACT_32BITS(i32* %39)
  %41 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %42 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %41, i32 0, i32 0
  %43 = call i32 @EXTRACT_32BITS(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_8__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %23
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %54 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %55 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %54, i32 0, i32 1
  %56 = call i32 @EXTRACT_32BITS(i32* %55)
  %57 = load %struct.pkt_dop*, %struct.pkt_dop** %6, align 8
  %58 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %57, i32 0, i32 0
  %59 = call i32 @EXTRACT_32BITS(i32* %58)
  %60 = call i32 @wb_dops(%struct.TYPE_8__* %52, %struct.pkt_dop* %53, i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %51, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @ND_TTEST(i64, i64) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @wb_dops(%struct.TYPE_8__*, %struct.pkt_dop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
