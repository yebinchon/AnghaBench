; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstatd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstatd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@closedown = common dso_local global i32 0, align 4
@from_inetd = common dso_local global i64 0, align 8
@RSTATPROG = common dso_local global i32 0, align 4
@RSTATVERS_TIME = common dso_local global i32 0, align 4
@RSTATVERS_SWTCH = common dso_local global i32 0, align 4
@RSTATVERS_ORIG = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rpc.rstatd\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot create udp service.\00", align 1
@rstat_service = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to register (RSTATPROG, RSTATVERS_TIME, %s)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(inetd)\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"unable to register (RSTATPROG, RSTATVERS_SWTCH, %s)\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"unable to register (RSTATPROG, RSTATVERS_ORIG, %s)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* @closedown, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @closedown, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 20, i32* @closedown, align 4
  br label %21

21:                                               ; preds = %20, %17
  store i32 4, i32* %9, align 4
  %22 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %23 = call i64 @getsockname(i32 0, %struct.sockaddr* %22, i32* %9)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 0, i64* @from_inetd, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i64, i64* @from_inetd, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %26
  %30 = call i32 @daemon(i32 0, i32 0)
  %31 = load i32, i32* @RSTATPROG, align 4
  %32 = load i32, i32* @RSTATVERS_TIME, align 4
  %33 = call i32 @rpcb_unset(i32 %31, i32 %32, i32* null)
  %34 = load i32, i32* @RSTATPROG, align 4
  %35 = load i32, i32* @RSTATVERS_SWTCH, align 4
  %36 = call i32 @rpcb_unset(i32 %34, i32 %35, i32* null)
  %37 = load i32, i32* @RSTATPROG, align 4
  %38 = load i32, i32* @RSTATVERS_ORIG, align 4
  %39 = call i32 @rpcb_unset(i32 %37, i32 %38, i32* null)
  %40 = load i32, i32* @SIGINT, align 4
  %41 = load i32, i32* @cleanup, align 4
  %42 = call i32 @signal(i32 %40, i32 %41)
  %43 = load i32, i32* @SIGTERM, align 4
  %44 = load i32, i32* @cleanup, align 4
  %45 = call i32 @signal(i32 %43, i32 %44)
  %46 = load i32, i32* @SIGHUP, align 4
  %47 = load i32, i32* @cleanup, align 4
  %48 = call i32 @signal(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %29, %26
  %50 = load i32, i32* @LOG_CONS, align 4
  %51 = load i32, i32* @LOG_PID, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @LOG_DAEMON, align 4
  %54 = call i32 @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i64, i64* @from_inetd, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = call i32* @svc_tli_create(i32 0, i32* null, i32* null, i32 0, i32 0)
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = call i32 (i32, i8*, ...) @syslog(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @RSTATPROG, align 4
  %68 = load i32, i32* @RSTATVERS_TIME, align 4
  %69 = load i32, i32* @rstat_service, align 4
  %70 = call i32 @svc_reg(i32* %66, i32 %67, i32 %68, i32 %69, i32* null)
  store i32 %70, i32* %7, align 4
  br label %76

71:                                               ; preds = %49
  %72 = load i32, i32* @rstat_service, align 4
  %73 = load i32, i32* @RSTATPROG, align 4
  %74 = load i32, i32* @RSTATVERS_TIME, align 4
  %75 = call i32 @svc_create(i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load i64, i64* @from_inetd, align 8
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %86 = call i32 (i32, i8*, ...) @syslog(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %76
  %89 = load i64, i64* @from_inetd, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @RSTATPROG, align 4
  %94 = load i32, i32* @RSTATVERS_SWTCH, align 4
  %95 = load i32, i32* @rstat_service, align 4
  %96 = call i32 @svc_reg(i32* %92, i32 %93, i32 %94, i32 %95, i32* null)
  store i32 %96, i32* %7, align 4
  br label %102

97:                                               ; preds = %88
  %98 = load i32, i32* @rstat_service, align 4
  %99 = load i32, i32* @RSTATPROG, align 4
  %100 = load i32, i32* @RSTATVERS_SWTCH, align 4
  %101 = call i32 @svc_create(i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %97, %91
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @LOG_ERR, align 4
  %107 = load i64, i64* @from_inetd, align 8
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %112 = call i32 (i32, i8*, ...) @syslog(i32 %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %102
  %115 = load i64, i64* @from_inetd, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @RSTATPROG, align 4
  %120 = load i32, i32* @RSTATVERS_ORIG, align 4
  %121 = load i32, i32* @rstat_service, align 4
  %122 = call i32 @svc_reg(i32* %118, i32 %119, i32 %120, i32 %121, i32* null)
  store i32 %122, i32* %7, align 4
  br label %128

123:                                              ; preds = %114
  %124 = load i32, i32* @rstat_service, align 4
  %125 = load i32, i32* @RSTATPROG, align 4
  %126 = load i32, i32* @RSTATVERS_ORIG, align 4
  %127 = call i32 @svc_create(i32 %124, i32 %125, i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123, %117
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @LOG_ERR, align 4
  %133 = load i64, i64* @from_inetd, align 8
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %138 = call i32 (i32, i8*, ...) @syslog(i32 %132, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %128
  %141 = call i32 (...) @svc_run()
  %142 = load i32, i32* @LOG_ERR, align 4
  %143 = call i32 (i32, i8*, ...) @syslog(i32 %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %144 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @daemon(i32, i32) #1

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
