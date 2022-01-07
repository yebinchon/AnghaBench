; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_setmtu.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_setmtu.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"Invalid number of arguments. First argument should be interface name, second argument should be the MTU to set.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Interface name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"New MTU: %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Successfully changed MTU of %s to %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"couldn't create socket. This shouldn't happen.\0A\00", align 1
@SIOCSIFMTU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to set MTU (SIOCSIFMTU)\0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"Failed to set MTU due to error in unexpected ioctl() call %lu. Error code: %i.\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Should basically never end up here in this example.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = call i32 @errx(i32 %13, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strtol(i8* %22, i8** %7, i32 10)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = call i32* (...) @ifconfig_open()
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @errx(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %75

35:                                               ; preds = %15
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @ifconfig_set_mtu(i32* %36, i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @ifconfig_close(i32* %45)
  store i32* null, i32** %9, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  store i32 0, i32* %3, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @ifconfig_err_errtype(i32* %50)
  switch i32 %51, label %68 [
    i32 128, label %52
    i32 129, label %54
  ]

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %70

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @ifconfig_err_ioctlreq(i32* %55)
  %57 = load i32, i32* @SIOCSIFMTU, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %67

61:                                               ; preds = %54
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @ifconfig_err_ioctlreq(i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @ifconfig_err_errno(i32* %64)
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0), i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %61, %59
  br label %70

68:                                               ; preds = %49
  %69 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %67, %52
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @ifconfig_close(i32* %71)
  store i32* null, i32** %9, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @free(i8* %73)
  store i32 -1, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %41, %32
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_set_mtu(i32*, i8*, i32) #1

declare dso_local i32 @ifconfig_close(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ifconfig_err_errtype(i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @ifconfig_err_ioctlreq(i32*) #1

declare dso_local i32 @ifconfig_err_errno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
