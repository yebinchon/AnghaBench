; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_log.c_open_syslog.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_log.c_open_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct._heimdal_syslog_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@syslogvals = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@log_syslog = common dso_local global i32 0, align 4
@close_syslog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, i32, i32, i8*, i8*)* @open_syslog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_syslog(i32 %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._heimdal_syslog_data*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = call %struct._heimdal_syslog_data* @malloc(i32 4)
  store %struct._heimdal_syslog_data* %16, %struct._heimdal_syslog_data** %14, align 8
  %17 = load %struct._heimdal_syslog_data*, %struct._heimdal_syslog_data** %14, align 8
  %18 = icmp eq %struct._heimdal_syslog_data* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @krb5_set_error_message(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %7, align 4
  br label %66

25:                                               ; preds = %6
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @syslogvals, align 4
  %28 = call i32 @find_value(i8* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @LOG_ERR, align 4
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %15, align 4
  %35 = load %struct._heimdal_syslog_data*, %struct._heimdal_syslog_data** %14, align 8
  %36 = getelementptr inbounds %struct._heimdal_syslog_data, %struct._heimdal_syslog_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* @syslogvals, align 4
  %39 = call i32 @find_value(i8* %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @LOG_AUTH, align 4
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i32, i32* %15, align 4
  %46 = load %struct._heimdal_syslog_data*, %struct._heimdal_syslog_data** %14, align 8
  %47 = getelementptr inbounds %struct._heimdal_syslog_data, %struct._heimdal_syslog_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LOG_PID, align 4
  %54 = load i32, i32* @LOG_NDELAY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @roken_openlog(i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @log_syslog, align 4
  %63 = load i32, i32* @close_syslog, align 4
  %64 = load %struct._heimdal_syslog_data*, %struct._heimdal_syslog_data** %14, align 8
  %65 = call i32 @krb5_addlog_func(i32 %58, %struct.TYPE_4__* %59, i32 %60, i32 %61, i32 %62, i32 %63, %struct._heimdal_syslog_data* %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %44, %19
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct._heimdal_syslog_data* @malloc(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @find_value(i8*, i32) #1

declare dso_local i32 @roken_openlog(i32, i32, i32) #1

declare dso_local i32 @krb5_addlog_func(i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct._heimdal_syslog_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
