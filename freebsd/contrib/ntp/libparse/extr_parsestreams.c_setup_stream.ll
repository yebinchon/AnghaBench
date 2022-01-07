; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_setup_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_setup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.stroptions = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@BPRI_MED = common dso_local global i32 0, align 4
@SO_READOPT = common dso_local global i32 0, align 4
@SO_HIWAT = common dso_local global i32 0, align 4
@SO_LOWAT = common dso_local global i32 0, align 4
@M_PARSE = common dso_local global i32 0, align 4
@RMSGD = common dso_local global i32 0, align 4
@RNORM = common dso_local global i32 0, align 4
@M_SETOPTS = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@MC_SERVICEIMM = common dso_local global i32 0, align 4
@MC_SERVICEDEF = common dso_local global i32 0, align 4
@DD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"parse: setup_stream - FAILED - no MEMORY for allocb\0A\00", align 1
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
  %8 = load i32, i32* @BPRI_MED, align 4
  %9 = call %struct.TYPE_7__* @allocb(i32 24, i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %75

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.stroptions*
  store %struct.stroptions* %17, %struct.stroptions** %7, align 8
  %18 = load i32, i32* @SO_READOPT, align 4
  %19 = load i32, i32* @SO_HIWAT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SO_LOWAT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %24 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @M_PARSE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = load i32, i32* @RMSGD, align 4
  br label %32

30:                                               ; preds = %12
  %31 = load i32, i32* @RNORM, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %35 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @M_PARSE, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i64 4, i64 256
  %41 = trunc i64 %40 to i32
  %42 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %43 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.stroptions*, %struct.stroptions** %7, align 8
  %45 = getelementptr inbounds %struct.stroptions, %struct.stroptions* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @M_SETOPTS, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 24
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = call i32 @putnext(i32* %57, %struct.TYPE_7__* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call %struct.TYPE_8__* @WR(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @M_CTL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @M_PARSE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %32
  %69 = load i32, i32* @MC_SERVICEIMM, align 4
  br label %72

70:                                               ; preds = %32
  %71 = load i32, i32* @MC_SERVICEDEF, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = call i32 @putctl1(i32 %63, i32 %64, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %2
  %76 = load i32, i32* @DD_OPEN, align 4
  %77 = call i32 @parseprintf(i32 %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_7__* @allocb(i32, i32) #1

declare dso_local i32 @putnext(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @putctl1(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @WR(i32*) #1

declare dso_local i32 @parseprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
