; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_ifmedia_getstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_ifmedia_getstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32*, i32 }

@ifmedia_getstate.ifmr = internal global %struct.ifmediareq* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@name = common dso_local global i32 0, align 4
@SIOCGIFXMEDIA = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SIOCGIFMEDIA\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: no media types?\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SIOCGIFXMEDIA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifmediareq* @ifmedia_getstate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %4, align 4
  %5 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %6 = icmp eq %struct.ifmediareq* %5, null
  br i1 %6, label %7, label %93

7:                                                ; preds = %1
  %8 = call i64 @malloc(i32 24)
  %9 = inttoptr i64 %8 to %struct.ifmediareq*
  store %struct.ifmediareq* %9, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %10 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %11 = icmp eq %struct.ifmediareq* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %7
  %15 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %16 = call i32 @memset(%struct.ifmediareq* %15, i32 0, i32 24)
  %17 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %18 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @name, align 4
  %21 = call i32 @strlcpy(i32 %19, i32 %20, i32 4)
  %22 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %23 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %25 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SIOCGIFXMEDIA, align 4
  %28 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %29 = ptrtoint %struct.ifmediareq* %28 to i32
  %30 = call i64 @ioctl(i32 %26, i32 %27, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SIOCGIFMEDIA, align 4
  %39 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %40 = ptrtoint %struct.ifmediareq* %39 to i32
  %41 = call i64 @ioctl(i32 %37, i32 %38, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36, %33
  %46 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @name, align 4
  %52 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %55 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %3, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %69 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @SIOCGIFXMEDIA, align 4
  %75 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %76 = ptrtoint %struct.ifmediareq* %75 to i32
  %77 = call i64 @ioctl(i32 %73, i32 %74, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  br label %92

82:                                               ; preds = %66
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @SIOCGIFMEDIA, align 4
  %85 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  %86 = ptrtoint %struct.ifmediareq* %85 to i32
  %87 = call i64 @ioctl(i32 %83, i32 %84, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %82
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %1
  %94 = load %struct.ifmediareq*, %struct.ifmediareq** @ifmedia_getstate.ifmr, align 8
  ret %struct.ifmediareq* %94
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
