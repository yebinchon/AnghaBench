; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.console = type { i32 }

@comc_curspeed = common dso_local global i32 0, align 4
@COMSPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"console\00", align 1
@comconsole = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"boot_multicons\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"comconsole_speed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@comc_speed_set = common dso_local global i32 0, align 4
@env_nounset = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"comconsole_port\00", align 1
@comc_port = common dso_local global i32 0, align 4
@comc_port_set = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"comconsole_pcidev\00", align 1
@comc_pcidev_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*)* @comc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comc_probe(%struct.console* %0) #0 {
  %2 = alloca %struct.console*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.console* %0, %struct.console** %2, align 8
  %9 = load i32, i32* @comc_curspeed, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %1
  %12 = load i32, i32* @COMSPEED, align 4
  store i32 %12, i32* @comc_curspeed, align 4
  %13 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  %19 = call i64 @strcmp(i8* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11
  %22 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %16
  %25 = call i32 (...) @comc_getspeed()
  store i32 %25, i32* @comc_curspeed, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @comc_parseint(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* @comc_curspeed, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %26
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %40 = load i32, i32* @comc_curspeed, align 4
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = call i32 @unsetenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EV_VOLATILE, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %45 = load i32, i32* @comc_speed_set, align 4
  %46 = load i32, i32* @env_nounset, align 4
  %47 = call i32 @env_setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %43, i8* %44, i32 %45, i32 %46)
  %48 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @comc_parseint(i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* @comc_port, align 4
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %38
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %61 = load i32, i32* @comc_port, align 4
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = call i32 @unsetenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @EV_VOLATILE, align 4
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %66 = load i32, i32* @comc_port_set, align 4
  %67 = load i32, i32* @env_nounset, align 4
  %68 = call i32 @env_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %64, i8* %65, i32 %66, i32 %67)
  %69 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %59
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @comc_parse_pcidev(i8* %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @comc_pcidev_handle(i64 %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %59
  %82 = call i32 @unsetenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @EV_VOLATILE, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @comc_pcidev_set, align 4
  %86 = load i32, i32* @env_nounset, align 4
  %87 = call i32 @env_setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %83, i8* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %1
  %89 = load i32, i32* @comc_curspeed, align 4
  %90 = load i32, i32* @comc_port, align 4
  %91 = call i32 @comc_setup(i32 %89, i32 %90)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @comc_getspeed(...) #1

declare dso_local i32 @comc_parseint(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @comc_parse_pcidev(i8*) #1

declare dso_local i32 @comc_pcidev_handle(i64) #1

declare dso_local i32 @comc_setup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
