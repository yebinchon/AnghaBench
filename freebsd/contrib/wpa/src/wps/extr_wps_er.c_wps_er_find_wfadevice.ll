; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_find_wfadevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_find_wfadevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"deviceType\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"WPS ER: Found deviceType '%s'\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"urn:schemas-wifialliance-org:device:WFADevice:1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @wps_er_find_wfadevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wps_er_find_wfadevice(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %49, %1
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @xml_next_tag(i8* %15, i8** %4, i8** %5, i8** %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %61

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @os_strncasecmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 47
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 62
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 6
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @isgraph(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %29
  br label %43

42:                                               ; preds = %35, %24, %19
  br label %14

43:                                               ; preds = %41
  %44 = load i8*, i8** %3, align 8
  %45 = call i8* @xml_get_first_item(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* null, i8** %2, align 8
  br label %61

49:                                               ; preds = %43
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @os_strcasecmp(i8* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @os_free(i8* %57)
  br label %9

59:                                               ; preds = %9
  %60 = load i8*, i8** %3, align 8
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %59, %48, %18
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i64 @xml_next_tag(i8*, i8**, i8**, i8**) #1

declare dso_local i32 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @isgraph(i8 signext) #1

declare dso_local i8* @xml_get_first_item(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
