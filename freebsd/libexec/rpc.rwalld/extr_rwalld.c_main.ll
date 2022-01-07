; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rwalld/extr_rwalld.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rwalld/extr_rwalld.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.passwd = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@nodaemon = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@from_inetd = common dso_local global i64 0, align 8
@WALLPROG = common dso_local global i32 0, align 4
@WALLVERS = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@killkids = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rpc.rwalld\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't create udp service.\00", align 1
@wallprog_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"unable to register (WALLPROG, WALLVERS, %s)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"(inetd)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 1, i32* @nodaemon, align 4
  br label %20

20:                                               ; preds = %19, %13, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @nodaemon, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %23, %20
  %29 = call i64 (...) @geteuid()
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.passwd* %32, %struct.passwd** %10, align 8
  %33 = load %struct.passwd*, %struct.passwd** %10, align 8
  %34 = icmp ne %struct.passwd* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.passwd*, %struct.passwd** %10, align 8
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @setuid(i32 %38)
  br label %43

40:                                               ; preds = %31
  %41 = call i32 (...) @getuid()
  %42 = call i32 @setuid(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %28
  store i32 4, i32* %7, align 4
  %45 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %46 = call i64 @getsockname(i32 0, %struct.sockaddr* %45, i32* %7)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 0, i64* @from_inetd, align 8
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i64, i64* @from_inetd, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @nodaemon, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 (...) @possess()
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* @WALLPROG, align 4
  %59 = load i32, i32* @WALLVERS, align 4
  %60 = call i32 @rpcb_unset(i32 %58, i32 %59, i32* null)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i32, i32* @SIGCHLD, align 4
  %63 = load i32, i32* @killkids, align 4
  %64 = call i32 @signal(i32 %62, i32 %63)
  %65 = load i32, i32* @LOG_CONS, align 4
  %66 = load i32, i32* @LOG_PID, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @LOG_DAEMON, align 4
  %69 = call i32 @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i64, i64* @from_inetd, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %61
  %73 = call i32* @svc_tli_create(i32 0, i32* null, i32* null, i32 0, i32 0)
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @LOG_ERR, align 4
  %78 = call i32 (i32, i8*, ...) @syslog(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @WALLPROG, align 4
  %83 = load i32, i32* @WALLVERS, align 4
  %84 = load i32, i32* @wallprog_1, align 4
  %85 = call i32 @svc_reg(i32* %81, i32 %82, i32 %83, i32 %84, i32* null)
  store i32 %85, i32* %8, align 4
  br label %91

86:                                               ; preds = %61
  %87 = load i32, i32* @wallprog_1, align 4
  %88 = load i32, i32* @WALLPROG, align 4
  %89 = load i32, i32* @WALLVERS, align 4
  %90 = call i32 @svc_create(i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = load i64, i64* @from_inetd, align 8
  %97 = icmp ne i64 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %101 = call i32 (i32, i8*, ...) @syslog(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %91
  %104 = call i32 (...) @svc_run()
  %105 = load i32, i32* @LOG_ERR, align 4
  %106 = call i32 (i32, i8*, ...) @syslog(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %107 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @possess(...) #1

declare dso_local i32 @rpcb_unset(i32, i32, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32* @svc_tli_create(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @svc_reg(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svc_create(i32, i32, i32, i8*) #1

declare dso_local i32 @svc_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
