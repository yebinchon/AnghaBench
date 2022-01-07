; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ipx.c_ipx_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ipx.c_ipx_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ipxHdr = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"IPX \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s.%04x > \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s.%04x: \00", align 1
@ipxSize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"[|ipx %d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipx_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipxHdr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.ipxHdr*
  store %struct.ipxHdr* %9, %struct.ipxHdr** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([5 x i8]* @.str to %struct.TYPE_5__*))
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %19 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %24 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @EXTRACT_32BITS(i32 %25)
  %27 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %28 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ipxaddr_string(i32 %26, i32 %29)
  %31 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %32 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %31, i32 0, i32 4
  %33 = call i32 @EXTRACT_16BITS(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  %36 = call i32 @ND_PRINT(%struct.TYPE_5__* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %39 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EXTRACT_32BITS(i32 %40)
  %42 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %43 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ipxaddr_string(i32 %41, i32 %44)
  %46 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %47 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %46, i32 0, i32 1
  %48 = call i32 @EXTRACT_16BITS(i32* %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_5__*
  %51 = call i32 @ND_PRINT(%struct.TYPE_5__* %50)
  %52 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %53 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ND_TCHECK(i32 %54)
  %56 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %57 = getelementptr inbounds %struct.ipxHdr, %struct.ipxHdr* %56, i32 0, i32 0
  %58 = call i32 @EXTRACT_16BITS(i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = load %struct.ipxHdr*, %struct.ipxHdr** %7, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @ipxSize, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ipxSize, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @ipx_decode(%struct.TYPE_5__* %59, %struct.ipxHdr* %60, i32* %64, i32 %67)
  br label %75

69:                                               ; No predecessors!
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_5__*
  %74 = call i32 @ND_PRINT(%struct.TYPE_5__* %73)
  br label %75

75:                                               ; preds = %69, %17
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ipxaddr_string(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ipx_decode(%struct.TYPE_5__*, %struct.ipxHdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
