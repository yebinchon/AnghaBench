; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_time.c_isc_time_formathttptimestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_time.c_isc_time_formathttptimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ddd',', dd-MMM-yyyy\00", align 1
@TIME_NOTIMEMARKER = common dso_local global i32 0, align 4
@TIME_FORCE24HOURFORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hh':'mm':'ss\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s %s GMT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_time_formathttptimestamp(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [50 x i8], align 16
  %9 = alloca [50 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i64 @FileTimeToSystemTime(i32* %15, i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %20 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %21 = call i32 @GetDateFormat(i32 %19, i32 0, i32* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %20, i32 50)
  %22 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %23 = load i32, i32* @TIME_NOTIMEMARKER, align 4
  %24 = load i32, i32* @TIME_FORCE24HOURFORMAT, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %27 = call i32 @GetTimeFormat(i32 %22, i32 %25, i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 50)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %32 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %30, i8* %31)
  br label %36

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %33, %18
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @FileTimeToSystemTime(i32*, i32*) #1

declare dso_local i32 @GetDateFormat(i32, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @GetTimeFormat(i32, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
