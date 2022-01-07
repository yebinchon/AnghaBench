; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_trace_rdisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_trace_rdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i8* }
%union.ad_u = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@TRACEPACKETS = common dso_local global i32 0, align 4
@ftrace = common dso_local global i32* null, align 8
@ICMP_ROUTERADVERT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s Router Ad from %s to %s via %s life=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@TRACECONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"\09%s preference=%d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s Router Solic. from %s to %s via %s value=%#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.interface*, %union.ad_u*, i32)* @trace_rdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_rdisc(i8* %0, i32 %1, i32 %2, %struct.interface* %3, %union.ad_u* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.interface*, align 8
  %11 = alloca %union.ad_u*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.interface* %3, %struct.interface** %10, align 8
  store %union.ad_u* %4, %union.ad_u** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @TRACEPACKETS, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32*, i32** @ftrace, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %6
  br label %128

22:                                               ; preds = %18
  %23 = call i32 (...) @lastlog()
  %24 = load %union.ad_u*, %union.ad_u** %11, align 8
  %25 = bitcast %union.ad_u* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ICMP_ROUTERADVERT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %106

30:                                               ; preds = %22
  %31 = load i32*, i32** @ftrace, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @naddr_ntoa(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @naddr_ntoa(i32 %35)
  %37 = load %struct.interface*, %struct.interface** %10, align 8
  %38 = icmp ne %struct.interface* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.interface*, %struct.interface** %10, align 8
  %41 = getelementptr inbounds %struct.interface, %struct.interface* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = load %union.ad_u*, %union.ad_u** %11, align 8
  %47 = bitcast %union.ad_u* %46 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ntohs(i32 %49)
  %51 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34, i8* %36, i8* %45, i32 %50)
  %52 = load i32, i32* @TRACECONTENTS, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %128

55:                                               ; preds = %44
  %56 = load %union.ad_u*, %union.ad_u** %11, align 8
  %57 = bitcast %union.ad_u* %56 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 24
  %66 = udiv i64 %65, 4
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32* %67, i32** %15, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %100, %55
  %69 = load i32, i32* %13, align 4
  %70 = load %union.ad_u*, %union.ad_u** %11, align 8
  %71 = bitcast %union.ad_u* %70 to %struct.TYPE_7__*
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ule i32* %76, %77
  br label %79

79:                                               ; preds = %75, %68
  %80 = phi i1 [ false, %68 ], [ %78, %75 ]
  br i1 %80, label %81, label %103

81:                                               ; preds = %79
  %82 = load i32*, i32** @ftrace, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @naddr_ntoa(i32 %85)
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ntohl(i32 %89)
  %91 = trunc i64 %90 to i32
  %92 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %91)
  %93 = load %union.ad_u*, %union.ad_u** %11, align 8
  %94 = bitcast %union.ad_u* %93 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %14, align 8
  br label %100

100:                                              ; preds = %81
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %68

103:                                              ; preds = %79
  %104 = load i32*, i32** @ftrace, align 8
  %105 = call i32 @fputc(i8 signext 10, i32* %104)
  br label %128

106:                                              ; preds = %22
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i8* @naddr_ntoa(i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i8* @naddr_ntoa(i32 %110)
  %112 = load %struct.interface*, %struct.interface** %10, align 8
  %113 = icmp ne %struct.interface* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load %struct.interface*, %struct.interface** %10, align 8
  %116 = getelementptr inbounds %struct.interface, %struct.interface* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  br label %119

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i8* [ %117, %114 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %118 ]
  %121 = load %union.ad_u*, %union.ad_u** %11, align 8
  %122 = bitcast %union.ad_u* %121 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ntohl(i32 %124)
  %126 = trunc i64 %125 to i32
  %127 = call i32 @trace_act(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %109, i8* %111, i8* %120, i32 %126)
  br label %128

128:                                              ; preds = %21, %54, %119, %103
  ret void
}

declare dso_local i32 @lastlog(...) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @naddr_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @trace_act(i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
