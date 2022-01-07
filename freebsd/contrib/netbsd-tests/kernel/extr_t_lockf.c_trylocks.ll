; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_lockf.c_trylocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_lockf.c_trylocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i32, i32 }

@lockfile = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%d: start\0A\00", align 1
@nlocks = common dso_local global i32 0, align 4
@filesize = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@sleeptime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"usleep\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%d: done\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @trylocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trylocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.flock, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @getpid()
  %7 = call i32 @srand48(i32 %6)
  %8 = load i32, i32* @lockfile, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @open(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @lockfile, align 4
  %15 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %55, %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @nlocks, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = call i32 (...) @random_uint32()
  %25 = load i32, i32* @filesize, align 4
  %26 = srem i32 %24, %25
  %27 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 (...) @random_uint32()
  %29 = load i32, i32* @filesize, align 4
  %30 = srem i32 %28, %29
  %31 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = call i32 (...) @random_uint32()
  %33 = srem i32 %32, 3
  switch i32 %33, label %43 [
    i32 0, label %34
    i32 1, label %37
    i32 2, label %40
  ]

34:                                               ; preds = %23
  %35 = load i32, i32* @F_RDLCK, align 4
  %36 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  br label %43

37:                                               ; preds = %23
  %38 = load i32, i32* @F_WRLCK, align 4
  %39 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @F_UNLCK, align 4
  %42 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %23, %40, %37, %34
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @F_SETLKW, align 4
  %48 = call i32 @fcntl(i32 %46, i32 %47, %struct.flock* %5)
  %49 = load i32, i32* @sleeptime, align 4
  %50 = call i64 @usleep(i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @close(i32 %61)
  ret void
}

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @random_uint32(...) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i64 @usleep(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
