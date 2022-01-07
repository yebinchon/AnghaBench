; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_result_code_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_result_code_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tok = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c" RESULT_CODE(%u\00", align 1
@PPTP_CTRL_MSG_TYPE_SCCRP = common dso_local global i32 0, align 4
@pptp_scrrp_str = common dso_local global %struct.tok* null, align 8
@PPTP_CTRL_MSG_TYPE_StopCCRP = common dso_local global i32 0, align 4
@pptp_echorp_str = common dso_local global %struct.tok* null, align 8
@PPTP_CTRL_MSG_TYPE_ECHORP = common dso_local global i32 0, align 4
@PPTP_CTRL_MSG_TYPE_OCRP = common dso_local global i32 0, align 4
@pptp_ocrp_str = common dso_local global %struct.tok* null, align 8
@PPTP_CTRL_MSG_TYPE_ICRP = common dso_local global i32 0, align 4
@pptp_icrp_str = common dso_local global %struct.tok* null, align 8
@PPTP_CTRL_MSG_TYPE_CDN = common dso_local global i32 0, align 4
@pptp_cdn_str = common dso_local global %struct.tok* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @pptp_result_code_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_result_code_print(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tok*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  %13 = call i32 @ND_PRINT(%struct.TYPE_4__* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PPTP_CTRL_MSG_TYPE_SCCRP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load %struct.tok*, %struct.tok** @pptp_scrrp_str, align 8
  br label %65

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PPTP_CTRL_MSG_TYPE_StopCCRP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load %struct.tok*, %struct.tok** @pptp_echorp_str, align 8
  br label %63

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PPTP_CTRL_MSG_TYPE_ECHORP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load %struct.tok*, %struct.tok** @pptp_echorp_str, align 8
  br label %61

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PPTP_CTRL_MSG_TYPE_OCRP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load %struct.tok*, %struct.tok** @pptp_ocrp_str, align 8
  br label %59

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PPTP_CTRL_MSG_TYPE_ICRP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.tok*, %struct.tok** @pptp_icrp_str, align 8
  br label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PPTP_CTRL_MSG_TYPE_CDN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load %struct.tok*, %struct.tok** @pptp_cdn_str, align 8
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi %struct.tok* [ %53, %52 ], [ null, %54 ]
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi %struct.tok* [ %47, %46 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %40
  %60 = phi %struct.tok* [ %41, %40 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %34
  %62 = phi %struct.tok* [ %35, %34 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %28
  %64 = phi %struct.tok* [ %29, %28 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %22
  %66 = phi %struct.tok* [ %23, %22 ], [ %64, %63 ]
  store %struct.tok* %66, %struct.tok** %7, align 8
  %67 = load %struct.tok*, %struct.tok** %7, align 8
  %68 = icmp ne %struct.tok* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load %struct.tok*, %struct.tok** %7, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @tok2str(%struct.tok* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.TYPE_4__*
  %77 = call i32 @ND_PRINT(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %69, %65
  br label %79

79:                                               ; preds = %78, %3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.3 to %struct.TYPE_4__*))
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @tok2str(%struct.tok*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
