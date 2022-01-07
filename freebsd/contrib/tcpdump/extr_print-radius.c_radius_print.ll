; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_radius_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_radius_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.radius_hdr = type { i32*, i32, i32, i32 }

@MIN_RADIUS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RADIUS, %s (%u), id: 0x%02x length: %u\00", align 1
@radius_command_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown Command\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"RADIUS, length: %u\0A\09%s (%u), id: 0x%02x, Authenticator: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_print(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.radius_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @MIN_RADIUS_LEN, align 8
  %13 = call i32 @ND_TCHECK2(i32 %11, i64 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.radius_hdr*
  store %struct.radius_hdr* %15, %struct.radius_hdr** %7, align 8
  %16 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %16, i32 0, i32 3
  %18 = call i64 @EXTRACT_16BITS(i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @MIN_RADIUS_LEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load i32, i32* @tstr, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_5__*
  %27 = call i32 @ND_PRINT(%struct.TYPE_5__* %26)
  br label %110

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load i32, i32* @radius_command_values, align 4
  %42 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tok2str(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_5__*
  %54 = call i32 @ND_PRINT(%struct.TYPE_5__* %53)
  br label %110

55:                                               ; preds = %34
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @radius_command_values, align 4
  %59 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tok2str(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_5__*
  %71 = call i32 @ND_PRINT(%struct.TYPE_5__* %70)
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %86, %55
  %73 = load i64, i64* %9, align 8
  %74 = icmp slt i64 %73, 16
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %78 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_5__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %75
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %72

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @MIN_RADIUS_LEN, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i64, i64* @MIN_RADIUS_LEN, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @MIN_RADIUS_LEN, align 8
  %101 = sub nsw i64 %99, %100
  %102 = call i32 @radius_attrs_print(%struct.TYPE_5__* %95, i32* %98, i64 %101)
  br label %103

103:                                              ; preds = %94, %90
  br label %110

104:                                              ; No predecessors!
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = load i32, i32* @tstr, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_5__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_5__* %108)
  br label %110

110:                                              ; preds = %104, %103, %39, %22
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @radius_attrs_print(%struct.TYPE_5__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
