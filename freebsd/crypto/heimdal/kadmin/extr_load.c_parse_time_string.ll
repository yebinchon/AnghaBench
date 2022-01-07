; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_parse_time_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_parse_time_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @parse_time_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_time_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %20 = icmp ne i32 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %40

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1900
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = call i32 @timegm(%struct.tm* %12)
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %22, %21, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @timegm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
