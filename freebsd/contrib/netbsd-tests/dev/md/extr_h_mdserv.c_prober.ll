; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/md/extr_h_mdserv.c_prober.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/md/extr_h_mdserv.c_prober.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rump_daemonize_done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @prober to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prober(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @rump_sys_open(i8* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %13 = call i32 @rump_sys_read(i32 %11, i8* %12, i32 4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %23 [
    i32 4, label %15
    i32 -1, label %16
  ]

15:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %25

16:                                               ; preds = %10
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @ENXIO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @usleep(i32 1000)
  br label %10

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %10, %22
  %24 = load i32, i32* @EPIPE, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rump_daemonize_done(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @REQUIRE(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %25
  ret i8* null
}

declare dso_local i32 @rump_sys_open(i8*, i32) #1

declare dso_local i32 @rump_sys_read(i32, i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @rump_daemonize_done(i32) #1

declare dso_local i32 @REQUIRE(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
