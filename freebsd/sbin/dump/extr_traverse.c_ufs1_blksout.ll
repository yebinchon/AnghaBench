; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_ufs1_blksout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_ufs1_blksout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@sblock = common dso_local global %struct.TYPE_4__* null, align 8
@TP_BSIZE = common dso_local global i32 0, align 4
@tp_bshift = common dso_local global i32 0, align 4
@TP_NINDIR = common dso_local global i32 0, align 4
@spcl = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TS_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32)* @ufs1_blksout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs1_blksout(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* @TP_BSIZE, align 4
  %19 = call i32 @howmany(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @tp_bshift, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %134, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %138

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @TP_NINDIR, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %10, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @TP_NINDIR, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @TP_NINDIR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp sle i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %78, %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i64*, i64** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sdiv i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spcl, i32 0, i32 0), align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 1, i32* %69, align 4
  br label %77

70:                                               ; preds = %54
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spcl, i32 0, i32 0), align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %50

81:                                               ; preds = %50
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spcl, i32 0, i32 1), align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @writeheader(i32 %85)
  %87 = load i64*, i64** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sdiv i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  store i64* %92, i64** %7, align 8
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %126, %81
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %94
  %99 = load i64*, i64** %7, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i64*, i64** %7, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dumpblock(i64 %110, i32 %113)
  br label %124

115:                                              ; preds = %102
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* @TP_BSIZE, align 4
  %122 = mul nsw i32 %120, %121
  %123 = call i32 @dumpblock(i64 %117, i32 %122)
  br label %124

124:                                              ; preds = %115, %108
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load i64*, i64** %7, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %7, align 8
  br label %94

132:                                              ; preds = %94
  %133 = load i32, i32* @TS_ADDR, align 4
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spcl, i32 0, i32 2), align 4
  br label %134

134:                                              ; preds = %132
  %135 = load i32, i32* @TP_NINDIR, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %25

138:                                              ; preds = %25
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @writeheader(i32) #1

declare dso_local i32 @dumpblock(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
