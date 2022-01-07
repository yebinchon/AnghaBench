; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifdestroy.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifdestroy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"Invalid number of arguments. Only one argument is accepted, and it should be the name of the interface to be destroyed.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Interface name: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Successfully destroyed interface '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"couldn't create socket. This shouldn't happen.\0A\00", align 1
@SIOCIFDESTROY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to destroy interface (SIOCIFDESTROY)\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Should basically never end up here in this example.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @errx(i32 %11, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32* (...) @ifconfig_open()
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @errx(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

26:                                               ; preds = %13
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @ifconfig_destroy_interface(i32* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ifconfig_close(i32* %34)
  store i32* null, i32** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @free(i8* %36)
  store i32 0, i32* %3, align 4
  br label %58

38:                                               ; preds = %26
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @ifconfig_err_errtype(i32* %39)
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 129, label %43
  ]

41:                                               ; preds = %38
  %42 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %53

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @ifconfig_err_ioctlreq(i32* %44)
  %46 = load i32, i32* @SIOCIFDESTROY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  br label %53

51:                                               ; preds = %38
  %52 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %50, %41
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ifconfig_close(i32* %54)
  store i32* null, i32** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %31, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_destroy_interface(i32*, i8*) #1

declare dso_local i32 @ifconfig_close(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ifconfig_err_errtype(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @ifconfig_err_ioctlreq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
