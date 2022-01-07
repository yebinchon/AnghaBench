; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_time.c_isc_time_formattimestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_time.c_isc_time_formattimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@isc_time_formattimestamp.badtime = internal constant [25 x i8] c"99-Bad-9999 99:99:99.999\00", align 16
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dd-MMM-yyyy\00", align 1
@TIME_NOTIMEMARKER = common dso_local global i32 0, align 4
@TIME_FORCE24HOURFORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %s.%03u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_time_formattimestamp(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca [50 x i8], align 16
  %10 = alloca [50 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ugt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = call i64 @FileTimeToLocalFileTime(i32* %16, i32* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = call i64 @FileTimeToSystemTime(i32* %7, %struct.TYPE_8__* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %25 = call i32 @GetDateFormat(i32 %23, i32 0, %struct.TYPE_8__* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %24, i32 50)
  %26 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %27 = load i32, i32* @TIME_NOTIMEMARKER, align 4
  %28 = load i32, i32* @TIME_FORCE24HOURFORMAT, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %31 = call i32 @GetTimeFormat(i32 %26, i32 %29, %struct.TYPE_8__* %8, i32* null, i8* %30, i32 50)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35, i32 %37)
  br label %43

39:                                               ; preds = %19, %3
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @isc_time_formattimestamp.badtime, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %22
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @FileTimeToLocalFileTime(i32*, i32*) #1

declare dso_local i64 @FileTimeToSystemTime(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @GetDateFormat(i32, i32, %struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @GetTimeFormat(i32, i32, %struct.TYPE_8__*, i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
