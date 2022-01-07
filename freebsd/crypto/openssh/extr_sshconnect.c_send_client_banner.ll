; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_send_client_banner.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_send_client_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@client_version_string = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SSH-%d.%d-%.100s%s%s\0A\00", align 1
@PROTOCOL_MAJOR_2 = common dso_local global i32 0, align 4
@PROTOCOL_MINOR_2 = common dso_local global i32 0, align 4
@SSH_VERSION = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@vwrite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"write: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Local version string %.100s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @send_client_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_client_banner(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PROTOCOL_MAJOR_2, align 4
  %6 = load i32, i32* @PROTOCOL_MINOR_2, align 4
  %7 = load i32, i32* @SSH_VERSION, align 4
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %15 = call i32 @xasprintf(i32* @client_version_string, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i8* %13, i8* %14)
  %16 = load i32, i32* @vwrite, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @client_version_string, align 4
  %19 = load i32, i32* @client_version_string, align 4
  %20 = call i64 @strlen(i32 %19)
  %21 = call i64 @atomicio(i32 %16, i32 %17, i32 %18, i64 %20)
  %22 = load i32, i32* @client_version_string, align 4
  %23 = call i64 @strlen(i32 %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @client_version_string, align 4
  %31 = call i32 @chop(i32 %30)
  %32 = load i32, i32* @client_version_string, align 4
  %33 = call i32 @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @xasprintf(i32*, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i64 @atomicio(i32, i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @chop(i32) #1

declare dso_local i32 @debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
