; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_printIOstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_printIOstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@CLOCK_REALTIME_PRECISE = common dso_local global i32 0, align 4
@finishpass = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@startpass = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Running time: %jd.%03ld sec\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"buffer reads by type:\0A\00", align 1
@BT_NUMBUFTYPES = common dso_local global i32 0, align 4
@readtime = common dso_local global %struct.TYPE_7__* null, align 8
@readcnt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%21s:%8ld %2ld.%ld%% %4jd.%03ld sec %2lld.%lld%%\0A\00", align 1
@buftype = common dso_local global i8** null, align 8
@diskreads = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printIOstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printIOstats() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %5 = call i32 @clock_gettime(i32 %4, %struct.TYPE_6__* @finishpass)
  %6 = call i32 @timespecsub(%struct.TYPE_6__* @finishpass, i32* @startpass, %struct.TYPE_6__* @finishpass)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @finishpass, i32 0, i32 1), align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @finishpass, i32 0, i32 0), align 8
  %10 = sdiv i32 %9, 1000000
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %36, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @readtime, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @readtime, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 1000000
  %32 = add nsw i32 %24, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %2, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i64, i64* %2, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 1, i64* %2, align 8
  br label %43

43:                                               ; preds = %42, %39
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %123, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %126

48:                                               ; preds = %44
  %49 = load i32*, i32** @readcnt, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %123

56:                                               ; preds = %48
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @readtime, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @readtime, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 1000000
  %71 = add nsw i32 %63, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %1, align 8
  %73 = load i8**, i8*** @buftype, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i32*, i32** @readcnt, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @readcnt, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 100
  %89 = load i32, i32* @diskreads, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32*, i32** @readcnt, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 1000
  %97 = load i32, i32* @diskreads, align 4
  %98 = sdiv i32 %96, %97
  %99 = srem i32 %98, 10
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @readtime, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @readtime, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 1000000
  %113 = load i64, i64* %1, align 8
  %114 = mul nsw i64 %113, 100
  %115 = load i64, i64* %2, align 8
  %116 = sdiv i64 %114, %115
  %117 = load i64, i64* %1, align 8
  %118 = mul nsw i64 %117, 1000
  %119 = load i64, i64* %2, align 8
  %120 = sdiv i64 %118, %119
  %121 = srem i64 %120, 10
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %77, i32 %82, i32 %90, i32 %99, i32 %105, i32 %112, i64 %116, i64 %121)
  br label %123

123:                                              ; preds = %56, %55
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %44

126:                                              ; preds = %44
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @timespecsub(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
