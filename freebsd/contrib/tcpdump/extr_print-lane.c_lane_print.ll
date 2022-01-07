; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lane.c_lane_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lane.c_lane_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lane_controlhdr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"[|lane]\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"lec: proto %x vers %x %s\00", align 1
@lecop2str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"opcode-#%u\00", align 1
@lane_hdr_print = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lane_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lane_controlhdr*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str to i32*))
  br label %54

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.lane_controlhdr*
  store %struct.lane_controlhdr* %18, %struct.lane_controlhdr** %9, align 8
  %19 = load %struct.lane_controlhdr*, %struct.lane_controlhdr** %9, align 8
  %20 = getelementptr inbounds %struct.lane_controlhdr, %struct.lane_controlhdr* %19, i32 0, i32 3
  %21 = call i32 @EXTRACT_16BITS(i32* %20)
  %22 = icmp eq i32 %21, 65280
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.lane_controlhdr*, %struct.lane_controlhdr** %9, align 8
  %26 = getelementptr inbounds %struct.lane_controlhdr, %struct.lane_controlhdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lane_controlhdr*, %struct.lane_controlhdr** %9, align 8
  %29 = getelementptr inbounds %struct.lane_controlhdr, %struct.lane_controlhdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @lecop2str, align 4
  %32 = load %struct.lane_controlhdr*, %struct.lane_controlhdr** %9, align 8
  %33 = getelementptr inbounds %struct.lane_controlhdr, %struct.lane_controlhdr* %32, i32 0, i32 0
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  %35 = call i32 @tok2str(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  br label %54

39:                                               ; preds = %16
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @lane_hdr_print, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -2
  %53 = call i32 @ether_print(i32* %46, i32* %47, i32 %48, i32 %49, i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %39, %23, %13
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ether_print(i32*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
