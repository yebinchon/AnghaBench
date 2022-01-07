; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_logcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_logcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@logging = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" = %jd bytes\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (wd: %s\00", align 1
@guest = common dso_local global i64 0, align 8
@dochroot = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"; chrooted\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64)* @logcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logcmd(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @logging, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %67

21:                                               ; preds = %4
  %22 = sub i64 %15, 1
  %23 = trunc i64 %22 to i32
  %24 = call i32* @getcwd(i8* %17, i32 %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @strcpy(i8* %17, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* %8, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %53 = load i64, i64* @guest, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @dochroot, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %51
  %59 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 (i8**, i8*, ...) @appendf(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* @LOG_INFO, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @syslog(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %60, %20
  %68 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %12, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @appendf(i8**, i8*, ...) #2

declare dso_local i32 @syslog(i32, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
