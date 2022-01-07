; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldconfig/extr_kldconfig.c_getpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldconfig/extr_kldconfig.c_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@modpath = common dso_local global i8* null, align 8
@miblen = common dso_local global i64 0, align 8
@mib = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"getting path: sysctl(%s) - size only\00", align 1
@pathctl = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"allocating %lu bytes for the path\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"getting path: sysctl(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getpath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i8*, i8** @modpath, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8*, i8** @modpath, align 8
  %7 = call i32 @free(i8* %6)
  store i8* null, i8** @modpath, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @miblen, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @getmib()
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @mib, align 4
  %15 = load i64, i64* @miblen, align 8
  %16 = call i32 @sysctl(i32 %14, i64 %15, i8* null, i64* %2, i32* null, i32 0)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @pathctl, align 8
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i64, i64* %2, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %1, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* @errno, align 4
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, 1
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @mib, align 4
  %33 = load i64, i64* @miblen, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @sysctl(i32 %32, i64 %33, i8* %34, i64* %2, i32* null, i32 0)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @pathctl, align 8
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i8*, i8** %1, align 8
  store i8* %41, i8** @modpath, align 8
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getmib(...) #1

declare dso_local i32 @sysctl(i32, i64, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
