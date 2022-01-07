; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_logxfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_logxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@statfd = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"realpath failed on %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%.20s!%s!%s!%s!%jd!%ld\0A\00", align 1
@ident = common dso_local global i8* null, align 8
@remotehost = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @logxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logxfer(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = add nsw i32 %12, 1024
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i64, i64* @statfd, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %3
  %24 = call i32 @time(i64* %10)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32* @realpath(i8* %25, i8* %20)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @LOG_NOTICE, align 4
  %30 = call i32 @syslog(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %11, align 4
  br label %53

31:                                               ; preds = %23
  %32 = trunc i64 %14 to i32
  %33 = call i8* @ctime(i64* %10)
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = load i8*, i8** @ident, align 8
  %36 = load i8*, i8** @remotehost, align 8
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, %46
  %48 = call i32 @snprintf(i8* %16, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35, i8* %36, i8* %20, i32 %38, i64 %47)
  %49 = load i64, i64* @statfd, align 8
  %50 = call i32 @strlen(i8* %16)
  %51 = call i32 @write(i64 %49, i8* %16, i32 %50)
  br label %52

52:                                               ; preds = %31, %3
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @time(i64*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i64) #2

declare dso_local i8* @ctime(i64*) #2

declare dso_local i32 @write(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
