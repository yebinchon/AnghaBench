; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_sliplink_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_sliplink_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ip = type { i64 }
%struct.tcphdr = type { i32 }

@SLX_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"I \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"O \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid direction %d \00", align 1
@SLX_CHDR = common dso_local global i32 0, align 4
@CHDR_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x.\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%02x: \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ip %d: \00", align 1
@SLIP_HDRLEN = common dso_local global i64 0, align 8
@lastconn = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"utcp %d: \00", align 1
@lastlen = common dso_local global i64** null, align 8
@TYPE_COMPRESSED_TCP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"slip-%d!: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, %struct.ip*, i64)* @sliplink_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sliplink_print(%struct.TYPE_5__* %0, i32* %1, %struct.ip* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ip* %2, %struct.ip** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* @SLX_DIR, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %23 [
    i32 131, label %17
    i32 130, label %20
  ]

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str to %struct.TYPE_5__*))
  br label %29

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.1 to %struct.TYPE_5__*))
  br label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_5__*
  %28 = call i32 @ND_PRINT(%struct.TYPE_5__* %27)
  store i32 -1, i32* %9, align 4
  br label %29

29:                                               ; preds = %23, %20, %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load i32, i32* @SLX_CHDR, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %53, %34
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @SLX_CHDR, align 4
  %39 = load i32, i32* @CHDR_LEN, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_5__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @SLX_CHDR, align 4
  %60 = load i32, i32* @CHDR_LEN, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.TYPE_5__*
  %68 = call i32 @ND_PRINT(%struct.TYPE_5__* %67)
  br label %156

69:                                               ; preds = %29
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @SLX_CHDR, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 240
  switch i32 %75, label %120 [
    i32 129, label %76
    i32 128, label %83
  ]

76:                                               ; preds = %69
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @SLIP_HDRLEN, align 8
  %80 = add i64 %78, %79
  %81 = inttoptr i64 %80 to %struct.TYPE_5__*
  %82 = call i32 @ND_PRINT(%struct.TYPE_5__* %81)
  br label %156

83:                                               ; preds = %69
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @SLX_CHDR, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to %struct.ip*
  %89 = getelementptr inbounds %struct.ip, %struct.ip* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* @lastconn, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = load i64, i64* @lastconn, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_5__*
  %94 = call i32 @ND_PRINT(%struct.TYPE_5__* %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %156

98:                                               ; preds = %83
  %99 = load %struct.ip*, %struct.ip** %7, align 8
  %100 = call i64 @IP_HL(%struct.ip* %99)
  store i64 %100, i64* %10, align 8
  %101 = load %struct.ip*, %struct.ip** %7, align 8
  %102 = bitcast %struct.ip* %101 to i32*
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = bitcast i32* %104 to %struct.tcphdr*
  %106 = call i64 @TH_OFF(%struct.tcphdr* %105)
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %10, align 8
  %111 = shl i64 %110, 2
  %112 = sub i64 %109, %111
  %113 = load i64**, i64*** @lastlen, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64*, i64** %113, i64 %115
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @lastconn, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %112, i64* %119, align 8
  br label %156

120:                                              ; preds = %69
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %156

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @SLX_CHDR, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TYPE_COMPRESSED_TCP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %124
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* @SLX_CHDR, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.ip*, %struct.ip** %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @compressed_sl_print(%struct.TYPE_5__* %134, i32* %138, %struct.ip* %139, i64 %140, i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.7 to %struct.TYPE_5__*))
  br label %155

145:                                              ; preds = %124
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* @SLX_CHDR, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to %struct.TYPE_5__*
  %154 = call i32 @ND_PRINT(%struct.TYPE_5__* %153)
  br label %155

155:                                              ; preds = %145, %133
  br label %156

156:                                              ; preds = %56, %97, %123, %155, %98, %76
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i64 @IP_HL(%struct.ip*) #1

declare dso_local i64 @TH_OFF(%struct.tcphdr*) #1

declare dso_local i32 @compressed_sl_print(%struct.TYPE_5__*, i32*, %struct.ip*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
