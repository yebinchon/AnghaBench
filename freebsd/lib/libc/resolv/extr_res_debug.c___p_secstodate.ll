; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___p_secstodate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___p_secstodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@p_secstodate_output = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @p_secstodate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @p_secstodate_output, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %4, align 4
  %8 = call %struct.tm* @gmtime(i32* %4)
  store %struct.tm* %8, %struct.tm** %5, align 8
  %9 = load %struct.tm*, %struct.tm** %5, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1900
  store i32 %12, i32* %10, align 4
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.tm*, %struct.tm** %5, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tm*, %struct.tm** %5, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tm*, %struct.tm** %5, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tm*, %struct.tm** %5, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
