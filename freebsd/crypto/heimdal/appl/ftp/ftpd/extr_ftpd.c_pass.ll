; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@logged_in = common dso_local global i64 0, align 8
@askpasswd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Password not necessary\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Login with USER first.\00", align 1
@guest = common dso_local global i32 0, align 4
@pw = common dso_local global %struct.TYPE_6__* null, align 8
@auth_level = common dso_local global i32 0, align 4
@AUTH_OTP = common dso_local global i32 0, align 4
@his_addr = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"unknown address\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Login incorrect.\00", align 1
@logging = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"FTP LOGIN FAILED FROM %s(%s), %s\00", align 1
@remotehost = common dso_local global i32 0, align 4
@curname = common dso_local global i32 0, align 4
@login_attempts = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"repeated login failures from %s(%s)\00", align 1
@otp_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @logged_in, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* @askpasswd, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @reply(i32 230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %92

12:                                               ; preds = %7, %1
  %13 = load i64, i64* @logged_in, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* @askpasswd, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12
  %19 = call i32 @reply(i32 503, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %92

20:                                               ; preds = %15
  store i64 0, i64* @askpasswd, align 8
  store i32 1, i32* %3, align 4
  %21 = load i32, i32* @guest, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %85, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pw, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %44

27:                                               ; preds = %23
  %28 = load i32, i32* @auth_level, align 4
  %29 = load i32, i32* @AUTH_OTP, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pw, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @unix_verify_user(i32 %38, i8* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %32
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i8*, i8** %2, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @memset(i8* %45, i32 0, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @his_addr, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @his_addr, align 8
  %56 = call i32 @socket_get_address(%struct.TYPE_5__* %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %58 = call i32* @inet_ntop(i32 %54, i32 %56, i8* %57, i32 256)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %62 = call i32 @strlcpy(i8* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 256)
  br label %63

63:                                               ; preds = %60, %51
  %64 = call i32 @reply(i32 530, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i64, i64* @logging, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @LOG_NOTICE, align 4
  %69 = load i32, i32* @remotehost, align 4
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %71 = load i32, i32* @curname, align 4
  %72 = call i32 (i32, i8*, i32, i8*, ...) @syslog(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %63
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @pw, align 8
  %74 = load i32, i32* @login_attempts, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @login_attempts, align 4
  %76 = icmp sge i32 %74, 5
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @LOG_NOTICE, align 4
  %79 = load i32, i32* @remotehost, align 4
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %81 = call i32 (i32, i8*, i32, i8*, ...) @syslog(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %79, i8* %80)
  %82 = call i32 @exit(i32 0) #3
  unreachable

83:                                               ; preds = %73
  br label %92

84:                                               ; preds = %44
  br label %85

85:                                               ; preds = %84, %20
  %86 = load i8*, i8** %2, align 8
  %87 = call i32 @do_login(i32 230, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %92

90:                                               ; preds = %85
  %91 = call i32 (...) @end_login()
  br label %92

92:                                               ; preds = %90, %89, %83, %18, %10
  ret void
}

declare dso_local i32 @reply(i32, i8*) #1

declare dso_local i32 @unix_verify_user(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @socket_get_address(%struct.TYPE_5__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @do_login(i32, i8*) #1

declare dso_local i32 @end_login(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
