; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_move_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_move_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s.bad.%08x\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"[priv] new name too long\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"[priv] failed to create new name: %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"[priv] failed to rename %s to %s: %s\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"[priv]: log file %s moved to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @move_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_log(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  br label %13

13:                                               ; preds = %47, %1
  %14 = trunc i64 %10 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (...) @arc4random()
  %17 = call i32 @snprintf(i8* %12, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, %10
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 (i32, i8*, ...) @logmsg(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %62

24:                                               ; preds = %13
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = load i32, i32* @O_EXCL, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open(i8* %12, i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @close(i32 %32)
  br label %48

34:                                               ; preds = %24
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EEXIST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 @strerror(i64 %44)
  %46 = call i32 (i32, i8*, ...) @logmsg(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %62

47:                                               ; preds = %38, %34
  br label %13

48:                                               ; preds = %31
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @rename(i8* %49, i8* %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 (i32, i8*, ...) @logmsg(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %12, i32 %56)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @LOG_NOTICE, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 (i32, i8*, ...) @logmsg(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %60, i8* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %52, %42, %21
  %63 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @arc4random(...) #2

declare dso_local i32 @logmsg(i32, i8*, ...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i64 @rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
