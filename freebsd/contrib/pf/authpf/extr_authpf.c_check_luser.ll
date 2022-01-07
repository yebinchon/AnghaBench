; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_check_luser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_check_luser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"provided banned directory line too long (%s)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot open banned file %s (%s)\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"denied access to %s: %s exists\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\0A\0A-**- Sorry, you have been banned! -**-\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_luser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_luser(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = trunc i64 %12 to i32
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, %12
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

29:                                               ; preds = %21
  %30 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

37:                                               ; preds = %32
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load i64, i64* @errno, align 8
  %40 = call i8* @strerror(i64 %39)
  %41 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %14, i8* %40)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

42:                                               ; preds = %29
  %43 = load i32, i32* @LOG_INFO, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %14)
  %46 = trunc i64 %12 to i32
  %47 = call i32 @strlcpy(i8* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %70, %42
  %49 = load i32, i32* @stdout, align 4
  %50 = call i64 @fputs(i8* %14, i32 %49)
  %51 = load i64, i64* @EOF, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @feof(i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = trunc i64 %12 to i32
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @fgets(i8* %14, i32 %61, i32* %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fflush(i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

70:                                               ; preds = %60
  br label %48

71:                                               ; preds = %58
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @fclose(i32* %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %65, %37, %36, %25
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @fputs(i8*, i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
