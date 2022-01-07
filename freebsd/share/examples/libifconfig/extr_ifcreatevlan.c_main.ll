; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifcreatevlan.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifcreatevlan.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Invalid number of arguments. Should provide exactly two arguments: PARENT_INTERFACE and VLAN_TAG.\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VLAN_TAG must be between 0 and %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Parent interface: %s\0AVLAN tag: %i\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Successfully created interface '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"couldn't create socket. This shouldn't happen.\0A\00", align 1
@SIOCIFCREATE2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to create interface (SIOCIFCREATE2)\0A\00", align 1
@.str.8 = private unnamed_addr constant [176 x i8] c"This is a thorough example accommodating for temporary 'not implemented yet' errors. That's likely what happened now. If not, your guess is as good as mine. ;) Error code: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = call i32 (i32, i8*, ...) @errx(i32 %14, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @USHRT_MAX, align 4
  %25 = call zeroext i16 @strtonum(i8* %23, i32 0, i32 %24, i8** %9)
  store i16 %25, i16* %8, align 2
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* @USHRT_MAX, align 4
  %30 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %16
  %32 = load i8*, i8** %6, align 8
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %34)
  %36 = call i32* (...) @ifconfig_open()
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 (i32, i8*, ...) @errx(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %81

42:                                               ; preds = %31
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i16, i16* %8, align 2
  %46 = call i64 @ifconfig_create_interface_vlan(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, i8* %44, i16 zeroext %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @ifconfig_close(i32* %51)
  store i32* null, i32** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @free(i8* %55)
  store i32 0, i32* %3, align 4
  br label %81

57:                                               ; preds = %42
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @ifconfig_err_errtype(i32* %58)
  switch i32 %59, label %70 [
    i32 128, label %60
    i32 129, label %62
  ]

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %74

62:                                               ; preds = %57
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @ifconfig_err_ioctlreq(i32* %63)
  %65 = load i32, i32* @SIOCIFCREATE2, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  br label %74

70:                                               ; preds = %57
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @ifconfig_err_errno(i32* %71)
  %73 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %69, %60
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @ifconfig_close(i32* %75)
  store i32* null, i32** %10, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @free(i8* %79)
  store i32 -1, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %48, %39
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local zeroext i16 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_create_interface_vlan(i32*, i8*, i8**, i8*, i16 zeroext) #1

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
