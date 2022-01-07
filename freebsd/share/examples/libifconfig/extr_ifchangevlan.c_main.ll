; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifchangevlan.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_ifchangevlan.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"Invalid number of arguments. Should provide exactly three arguments: INTERFACE, PARENT_INTERFACE and VLAN_TAG.\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VLAN_TAG must be between 0 and %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Interface: %s\0ANew VLAN tag: %i\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Successfully changed vlan tag.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"couldn't create socket. This shouldn't happen.\0A\00", align 1
@SIOCGETVLAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Target interface isn't a VLAN interface.\0A\00", align 1
@SIOCSETVLAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Couldn't change VLAN properties of interface.\0A\00", align 1
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
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = call i32 (i32, i8*, ...) @errx(i32 %14, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0))
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
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 3
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @USHRT_MAX, align 4
  %29 = call zeroext i16 @strtonum(i8* %27, i32 0, i32 %28, i8** %9)
  store i16 %29, i16* %8, align 2
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load i32, i32* @USHRT_MAX, align 4
  %34 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %16
  %36 = load i8*, i8** %6, align 8
  %37 = load i16, i16* %8, align 2
  %38 = zext i16 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %38)
  %40 = call i32* (...) @ifconfig_open()
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 (i32, i8*, ...) @errx(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %92

46:                                               ; preds = %35
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i16, i16* %8, align 2
  %51 = call i64 @ifconfig_set_vlantag(i32* %47, i8* %48, i8* %49, i16 zeroext %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ifconfig_close(i32* %55)
  store i32* null, i32** %10, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @free(i8* %59)
  store i32 0, i32* %3, align 4
  br label %92

61:                                               ; preds = %46
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @ifconfig_err_errtype(i32* %62)
  switch i32 %63, label %81 [
    i32 128, label %64
    i32 129, label %66
  ]

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %85

66:                                               ; preds = %61
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @ifconfig_err_ioctlreq(i32* %67)
  %69 = load i32, i32* @SIOCGETVLAN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @ifconfig_err_ioctlreq(i32* %74)
  %76 = load i32, i32* @SIOCSETVLAN, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  br label %85

81:                                               ; preds = %61
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @ifconfig_err_errno(i32* %82)
  %84 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %80, %64
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @ifconfig_close(i32* %86)
  store i32* null, i32** %10, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @free(i8* %90)
  store i32 -1, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %53, %43
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local zeroext i16 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_set_vlantag(i32*, i8*, i8*, i16 zeroext) #1

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
