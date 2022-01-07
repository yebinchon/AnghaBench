; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@IOETHERSWITCHGETPORT = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETPORT)\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid led number %s; must be between 1 and %d\00", align 1
@ledstyles = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid led style \22%s\22\00", align 1
@IOETHERSWITCHSETPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHSETPORT)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i32, i8**)* @set_port_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_led(%struct.cfg* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfg* %0, %struct.cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %105

14:                                               ; preds = %3
  %15 = call i32 @bzero(%struct.TYPE_4__* %8, i32 24)
  %16 = load %struct.cfg*, %struct.cfg** %5, align 8
  %17 = getelementptr inbounds %struct.cfg, %struct.cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.cfg*, %struct.cfg** %5, align 8
  %21 = getelementptr inbounds %struct.cfg, %struct.cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IOETHERSWITCHGETPORT, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, %struct.TYPE_4__* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EX_OSERR, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strtol(i8* %32, i32* null, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36, %29
  %42 = load i32, i32* @EX_USAGE, align 4
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i8*, ...) @errx(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %78, %49
  %53 = load i32**, i32*** @ledstyles, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %52
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32**, i32*** @ledstyles, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @strcmp(i8* %62, i32* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %71, i32* %76, align 4
  br label %81

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %52

81:                                               ; preds = %70, %52
  %82 = load i32**, i32*** @ledstyles, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @EX_USAGE, align 4
  %90 = load i8**, i8*** %7, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32, i8*, i8*, ...) @errx(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.cfg*, %struct.cfg** %5, align 8
  %96 = getelementptr inbounds %struct.cfg, %struct.cfg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IOETHERSWITCHSETPORT, align 4
  %99 = call i64 @ioctl(i32 %97, i32 %98, %struct.TYPE_4__* %8)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @EX_OSERR, align 4
  %103 = call i32 @err(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %13
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
