; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_humandate.c_humanlogtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_humandate.c_humanlogtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"-- --- --:--:--\00", align 1
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%2d %s %02d:%02d:%02d\00", align 1
@months = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @humanlogtime() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = call i32 @time(i32* null)
  store i32 %5, i32* %3, align 4
  %6 = call %struct.tm* @localtime(i32* %3)
  store %struct.tm* %6, %struct.tm** %4, align 8
  %7 = load %struct.tm*, %struct.tm** %4, align 8
  %8 = icmp ne %struct.tm* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %35

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @LIB_GETBUF(i8* %11)
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @LIB_BUFLENGTH, align 4
  %15 = load %struct.tm*, %struct.tm** %4, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8**, i8*** @months, align 8
  %19 = load %struct.tm*, %struct.tm** %4, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.tm*, %struct.tm** %4, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tm*, %struct.tm** %4, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tm*, %struct.tm** %4, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* %23, i32 %26, i32 %29, i32 %32)
  %34 = load i8*, i8** %2, align 8
  store i8* %34, i8** %1, align 8
  br label %35

35:                                               ; preds = %10, %9
  %36 = load i8*, i8** %1, align 8
  ret i8* %36
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
