; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphscsistatuserror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphscsistatuserror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cam_periph = type { i32 }
%struct.ccb_getdevstats = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GDEV_STATS = common dso_local global i32 0, align 4
@RELSIM_ADJUST_OPENINGS = common dso_local global i32 0, align 4
@RELSIM_RELEASE_AFTER_CMDCMPLT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@SSQ_PRINT_SENSE = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Periph was invalidated\00", align 1
@SF_RETRY_BUSY = common dso_local global i32 0, align 4
@RELSIM_RELEASE_AFTER_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Retries exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*, %union.ccb**, i32, i32, i32*, i32*, i32*, i32*, i8**)* @camperiphscsistatuserror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camperiphscsistatuserror(%union.ccb* %0, %union.ccb** %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i8** %8) #0 {
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %union.ccb**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.cam_periph*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ccb_getdevstats, align 4
  %22 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %10, align 8
  store %union.ccb** %1, %union.ccb*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8** %8, i8*** %18, align 8
  %23 = load %union.ccb*, %union.ccb** %10, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %143 [
    i32 130, label %27
    i32 133, label %27
    i32 132, label %27
    i32 131, label %27
    i32 134, label %28
    i32 135, label %28
    i32 129, label %39
    i32 136, label %93
    i32 128, label %142
  ]

27:                                               ; preds = %9, %9, %9, %9
  store i32 0, i32* %20, align 4
  br label %145

28:                                               ; preds = %9, %9
  %29 = load %union.ccb*, %union.ccb** %10, align 8
  %30 = load %union.ccb**, %union.ccb*** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = load i8**, i8*** %18, align 8
  %38 = call i32 @camperiphscsisenseerror(%union.ccb* %29, %union.ccb** %30, i32 %31, i32 %32, i32* %33, i32* %34, i32* %35, i32* %36, i8** %37)
  store i32 %38, i32* %20, align 4
  br label %145

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 3
  %41 = load %union.ccb*, %union.ccb** %10, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %46 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %40, i32 %44, i32 %45)
  %47 = load i32, i32* @XPT_GDEV_STATS, align 4
  %48 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = bitcast %struct.ccb_getdevstats* %21 to %union.ccb*
  %51 = call i32 @xpt_action(%union.ccb* %50)
  %52 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %22, align 4
  %61 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %14, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.ccb_getdevstats, %struct.ccb_getdevstats* %21, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %14, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %55
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @RELSIM_ADJUST_OPENINGS, align 4
  %80 = load i32*, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  br label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @RELSIM_RELEASE_AFTER_CMDCMPLT, align 4
  %83 = load i32*, i32** %15, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** %16, align 8
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* @ERESTART, align 4
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %88 = xor i32 %87, -1
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %145

92:                                               ; preds = %39
  br label %93

93:                                               ; preds = %9, %92
  %94 = load %union.ccb*, %union.ccb** %10, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.cam_periph* @xpt_path_periph(i32 %97)
  store %struct.cam_periph* %98, %struct.cam_periph** %19, align 8
  %99 = load %struct.cam_periph*, %struct.cam_periph** %19, align 8
  %100 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* @EIO, align 4
  store i32 %106, i32* %20, align 4
  %107 = load i8**, i8*** %18, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %107, align 8
  br label %141

108:                                              ; preds = %93
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @SF_RETRY_BUSY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load %union.ccb*, %union.ccb** %10, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_5__*
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @SF_RETRY_BUSY, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %union.ccb*, %union.ccb** %10, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* @ERESTART, align 4
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* @RELSIM_RELEASE_AFTER_TIMEOUT, align 4
  %133 = load i32, i32* @RELSIM_RELEASE_AFTER_CMDCMPLT, align 4
  %134 = or i32 %132, %133
  %135 = load i32*, i32** %15, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %16, align 8
  store i32 1000, i32* %136, align 4
  br label %140

137:                                              ; preds = %113
  %138 = load i32, i32* @EIO, align 4
  store i32 %138, i32* %20, align 4
  %139 = load i8**, i8*** %18, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %130
  br label %141

141:                                              ; preds = %140, %105
  br label %145

142:                                              ; preds = %9
  br label %143

143:                                              ; preds = %9, %142
  %144 = load i32, i32* @EIO, align 4
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %143, %141, %84, %28, %27
  %146 = load i32, i32* %20, align 4
  ret i32 %146
}

declare dso_local i32 @camperiphscsisenseerror(%union.ccb*, %union.ccb**, i32, i32, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
