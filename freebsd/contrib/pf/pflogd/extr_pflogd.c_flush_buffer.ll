; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufpos = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Logging suspended: ftello: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Logging suspended: fwrite: %s\00", align 1
@buflen = common dso_local global i32 0, align 4
@bufleft = common dso_local global i32 0, align 4
@bufpkt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @bufpos, align 4
  %7 = load i32, i32* @buffer, align 4
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @ftello(i32* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = call i32 @set_suspended(i32 1)
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @logmsg(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 1, i32* %2, align 4
  br label %43

23:                                               ; preds = %12
  %24 = load i32, i32* @buffer, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fwrite(i32 %24, i32 %25, i32 1, i32* %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = call i32 @set_suspended(i32 1)
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 @logmsg(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fileno(i32* %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @ftruncate(i32 %36, i64 %37)
  store i32 1, i32* %2, align 4
  br label %43

39:                                               ; preds = %23
  %40 = call i32 @set_suspended(i32 0)
  %41 = load i32, i32* @buffer, align 4
  store i32 %41, i32* @bufpos, align 4
  %42 = load i32, i32* @buflen, align 4
  store i32 %42, i32* @bufleft, align 4
  store i64 0, i64* @bufpkt, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %29, %17, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @ftello(i32*) #1

declare dso_local i32 @set_suspended(i32) #1

declare dso_local i32 @logmsg(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @fileno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
