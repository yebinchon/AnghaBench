; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_getboothowto.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_getboothowto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"comconsole\00", align 1
@RB_SERIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"nullconsole\00", align 1
@RB_MUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"efi_8250_uid\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"hw.uart.console\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"efi_com_speed\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"efi_com_port\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"comconsole_port\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"io:%d,br:%d\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bi_getboothowto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bi_getboothowto(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [50 x i8], align 16
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @boot_parse_cmdline(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @boot_env_to_howto()
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %80

19:                                               ; preds = %1
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @RB_SERIAL, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @RB_MUTE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %46 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strtol(i8* %50, i32* null, i32 0)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strtol(i8* %62, i32* null, i32 0)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @snprintf(i8* %71, i32 50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @EV_VOLATILE, align 4
  %76 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %77 = call i32 @env_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %75, i8* %76, i32* null, i32* null)
  br label %78

78:                                               ; preds = %70, %67, %64
  br label %79

79:                                               ; preds = %78, %42, %39, %35
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @boot_parse_cmdline(i8*) #1

declare dso_local i32 @boot_env_to_howto(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
