; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsidoinquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsidoinquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@CAM_ARG_GET_STDINQ = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_GET_XFERRATE = common dso_local global i32 0, align 4
@CAM_ARG_GET_SERIAL = common dso_local global i32 0, align 4
@CAM_ARG_INQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsidoinquiry(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %39, %7
  %19 = load i32, i32* %10, align 4
  %20 = load i8**, i8*** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @getopt(i32 %19, i8** %20, i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %16, align 4
  switch i32 %25, label %38 [
    i32 68, label %26
    i32 82, label %30
    i32 83, label %34
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @CAM_ARG_GET_STDINQ, align 4
  %28 = load i32, i32* @arglist, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @arglist, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @CAM_ARG_GET_XFERRATE, align 4
  %32 = load i32, i32* @arglist, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @arglist, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @CAM_ARG_GET_SERIAL, align 4
  %36 = load i32, i32* @arglist, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @arglist, align 4
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %34, %30, %26
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* @arglist, align 4
  %42 = load i32, i32* @CAM_ARG_INQ_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @CAM_ARG_INQ_MASK, align 4
  %47 = load i32, i32* @arglist, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @arglist, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @arglist, align 4
  %51 = load i32, i32* @CAM_ARG_GET_STDINQ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @scsiinquiry(%struct.cam_device* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %8, align 4
  br label %86

65:                                               ; preds = %60
  %66 = load i32, i32* @arglist, align 4
  %67 = load i32, i32* @CAM_ARG_GET_SERIAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @scsiserial(%struct.cam_device* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* @arglist, align 4
  %78 = load i32, i32* @CAM_ARG_GET_XFERRATE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %83 = call i32 @camxferrate(%struct.cam_device* %82)
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %63
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @scsiinquiry(%struct.cam_device*, i32, i32, i32) #1

declare dso_local i32 @scsiserial(%struct.cam_device*, i32, i32, i32) #1

declare dso_local i32 @camxferrate(%struct.cam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
