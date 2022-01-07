; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpsnmpd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpsnmpd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntpsnmpdOptions = common dso_local global i32 0, align 4
@NOFORK = common dso_local global i32 0, align 4
@SYSLOG = common dso_local global i32 0, align 4
@NETSNMP_DS_APPLICATION_ID = common dso_local global i32 0, align 4
@NETSNMP_DS_AGENT_ROLE = common dso_local global i32 0, align 4
@SOCK_STARTUP = common dso_local global i32 0, align 4
@NETSNMP_DS_AGENT_X_SOCKET = common dso_local global i32 0, align 4
@AGENTXSOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ntpsnmpd\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error: Could not connect to ntpd. Aborting.\0A\00", align 1
@keep_running = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@stop_server = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"ntpsnmpd started.\0A\00", align 1
@SOCK_CLEANUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @optionProcess(i32* @ntpsnmpdOptions, i32 %9, i8** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8** %18, i8*** %5, align 8
  %19 = load i32, i32* @NOFORK, align 4
  %20 = call i32 @HAVE_OPT(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @SYSLOG, align 4
  %25 = call i32 @HAVE_OPT(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @snmp_enable_calllog()
  br label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @snmp_enable_stderrlog()
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* @NETSNMP_DS_APPLICATION_ID, align 4
  %37 = load i32, i32* @NETSNMP_DS_AGENT_ROLE, align 4
  %38 = call i32 @netsnmp_ds_set_boolean(i32 %36, i32 %37, i32 1)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @netsnmp_daemonize(i32 1, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %41, %35
  %51 = load i32, i32* @SOCK_STARTUP, align 4
  %52 = load i32, i32* @NETSNMP_DS_APPLICATION_ID, align 4
  %53 = load i32, i32* @NETSNMP_DS_AGENT_X_SOCKET, align 4
  %54 = load i32, i32* @AGENTXSOCKET, align 4
  %55 = call i32 @OPT_ARG(i32 %54)
  %56 = call i32 @netsnmp_ds_set_string(i32 %52, i32 %53, i32 %55)
  %57 = call i32 @init_agent(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %58 = call i64 @ntpq_openhost(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %50
  %65 = call i32 (...) @init_ntpSnmpSubagentObject()
  %66 = call i32 @init_snmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @keep_running, align 4
  %67 = load i32, i32* @SIGTERM, align 4
  %68 = load i32, i32* @stop_server, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  %70 = load i32, i32* @SIGINT, align 4
  %71 = load i32, i32* @stop_server, align 4
  %72 = call i32 @signal(i32 %70, i32 %71)
  %73 = load i32, i32* @LOG_INFO, align 4
  %74 = call i32 @snmp_log(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %78, %64
  %76 = load i32, i32* @keep_running, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @agent_check_and_process(i32 1)
  br label %75

80:                                               ; preds = %75
  %81 = call i32 (...) @ntpq_closehost()
  %82 = call i32 @snmp_shutdown(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @SOCK_CLEANUP, align 4
  ret i32 0
}

declare dso_local i32 @optionProcess(i32*, i32, i8**) #1

declare dso_local i32 @HAVE_OPT(i32) #1

declare dso_local i32 @snmp_enable_calllog(...) #1

declare dso_local i32 @snmp_enable_stderrlog(...) #1

declare dso_local i32 @netsnmp_ds_set_boolean(i32, i32, i32) #1

declare dso_local i64 @netsnmp_daemonize(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @netsnmp_ds_set_string(i32, i32, i32) #1

declare dso_local i32 @OPT_ARG(i32) #1

declare dso_local i32 @init_agent(i8*) #1

declare dso_local i64 @ntpq_openhost(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @init_ntpSnmpSubagentObject(...) #1

declare dso_local i32 @init_snmp(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @snmp_log(i32, i8*) #1

declare dso_local i32 @agent_check_and_process(i32) #1

declare dso_local i32 @ntpq_closehost(...) #1

declare dso_local i32 @snmp_shutdown(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
