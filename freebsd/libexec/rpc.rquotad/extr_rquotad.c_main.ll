; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@debug = common dso_local global i32 0, align 4
@from_inetd = common dso_local global i64 0, align 8
@RQUOTAPROG = common dso_local global i32 0, align 4
@RQUOTAVERS = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rpc.rquotad\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't create udp service.\00", align 1
@rquota_service_1 = common dso_local global i32 0, align 4
@EXT_RQUOTAVERS = common dso_local global i32 0, align 4
@rquota_service_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"unable to register (RQUOTAPROG, %s, %s)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"RQUOTAVERS\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"EXT_RQUOTAVERS\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(inetd)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %22 [
    i32 100, label %19
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @debug, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @debug, align 4
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %19
  br label %12

24:                                               ; preds = %12
  store i32 4, i32* %9, align 4
  %25 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %26 = call i64 @getsockname(i32 0, %struct.sockaddr* %25, i32* %9)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* @from_inetd, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i64, i64* @from_inetd, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @debug, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @daemon(i32 0, i32 0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* @RQUOTAPROG, align 4
  %39 = load i32, i32* @RQUOTAVERS, align 4
  %40 = call i32 @rpcb_unset(i32 %38, i32 %39, i32* null)
  %41 = load i32, i32* @SIGINT, align 4
  %42 = load i32, i32* @cleanup, align 4
  %43 = call i32 @signal(i32 %41, i32 %42)
  %44 = load i32, i32* @SIGTERM, align 4
  %45 = load i32, i32* @cleanup, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  %47 = load i32, i32* @SIGHUP, align 4
  %48 = load i32, i32* @cleanup, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %37, %29
  %51 = load i32, i32* @LOG_CONS, align 4
  %52 = load i32, i32* @LOG_PID, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @LOG_DAEMON, align 4
  %55 = call i32 @openlog(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i64, i64* @from_inetd, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = call i32* @svc_tli_create(i32 0, i32* null, i32* null, i32 0, i32 0)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @LOG_ERR, align 4
  %64 = call i32 (i32, i8*, ...) @syslog(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %58
  %67 = load i32, i32* @RQUOTAVERS, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @RQUOTAPROG, align 4
  %70 = load i32, i32* @RQUOTAVERS, align 4
  %71 = load i32, i32* @rquota_service_1, align 4
  %72 = call i32 @svc_reg(i32* %68, i32 %69, i32 %70, i32 %71, i32* null)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i32, i32* @EXT_RQUOTAVERS, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @RQUOTAPROG, align 4
  %79 = load i32, i32* @EXT_RQUOTAVERS, align 4
  %80 = load i32, i32* @rquota_service_2, align 4
  %81 = call i32 @svc_reg(i32* %77, i32 %78, i32 %79, i32 %80, i32* null)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %75, %66
  br label %98

83:                                               ; preds = %50
  %84 = load i32, i32* @RQUOTAVERS, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @rquota_service_1, align 4
  %86 = load i32, i32* @RQUOTAPROG, align 4
  %87 = load i32, i32* @RQUOTAVERS, align 4
  %88 = call i32 @svc_create(i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load i32, i32* @EXT_RQUOTAVERS, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @rquota_service_2, align 4
  %94 = load i32, i32* @RQUOTAPROG, align 4
  %95 = load i32, i32* @EXT_RQUOTAVERS, align 4
  %96 = call i32 @svc_create(i32 %93, i32 %94, i32 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %91, %83
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @RQUOTAVERS, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)
  %108 = load i64, i64* @from_inetd, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %112 = call i32 (i32, i8*, ...) @syslog(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %107, i8* %111)
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %98
  %115 = call i32 (...) @svc_run()
  %116 = load i32, i32* @LOG_ERR, align 4
  %117 = call i32 (i32, i8*, ...) @syslog(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %118 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

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
