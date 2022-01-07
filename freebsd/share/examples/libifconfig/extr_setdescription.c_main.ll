; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_setdescription.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_setdescription.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"Invalid number of arguments. First argument should be interface name, second argument should be the description to set.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Interface name: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Old description: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"New description: %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"New description successfully set.\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Socket error\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"IOCTL(%lu) error\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Other error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = call i32 @errx(i32 %13, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0))
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
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = call i32* (...) @ifconfig_open()
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @errx(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %77

32:                                               ; preds = %15
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @ifconfig_get_description(i32* %33, i8* %34, i8** %8)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @ifconfig_set_description(i32* %43, i8* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %68

50:                                               ; preds = %40
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @ifconfig_err_errtype(i32* %51)
  switch i32 %52, label %63 [
    i32 128, label %53
    i32 129, label %57
  ]

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @ifconfig_err_errno(i32* %54)
  %56 = call i32 (i32, i8*, ...) @err(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %67

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ifconfig_err_errno(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @ifconfig_err_ioctlreq(i32* %60)
  %62 = call i32 (i32, i8*, ...) @err(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  br label %67

63:                                               ; preds = %50
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @ifconfig_err_errno(i32* %64)
  %66 = call i32 (i32, i8*, ...) @err(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %57, %53
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @free(i8* %73)
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @ifconfig_close(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %29
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_get_description(i32*, i8*, i8**) #1

declare dso_local i64 @ifconfig_set_description(i32*, i8*, i8*) #1

declare dso_local i32 @ifconfig_err_errtype(i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @ifconfig_err_errno(i32*) #1

declare dso_local i32 @ifconfig_err_ioctlreq(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ifconfig_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
