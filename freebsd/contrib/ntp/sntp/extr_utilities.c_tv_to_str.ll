; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_tv_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_tv_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%d-%.2d-%.2d %.2d:%.2d:%.2d.%.6d (%+03d%02d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tv_to_str(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  store i64 48, i64* %3, align 8
  %11 = load %struct.timeval*, %struct.timeval** %2, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = call i32 @gmtime(i32* %5)
  %15 = call i32 @mktime(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = call %struct.tm* @localtime(i32* %5)
  store %struct.tm* %16, %struct.tm** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @difftime(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %20, 60
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sdiv i32 %22, 60
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = srem i32 %24, 60
  %26 = call i32 @abs(i32 %25) #3
  store i32 %26, i32* %9, align 4
  %27 = call i8* @emalloc(i64 48)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.tm*, %struct.tm** %7, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1900
  %33 = load %struct.tm*, %struct.tm** %7, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.tm*, %struct.tm** %7, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tm*, %struct.tm** %7, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tm*, %struct.tm** %7, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tm*, %struct.tm** %7, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.timeval*, %struct.timeval** %2, align 8
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @snprintf(i8* %28, i64 48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %52, i32 %53, i32 %54)
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i32 @mktime(i32) #1

declare dso_local i32 @gmtime(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @difftime(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
