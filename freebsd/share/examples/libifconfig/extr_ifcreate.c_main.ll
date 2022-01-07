; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifcreate.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifcreate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"Invalid number of arguments. Only one argument is accepted, and it should be the name of the interface to be created.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Requested interface name: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Successfully created interface '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"couldn't create socket. This shouldn't happen.\0A\00", align 1
@SIOCIFCREATE2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to create interface (SIOCIFCREATE2)\0A\00", align 1
@.str.6 = private unnamed_addr constant [176 x i8] c"This is a thorough example accommodating for temporary 'not implemented yet' errors. That's likely what happened now. If not, your guess is as good as mine. ;) Error code: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @errx(i32 %12, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = call i32* (...) @ifconfig_open()
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @errx(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %65

27:                                               ; preds = %14
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @ifconfig_create_interface(i32* %28, i8* %29, i8** %7)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @ifconfig_close(i32* %35)
  store i32* null, i32** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  store i32 0, i32* %3, align 4
  br label %65

41:                                               ; preds = %27
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ifconfig_err_errtype(i32* %42)
  switch i32 %43, label %54 [
    i32 128, label %44
    i32 129, label %46
  ]

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %58

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @ifconfig_err_ioctlreq(i32* %47)
  %49 = load i32, i32* @SIOCIFCREATE2, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %58

54:                                               ; preds = %41
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @ifconfig_err_errno(i32* %55)
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %53, %44
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @ifconfig_close(i32* %59)
  store i32* null, i32** %8, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @free(i8* %63)
  store i32 -1, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %32, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_create_interface(i32*, i8*, i8**) #1

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
