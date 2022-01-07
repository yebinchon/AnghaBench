; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_utime.c_utime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_utime.c_utime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utimbuf = type { i32, i32 }
%struct.timeval = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utime(i8* %0, %struct.utimbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.utimbuf*, align 8
  %5 = alloca [2 x %struct.timeval], align 16
  %6 = alloca %struct.timeval*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.utimbuf* %1, %struct.utimbuf** %4, align 8
  %7 = load %struct.utimbuf*, %struct.utimbuf** %4, align 8
  %8 = icmp ne %struct.utimbuf* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.utimbuf*, %struct.utimbuf** %4, align 8
  %11 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.utimbuf*, %struct.utimbuf** %4, align 8
  %16 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 1
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 1
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i64 0, i64* %21, align 16
  %22 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i64 0, i64* %23, align 16
  %24 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0
  store %struct.timeval* %24, %struct.timeval** %6, align 8
  br label %26

25:                                               ; preds = %2
  store %struct.timeval* null, %struct.timeval** %6, align 8
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.timeval*, %struct.timeval** %6, align 8
  %29 = call i32 @utimes(i8* %27, %struct.timeval* %28)
  ret i32 %29
}

declare dso_local i32 @utimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
