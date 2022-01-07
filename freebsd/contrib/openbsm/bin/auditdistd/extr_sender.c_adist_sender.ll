; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_adist_sender.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_adist_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adist_config = type { i32 }
%struct.adist_host = type { i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"socketpair://\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Unable to create connection sockets between child and parent\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Unable to fork\00", align 1
@adcfg = common dso_local global %struct.adist_config* null, align 8
@adhost = common dso_local global %struct.adist_host* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"[%s] (%s) \00", align 1
@adist_trail = common dso_local global i32* null, align 8
@EX_OSFILE = common dso_local global i32 0, align 4
@ADIST_USER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"auditdistd: %s (%s)\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Privileges successfully dropped.\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Successfully connected to %s.\00", align 1
@guard_thread = common dso_local global i32 0, align 4
@send_thread = common dso_local global i32 0, align 4
@recv_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adist_sender(%struct.adist_config* %0, %struct.adist_host* %1) #0 {
  %3 = alloca %struct.adist_config*, align 8
  %4 = alloca %struct.adist_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adist_config* %0, %struct.adist_config** %3, align 8
  store %struct.adist_host* %1, %struct.adist_host** %4, align 8
  %10 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %11 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %10, i32 0, i32 6
  %12 = call i32 @proto_connect(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = call i32 @pjdlog_errno(i32 %15, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %122

17:                                               ; preds = %2
  %18 = call i32 (...) @fork()
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 @pjdlog_errno(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %25 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @proto_close(i32* %26)
  %28 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %29 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %28, i32 0, i32 6
  store i32* null, i32** %29, align 8
  br label %122

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %36 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  %38 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @proto_recv(i32* %39, i32* null, i32 0)
  br label %122

41:                                               ; preds = %30
  %42 = load %struct.adist_config*, %struct.adist_config** %3, align 8
  store %struct.adist_config* %42, %struct.adist_config** @adcfg, align 8
  %43 = load %struct.adist_host*, %struct.adist_host** %4, align 8
  store %struct.adist_host* %43, %struct.adist_host** @adhost, align 8
  %44 = call i32 (...) @pjdlog_mode_get()
  store i32 %44, i32* %8, align 4
  %45 = call i32 (...) @pjdlog_debug_get()
  store i32 %45, i32* %9, align 4
  %46 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %47 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @proto_send(i32* %48, i32* null, i32 0)
  %50 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %51 = call i32 @descriptors_cleanup(%struct.adist_host* %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pjdlog_init(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @pjdlog_debug_set(i32 %54)
  %56 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %57 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %60 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @role2str(i32 %61)
  %63 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %65 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @trail_new(i32 %66, i32 0)
  store i32* %67, i32** @adist_trail, align 8
  %68 = load i32*, i32** @adist_trail, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %41
  %71 = load i32, i32* @EX_OSFILE, align 4
  %72 = call i32 @exit(i32 %71) #3
  unreachable

73:                                               ; preds = %41
  %74 = load i32, i32* @ADIST_USER, align 4
  %75 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %76 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @role2str(i32 %77)
  %79 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %80 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @sandbox(i32 %74, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EX_CONFIG, align 4
  %86 = call i32 @exit(i32 %85) #3
  unreachable

87:                                               ; preds = %73
  %88 = call i32 (i8*, ...) @pjdlog_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32*, i32** @adist_trail, align 8
  %90 = call i32 @trail_dirfd(i32* %89)
  %91 = call i32 @wait_for_dir_init(i32 %90)
  %92 = call i32 (...) @init_environment()
  %93 = call i64 (...) @sender_connect()
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %97 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, ...) @pjdlog_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %87
  %101 = load %struct.adist_host*, %struct.adist_host** @adhost, align 8
  %102 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load i32, i32* @guard_thread, align 4
  %104 = call i32 @pthread_create(i32* %5, i32* null, i32 %103, i32* null)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @PJDLOG_ASSERT(i32 %107)
  %109 = load i32, i32* @send_thread, align 4
  %110 = call i32 @pthread_create(i32* %5, i32* null, i32 %109, i32* null)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @PJDLOG_ASSERT(i32 %113)
  %115 = load i32, i32* @recv_thread, align 4
  %116 = call i32 @pthread_create(i32* %5, i32* null, i32 %115, i32* null)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @PJDLOG_ASSERT(i32 %119)
  %121 = call i32 @read_thread(i32* null)
  br label %122

122:                                              ; preds = %100, %33, %21, %14
  ret void
}

declare dso_local i32 @proto_connect(i32*, i8*, i32, i32**) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @proto_close(i32*) #1

declare dso_local i32 @proto_recv(i32*, i32*, i32) #1

declare dso_local i32 @pjdlog_mode_get(...) #1

declare dso_local i32 @pjdlog_debug_get(...) #1

declare dso_local i32 @proto_send(i32*, i32*, i32) #1

declare dso_local i32 @descriptors_cleanup(%struct.adist_host*) #1

declare dso_local i32 @pjdlog_init(i32) #1

declare dso_local i32 @pjdlog_debug_set(i32) #1

declare dso_local i32 @pjdlog_prefix_set(i8*, i32, i32) #1

declare dso_local i32 @role2str(i32) #1

declare dso_local i32* @trail_new(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @sandbox(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @pjdlog_info(i8*, ...) #1

declare dso_local i32 @wait_for_dir_init(i32) #1

declare dso_local i32 @trail_dirfd(i32*) #1

declare dso_local i32 @init_environment(...) #1

declare dso_local i64 @sender_connect(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @read_thread(i32*) #1

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
