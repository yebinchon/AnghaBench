; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"audit_write()\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: au_open() failed\00", align 1
@kAUOpenErr = common dso_local global i32 0, align 4
@AU_TO_NO_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: write of subject failed\00", align 1
@kAUWriteSubjectTokErr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: write of caller token failed\00", align 1
@kAUWriteCallerTokErr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: au_to_return32() failed\00", align 1
@kAUMakeReturnTokErr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: write of return code failed\00", align 1
@kAUWriteReturnTokErr = common dso_local global i32 0, align 4
@AU_TO_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: au_close() failed\00", align 1
@kAUCloseErr = common dso_local global i32 0, align 4
@kAUNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_write(i16 signext %0, i32* %1, i32* %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i16 %0, i16* %7, align 2
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %15 = call i32 (...) @au_open()
  store i32 %15, i32* %12, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @au_free_token(i32* %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @au_free_token(i32* %20)
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @kAUOpenErr, align 4
  store i32 %25, i32* %6, align 4
  br label %109

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @au_write(i32 %30, i32* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @au_free_token(i32* %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @au_free_token(i32* %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @AU_TO_NO_WRITE, align 4
  %41 = load i16, i16* %7, align 2
  %42 = call i64 @au_close(i32 %39, i32 %40, i16 signext %41)
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @kAUWriteSubjectTokErr, align 4
  store i32 %46, i32* %6, align 4
  br label %109

47:                                               ; preds = %29, %26
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @au_write(i32 %51, i32* %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @au_free_token(i32* %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @AU_TO_NO_WRITE, align 4
  %60 = load i16, i16* %7, align 2
  %61 = call i64 @au_close(i32 %58, i32 %59, i16 signext %60)
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @syslog(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @kAUWriteCallerTokErr, align 4
  store i32 %65, i32* %6, align 4
  br label %109

66:                                               ; preds = %50, %47
  %67 = load i8, i8* %10, align 1
  %68 = load i32, i32* %11, align 4
  %69 = call i32* @au_to_return32(i8 signext %67, i32 %68)
  store i32* %69, i32** %14, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @AU_TO_NO_WRITE, align 4
  %74 = load i16, i16* %7, align 2
  %75 = call i64 @au_close(i32 %72, i32 %73, i16 signext %74)
  %76 = load i32, i32* @LOG_ERR, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @syslog(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @kAUMakeReturnTokErr, align 4
  store i32 %79, i32* %6, align 4
  br label %109

80:                                               ; preds = %66
  %81 = load i32, i32* %12, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @au_write(i32 %81, i32* %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @au_free_token(i32* %86)
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @AU_TO_NO_WRITE, align 4
  %90 = load i16, i16* %7, align 2
  %91 = call i64 @au_close(i32 %88, i32 %89, i16 signext %90)
  %92 = load i32, i32* @LOG_ERR, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @syslog(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @kAUWriteReturnTokErr, align 4
  store i32 %95, i32* %6, align 4
  br label %109

96:                                               ; preds = %80
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @AU_TO_WRITE, align 4
  %99 = load i16, i16* %7, align 2
  %100 = call i64 @au_close(i32 %97, i32 %98, i16 signext %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* @LOG_ERR, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @syslog(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @kAUCloseErr, align 4
  store i32 %106, i32* %6, align 4
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @kAUNoErr, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %102, %85, %71, %55, %34, %17
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @au_open(...) #1

declare dso_local i32 @au_free_token(i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @au_write(i32, i32*) #1

declare dso_local i64 @au_close(i32, i32, i16 signext) #1

declare dso_local i32* @au_to_return32(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
