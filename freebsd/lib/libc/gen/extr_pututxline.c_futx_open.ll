; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_futx_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_futx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @futx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @futx_open(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @O_EXLOCK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_CLOEXEC, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @_open(i8* %7, i32 %14, i32 420)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %43

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @_fstat(i32 %20, %struct.stat* %5)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %26, 4
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @_close(i32 %30)
  %32 = load i32, i32* @EFTYPE, align 4
  store i32 %32, i32* @errno, align 4
  store i32* null, i32** %2, align 8
  br label %43

33:                                               ; preds = %23, %19
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @fdopen(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @_close(i32 %39)
  store i32* null, i32** %2, align 8
  br label %43

41:                                               ; preds = %33
  %42 = load i32*, i32** %4, align 8
  store i32* %42, i32** %2, align 8
  br label %43

43:                                               ; preds = %41, %38, %29, %18
  %44 = load i32*, i32** %2, align 8
  ret i32* %44
}

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i32 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
