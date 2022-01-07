; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldconfig/extr_kldconfig.c_setpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldconfig/extr_kldconfig.c_setpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathhead = type { i32 }

@miblen = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"building path string\00", align 1
@mib = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"setting path: sysctl(%s)\00", align 1
@pathctl = common dso_local global i32 0, align 4
@modpath = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pathhead*)* @setpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setpath(%struct.pathhead* %0) #0 {
  %2 = alloca %struct.pathhead*, align 8
  %3 = alloca i8*, align 8
  store %struct.pathhead* %0, %struct.pathhead** %2, align 8
  %4 = load i64, i64* @miblen, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @getmib()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.pathhead*, %struct.pathhead** %2, align 8
  %10 = call i8* @qstring(%struct.pathhead* %9)
  store i8* %10, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* @errno, align 4
  %14 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, i32* @mib, align 4
  %17 = load i64, i64* @miblen, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %20, 1
  %22 = call i32 @sysctl(i32 %16, i64 %17, i32* null, i32* null, i8* %18, i64 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @pathctl, align 4
  %26 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i8*, i8** @modpath, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** @modpath, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %3, align 8
  store i8* %34, i8** @modpath, align 8
  ret void
}

declare dso_local i32 @getmib(...) #1

declare dso_local i8* @qstring(%struct.pathhead*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @sysctl(i32, i64, i32*, i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
