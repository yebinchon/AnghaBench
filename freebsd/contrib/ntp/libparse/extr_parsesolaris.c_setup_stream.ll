; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_setup_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_setup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.stroptions = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@DD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"parse: SETUP_STREAM - setting up stream for q=%x\0A\00", align 1
@BPRI_MED = common dso_local global i32 0, align 4
@SO_READOPT = common dso_local global i32 0, align 4
@SO_HIWAT = common dso_local global i32 0, align 4
@SO_LOWAT = common dso_local global i32 0, align 4
@SO_ISNTTY = common dso_local global i32 0, align 4
@M_PARSE = common dso_local global i32 0, align 4
@RMSGD = common dso_local global i32 0, align 4
@RNORM = common dso_local global i32 0, align 4
@M_SETOPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"NULL q - strange\00", align 1
@M_CTL = common dso_local global i32 0, align 4
@MC_SERVICEIMM = common dso_local global i32 0, align 4
@MC_SERVICEDEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"parse: setup_stream - FAILED - no MEMORY for allocb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @setup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_stream(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.stroptions*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @DD_OPEN, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 (i32, i8*, ...) @pprintf(i32 %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i32, i32* @BPRI_MED, align 4
  %12 = call %struct.TYPE_7__* @allocb(i32 24, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %86

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.stroptions*
  store %struct.stroptions* %21, %struct.stroptions** %7, align 8
  %22 = load i32, i32* @SO_READOPT, align 4
  %23 = load i32, i32* @SO_HIWAT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SO_LOWAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SO_ISNTTY, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %30 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @M_PARSE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* @RMSGD, align 4
  br label %38

36:                                               ; preds = %15
  %37 = load i32, i32* @RNORM, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %41 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @M_PARSE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 4, i64 256
  %47 = trunc i64 %46 to i32
  %48 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %49 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %51 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @M_SETOPTS, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 24
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %38
  %66 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %38
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = call i32 @putnext(i32* %68, %struct.TYPE_7__* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call %struct.TYPE_8__* @WR(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @M_CTL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @M_PARSE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @MC_SERVICEIMM, align 4
  br label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @MC_SERVICEDEF, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @putctl1(i32 %74, i32 %75, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %89

86:                                               ; preds = %2
  %87 = load i32, i32* @DD_OPEN, align 4
  %88 = call i32 (i32, i8*, ...) @pprintf(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @pprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @allocb(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @putnext(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @putctl1(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @WR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
