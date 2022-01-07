; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_main.c_sig_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_main.c_sig_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@__sigblockset = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@INDX_HUP = common dso_local global i64 0, align 8
@h_hup = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@INDX_INT = common dso_local global i64 0, align 8
@h_int = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@INDX_TERM = common dso_local global i64 0, align 8
@h_term = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"signal-reset\00", align 1
@INDX_WINCH = common dso_local global i64 0, align 8
@SIGWINCH = common dso_local global i32 0, align 4
@h_winch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sig_init(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call %struct.TYPE_7__* @GCLP(%struct.TYPE_6__* %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %60

11:                                               ; preds = %2
  %12 = call i32 @sigemptyset(i32* @__sigblockset)
  %13 = load i32, i32* @SIGHUP, align 4
  %14 = call i64 @sigaddset(i32* @__sigblockset, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @SIGHUP, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @INDX_HUP, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* @h_hup, align 4
  %24 = call i64 @setsig(i32 %17, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @SIGINT, align 4
  %28 = call i64 @sigaddset(i32* @__sigblockset, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @SIGINT, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @INDX_INT, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* @h_int, align 4
  %38 = call i64 @setsig(i32 %31, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @SIGTERM, align 4
  %42 = call i64 @sigaddset(i32* @__sigblockset, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @SIGTERM, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @INDX_TERM, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* @h_term, align 4
  %52 = call i64 @setsig(i32 %45, i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44, %40, %30, %26, %16, %11
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @perr(i32 %57, i32* null)
  store i32 1, i32* %3, align 4
  br label %81

59:                                               ; preds = %44
  br label %80

60:                                               ; preds = %2
  %61 = load i32, i32* @SIGHUP, align 4
  %62 = load i32, i32* @h_hup, align 4
  %63 = call i64 @setsig(i32 %61, i32* null, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @SIGINT, align 4
  %67 = load i32, i32* @h_int, align 4
  %68 = call i64 @setsig(i32 %66, i32* null, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @SIGTERM, align 4
  %72 = load i32, i32* @h_term, align 4
  %73 = call i64 @setsig(i32 %71, i32* null, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %65, %60
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @M_SYSERR, align 4
  %78 = call i32 @msgq(i32* %76, i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %59
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_7__* @GCLP(%struct.TYPE_6__*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

declare dso_local i64 @setsig(i32, i32*, i32) #1

declare dso_local i32 @perr(i32, i32*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
