; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s, %s\0A\00", align 1
@SSH_RELEASE = common dso_local global i8* null, align 8
@OPENSSL_VERSION_STRING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [194 x i8] c"usage: sshd [-46DdeiqTt] [-C connection_spec] [-c host_cert_file]\0A            [-E log_file] [-f config_file] [-g login_grace_time]\0A            [-h host_key_file] [-o option] [-p port] [-u len]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** @SSH_RELEASE, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %12 = load i8*, i8** @OPENSSL_VERSION_STRING, align 8
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11, i8* %12)
  br label %19

14:                                               ; preds = %3, %0
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @SSH_RELEASE, align 8
  %17 = load i8*, i8** @OPENSSL_VERSION_STRING, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
