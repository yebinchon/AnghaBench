; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_adist_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_adist_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adist_config = type { i32 }
%struct.adist_host = type { i32, i32, i32, i32, i32* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unable to fork\00", align 1
@adcfg = common dso_local global %struct.adist_config* null, align 8
@adhost = common dso_local global %struct.adist_host* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"[%s] (%s) \00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to set connection timeout\00", align 1
@ADIST_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"auditdistd: %s (%s)\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Privileges successfully dropped.\00", align 1
@recv_thread = common dso_local global i32 0, align 4
@disk_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adist_receiver(%struct.adist_config* %0, %struct.adist_host* %1) #0 {
  %3 = alloca %struct.adist_config*, align 8
  %4 = alloca %struct.adist_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adist_config* %0, %struct.adist_config** %3, align 8
  store %struct.adist_host* %1, %struct.adist_host** %4, align 8
  %11 = call i32 (...) @fork()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = call i32 @pjdlog_errno(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %18 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @proto_close(i32* %19)
  %21 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %22 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  br label %112

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %28 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @proto_close(i32* %29)
  %31 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %32 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %35 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %112

36:                                               ; preds = %23
  %37 = load %struct.adist_config*, %struct.adist_config** %3, align 8
  store %struct.adist_config* %37, %struct.adist_config** @adcfg, align 8
  %38 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  store %struct.adist_host* %38, %struct.adist_host** @adhost, align 8
  %39 = call i32 (...) @pjdlog_mode_get()
  store i32 %39, i32* %9, align 4
  %40 = call i32 (...) @pjdlog_debug_get()
  store i32 %40, i32* %10, align 4
  %41 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %42 = call i32 @descriptors_cleanup(%struct.adist_host* %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @pjdlog_init(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @pjdlog_debug_set(i32 %45)
  %47 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %48 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %51 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @role2str(i32 %52)
  %54 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53)
  %55 = call i64 @sigemptyset(i32* %5)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @PJDLOG_VERIFY(i32 %57)
  %59 = load i32, i32* @SIG_SETMASK, align 4
  %60 = call i64 @sigprocmask(i32 %59, i32* %5, i32* null)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @PJDLOG_VERIFY(i32 %62)
  %64 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %65 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.adist_config*, %struct.adist_config** @adcfg, align 8
  %68 = getelementptr inbounds %struct.adist_config, %struct.adist_config* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @proto_timeout(i32* %66, i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %36
  %73 = load i32, i32* @LOG_WARNING, align 4
  %74 = call i32 @pjdlog_errno(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %36
  %76 = call i32 (...) @init_environment()
  %77 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %78 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  %79 = call i32 (...) @receiver_directory_open()
  %80 = load i32, i32* @ADIST_USER, align 4
  %81 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %82 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @role2str(i32 %83)
  %85 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %86 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @sandbox(i32 %80, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load i32, i32* @EX_CONFIG, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable

93:                                               ; preds = %75
  %94 = call i32 @pjdlog_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 (...) @receiver_connect()
  %96 = load i32, i32* @recv_thread, align 4
  %97 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %98 = call i32 @pthread_create(i32* %6, i32* null, i32 %96, %struct.adist_host* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @PJDLOG_ASSERT(i32 %101)
  %103 = load i32, i32* @disk_thread, align 4
  %104 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %105 = call i32 @pthread_create(i32* %6, i32* null, i32 %103, %struct.adist_host* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @PJDLOG_ASSERT(i32 %108)
  %110 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %111 = call i32 @send_thread(%struct.adist_host* %110)
  br label %112

112:                                              ; preds = %93, %26, %14
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @proto_close(i32*) #1

declare dso_local i32 @pjdlog_mode_get(...) #1

declare dso_local i32 @pjdlog_debug_get(...) #1

declare dso_local i32 @descriptors_cleanup(%struct.adist_host*) #1

declare dso_local i32 @pjdlog_init(i32) #1

declare dso_local i32 @pjdlog_debug_set(i32) #1

declare dso_local i32 @pjdlog_prefix_set(i8*, i32, i32) #1

declare dso_local i32 @role2str(i32) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @proto_timeout(i32*, i32) #1

declare dso_local i32 @init_environment(...) #1

declare dso_local i32 @receiver_directory_open(...) #1

declare dso_local i64 @sandbox(i32, i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pjdlog_info(i8*) #1

declare dso_local i32 @receiver_connect(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.adist_host*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @send_thread(%struct.adist_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
