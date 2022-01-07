; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialogrc.c_parse_dialogrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialogrc.c_parse_dialogrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENV_DIALOGRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENV_HOME = common dso_local global i32 0, align 4
@DIALOGRC = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dialogrc_config = common dso_local global i32 0, align 4
@FIGPAR_BREAK_ON_EQUALS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"use_shadow\00", align 1
@use_shadow = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"use_colors\00", align 1
@use_colors = common dso_local global i32 0, align 4
@gauge_color = common dso_local global i8* null, align 8
@STR_BUFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"gauge_color\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_dialogrc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @ENV_DIALOGRC, align 4
  %13 = call i8* @getenv(i32 %12)
  store i8* %13, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @snprintf(i8* %11, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %74

24:                                               ; preds = %15, %0
  %25 = load i32, i32* @ENV_HOME, align 4
  %26 = call i8* @getenv(i32 %25)
  store i8* %26, i8** %2, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32, i32* @PATH_MAX, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @snprintf(i8* %11, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i64 @strlen(i8* %11)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %11, i64 %33
  store i8* %34, i8** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  store i8 47, i8* %50, align 1
  %52 = load i8*, i8** %2, align 8
  store i8 0, i8* %52, align 1
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %49, %43, %37, %28
  %56 = load i64, i64* %4, align 8
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %2, align 8
  %63 = load i32, i32* @PATH_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %4, align 8
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** @DIALOGRC, align 8
  %69 = call i32 @snprintf(i8* %62, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %61, %55
  br label %73

71:                                               ; preds = %24
  %72 = load i32, i32* @ENOENT, align 4
  store i32 %72, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %94

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %20
  %75 = load i32, i32* @dialogrc_config, align 4
  %76 = load i32, i32* @FIGPAR_BREAK_ON_EQUALS, align 4
  %77 = call i32 @parse_config(i32 %75, i8* %11, i32* null, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = call %struct.TYPE_4__* @dialogrc_config_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* @use_shadow, align 4
  %82 = call %struct.TYPE_4__* @dialogrc_config_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* @use_colors, align 4
  %86 = load i8*, i8** @gauge_color, align 8
  %87 = load i32, i32* @STR_BUFSIZE, align 4
  %88 = call %struct.TYPE_4__* @dialogrc_config_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %74, %71
  %95 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @parse_config(i32, i8*, i32*, i32) #2

declare dso_local %struct.TYPE_4__* @dialogrc_config_option(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
