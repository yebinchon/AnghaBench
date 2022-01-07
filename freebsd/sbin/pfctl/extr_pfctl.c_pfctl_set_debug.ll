; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32, i32 }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@PF_DEBUG_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@PF_DEBUG_URGENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@PF_DEBUG_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"loud\00", align 1
@PF_DEBUG_NOISY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown debug level \22%s\22\00", align 1
@PF_OPT_NOACTION = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCSETDEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"DIOCSETDEBUG\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"set debug %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_set_debug(%struct.pfctl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfctl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @loadopt, align 4
  %8 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @PF_DEBUG_NONE, align 4
  %18 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %19 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %50

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @PF_DEBUG_URGENT, align 4
  %26 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %27 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %49

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @PF_DEBUG_MISC, align 4
  %34 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %35 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %48

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @PF_DEBUG_NOISY, align 4
  %42 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %43 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %3, align 4
  br label %81

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49, %16
  %51 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %52 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %54 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %57 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PF_OPT_NOACTION, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load i32, i32* @dev, align 4
  %64 = load i32, i32* @DIOCSETDEBUG, align 4
  %65 = call i64 @ioctl(i32 %63, i32 %64, i32* %6)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %72 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %70
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %44, %11
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
