; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_netrc_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_netrc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"NETRC\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NETRC=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"$NETRC specifies a file name longer than PATH_MAX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s/.netrc\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fetch_netrc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_netrc_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %0
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @DEBUGF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = trunc i64 %10 to i32
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @snprintf(i8* %12, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = trunc i64 %10 to i32
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @fetch_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %60

25:                                               ; preds = %15
  br label %48

26:                                               ; preds = %0
  %27 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = call i32 (...) @getuid()
  %31 = call %struct.passwd* @getpwuid(i32 %30)
  store %struct.passwd* %31, %struct.passwd** %2, align 8
  %32 = icmp eq %struct.passwd* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.passwd*, %struct.passwd** %2, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %29
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %60

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %26
  %41 = trunc i64 %10 to i32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @snprintf(i8* %12, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = trunc i64 %10 to i32
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %60

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = call i32 @open(i8* %12, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i8*, i8*, ...) @DEBUGF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %12, i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* @errno, align 4
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %46, %38, %23
  %61 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @DEBUGF(i8*, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @fetch_info(i8*) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
