; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getdevlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getdevlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@XPT_GDEVLIST = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error getting device list\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MORE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CHANGED\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"%s%d:  generation: %d index: %d status: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*)* @getdevlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdevlist(%struct.cam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_device*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %8 = call %union.ccb* @cam_getccb(%struct.cam_device* %7)
  store %union.ccb* %8, %union.ccb** %4, align 8
  %9 = load i32, i32* @XPT_GDEVLIST, align 4
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @CAM_DIR_NONE, align 4
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 128, i32* %25, align 8
  br label %26

26:                                               ; preds = %88, %1
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %89

32:                                               ; preds = %26
  %33 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = call i64 @cam_send_ccb(%struct.cam_device* %33, %union.ccb* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = call i32 @cam_freeccb(%union.ccb* %39)
  store i32 1, i32* %2, align 4
  br label %93

41:                                               ; preds = %32
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %42, align 16
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %59 [
    i32 128, label %47
    i32 130, label %50
    i32 129, label %53
    i32 131, label %56
  ]

47:                                               ; preds = %41
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %49 = call i32 @strcpy(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %59

50:                                               ; preds = %41
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %59

53:                                               ; preds = %41
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %55 = call i32 @strcpy(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %59

56:                                               ; preds = %41
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %58 = call i32 @strcpy(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %41, %56, %53, %50, %47
  %60 = load i32, i32* @stdout, align 4
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %union.ccb*, %union.ccb** %4, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %union.ccb*, %union.ccb** %4, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %union.ccb*, %union.ccb** %4, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %78 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 %68, i32 %72, i8* %76, i8* %77)
  %79 = load %union.ccb*, %union.ccb** %4, align 8
  %80 = bitcast %union.ccb* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 129
  br i1 %83, label %84, label %88

84:                                               ; preds = %59
  %85 = load %union.ccb*, %union.ccb** %4, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %59
  br label %26

89:                                               ; preds = %26
  %90 = load %union.ccb*, %union.ccb** %4, align 8
  %91 = call i32 @cam_freeccb(%union.ccb* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %37
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
