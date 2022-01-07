; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/sysmon/extr_t_swwdog.c_testbody.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/sysmon/extr_t_swwdog.c_testbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdog_conf = type { i32, i8*, i32, i32, i32 }
%struct.wdog_mode = type { i32, i8*, i32, i32, i32 }

@WDOG_NAMESIZE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@tcount = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"open watchdog\00", align 1
@WDOGIOC_GWDOGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"can't fetch watchdog names\00", align 1
@WDOG_MODE_ETICKLE = common dso_local global i32 0, align 4
@WDOGIOC_SMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to set tickle\00", align 1
@WDOGIOC_TICKLE = common dso_local global i32 0, align 4
@WDOG_MODE_DISARMED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"staying alive\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"no watchdog registered!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @testbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testbody(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wdog_conf, align 8
  %6 = alloca %struct.wdog_mode, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @WDOG_NAMESIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @SIGUSR1, align 4
  %16 = load i32, i32* @sigcount, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = call i32 (...) @fork()
  store i32 %18, i32* %7, align 4
  switch i32 %18, label %22 [
    i32 0, label %19
    i32 -1, label %20
  ]

19:                                               ; preds = %1
  br label %32

20:                                               ; preds = %1
  %21 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %32

22:                                               ; preds = %1
  %23 = call i32 @wait(i32* %9)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ATF_REQUIRE_EQ(i32 %24, i32 %25)
  %27 = load i32, i32* @tcount, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ATF_REQUIRE_EQ(i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i32 %30

32:                                               ; preds = %20, %19
  %33 = call i32 (...) @rump_init()
  %34 = load i32, i32* @O_RDWR, align 4
  %35 = call i32 @rump_sys_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.wdog_conf, %struct.wdog_conf* %5, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.wdog_conf, %struct.wdog_conf* %5, i32 0, i32 1
  store i8* %14, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @WDOGIOC_GWDOGS, align 4
  %45 = call i32 (i32, i32, ...) @rump_sys_ioctl(i32 %43, i32 %44, %struct.wdog_conf* %5)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  %50 = getelementptr inbounds %struct.wdog_conf, %struct.wdog_conf* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.wdog_conf, %struct.wdog_conf* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = getelementptr inbounds %struct.wdog_mode, %struct.wdog_mode* %6, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.wdog_conf, %struct.wdog_conf* %5, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlcpy(i32 %60, i8* %62, i32 4)
  %64 = load i32, i32* @WDOG_MODE_ETICKLE, align 4
  %65 = getelementptr inbounds %struct.wdog_mode, %struct.wdog_mode* %6, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.wdog_mode, %struct.wdog_mode* %6, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @WDOGIOC_SMODE, align 4
  %69 = call i32 (i32, i32, ...) @rump_sys_ioctl(i32 %67, i32 %68, %struct.wdog_mode* %6)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %53
  %74 = call i32 @usleep(i32 400000)
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @WDOGIOC_TICKLE, align 4
  %80 = call i32 (i32, i32, ...) @rump_sys_ioctl(i32 %78, i32 %79)
  br label %87

81:                                               ; preds = %73
  %82 = load i32, i32* @WDOG_MODE_DISARMED, align 4
  %83 = getelementptr inbounds %struct.wdog_mode, %struct.wdog_mode* %6, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @WDOGIOC_SMODE, align 4
  %86 = call i32 (i32, i32, ...) @rump_sys_ioctl(i32 %84, i32 %85, %struct.wdog_mode* %6)
  br label %87

87:                                               ; preds = %81, %77
  %88 = call i32 (...) @getppid()
  %89 = load i32, i32* @SIGUSR1, align 4
  %90 = call i32 @kill(i32 %88, i32 %89)
  %91 = call i32 @sleep(i32 2)
  %92 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 (...) @getppid()
  %94 = load i32, i32* @SIGUSR1, align 4
  %95 = call i32 @kill(i32 %93, i32 %94)
  %96 = call i32 @_exit(i32 2) #4
  unreachable

97:                                               ; preds = %49
  %98 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i32 @_exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @atf_tc_fail_errno(i8*) #2

declare dso_local i32 @wait(i32*) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i32 @rump_init(...) #2

declare dso_local i32 @rump_sys_open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @rump_sys_ioctl(i32, i32, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @getppid(...) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
