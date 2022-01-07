; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.vers.c_fix_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.vers.c_fix_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRMACHTYPE = common dso_local global i32 0, align 4
@STRVENDOR = common dso_local global i32 0, align 4
@STROSTYPE = common dso_local global i32 0, align 4
@STRunknown = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [86 x i8] c"tcsh %d.%.2d.%.2d (%s) %s (%S-%S-%S) options %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@REV = common dso_local global i32 0, align 4
@VERS = common dso_local global i32 0, align 4
@PATCHLEVEL = common dso_local global i32 0, align 4
@ORIGIN = common dso_local global i32 0, align 4
@DATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"7b\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xfree = common dso_local global i32 0, align 4
@STRversion = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%d.%.2d.%.2d\00", align 1
@STRtcsh = common dso_local global i32 0, align 4
@AFSSTR = common dso_local global i32 0, align 4
@ALSTR = common dso_local global i32 0, align 4
@BYESTR = common dso_local global i32 0, align 4
@CCATSTR = common dso_local global i32 0, align 4
@COLORSTR = common dso_local global i32 0, align 4
@DLSTR = common dso_local global i32 0, align 4
@DSPMSTR = common dso_local global i32 0, align 4
@DTRSTR = common dso_local global i32 0, align 4
@FILECSTR = common dso_local global i32 0, align 4
@HBSTR = common dso_local global i32 0, align 4
@KANSTR = common dso_local global i32 0, align 4
@LFSTR = common dso_local global i32 0, align 4
@LOCALSTR = common dso_local global i32 0, align 4
@NDSTR = common dso_local global i32 0, align 4
@NGSTR = common dso_local global i32 0, align 4
@NLSSTR = common dso_local global i32 0, align 4
@RHSTR = common dso_local global i32 0, align 4
@SMSTR = common dso_local global i32 0, align 4
@SSSTR = common dso_local global i32 0, align 4
@VISTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_version() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @STRMACHTYPE, align 4
  %6 = call i32* @tgetenv(i32 %5)
  store i32* %6, i32** %2, align 8
  %7 = load i32, i32* @STRVENDOR, align 4
  %8 = call i32* @tgetenv(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @STROSTYPE, align 4
  %10 = call i32* @tgetenv(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32*, i32** @STRunknown, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32*, i32** %2, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32*, i32** @STRunknown, align 8
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** @STRunknown, align 8
  store i32* %24, i32** %4, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @REV, align 4
  %27 = load i32, i32* @VERS, align 4
  %28 = load i32, i32* @PATCHLEVEL, align 4
  %29 = load i32, i32* @ORIGIN, align 4
  %30 = load i32, i32* @DATE, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* (i8*, i32, i32, i32, ...) @xasprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* %31, i32* %32, i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %1, align 8
  %35 = load i8*, i8** %1, align 8
  %36 = load i32, i32* @xfree, align 4
  %37 = call i32 @cleanup_push(i8* %35, i32 %36)
  %38 = load i32, i32* @STRversion, align 4
  %39 = load i8*, i8** %1, align 8
  %40 = call i32 @str2short(i8* %39)
  %41 = load i32, i32* @VAR_READWRITE, align 4
  %42 = call i32 @setcopy(i32 %38, i32 %40, i32 %41)
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @cleanup_until(i8* %43)
  %45 = load i32, i32* @REV, align 4
  %46 = load i32, i32* @VERS, align 4
  %47 = load i32, i32* @PATCHLEVEL, align 4
  %48 = call i8* (i8*, i32, i32, i32, ...) @xasprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  store i8* %48, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = load i32, i32* @xfree, align 4
  %51 = call i32 @cleanup_push(i8* %49, i32 %50)
  %52 = load i32, i32* @STRtcsh, align 4
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @str2short(i8* %53)
  %55 = load i32, i32* @VAR_READWRITE, align 4
  %56 = call i32 @setcopy(i32 %52, i32 %54, i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 @cleanup_until(i8* %57)
  ret void
}

declare dso_local i32* @tgetenv(i32) #1

declare dso_local i8* @xasprintf(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

declare dso_local i32 @str2short(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
