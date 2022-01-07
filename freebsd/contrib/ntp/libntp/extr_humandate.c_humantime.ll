; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_humandate.c_humantime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_humandate.c_humantime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"--:--:--\00", align 1
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @humantime(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.tm* @localtime(i32* %3)
  store %struct.tm* %6, %struct.tm** %5, align 8
  %7 = load %struct.tm*, %struct.tm** %5, align 8
  %8 = icmp ne %struct.tm* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @LIB_GETBUF(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @LIB_BUFLENGTH, align 4
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tm*, %struct.tm** %5, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %10, %9
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
