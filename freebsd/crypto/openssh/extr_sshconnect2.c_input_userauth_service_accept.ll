; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_service_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_input_userauth_service_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"service_accept: %s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"buggy server: service_accept w/o service\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SSH2_MSG_SERVICE_ACCEPT received\00", align 1
@SSH2_MSG_EXT_INFO = common dso_local global i32 0, align 4
@input_userauth_error = common dso_local global i32 0, align 4
@SSH2_MSG_USERAUTH_SUCCESS = common dso_local global i32 0, align 4
@input_userauth_success = common dso_local global i32 0, align 4
@SSH2_MSG_USERAUTH_FAILURE = common dso_local global i32 0, align 4
@input_userauth_failure = common dso_local global i32 0, align 4
@SSH2_MSG_USERAUTH_BANNER = common dso_local global i32 0, align 4
@input_userauth_banner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_userauth_service_accept(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %10 = load %struct.ssh*, %struct.ssh** %6, align 8
  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.ssh*, %struct.ssh** %6, align 8
  %14 = call i64 @ssh_packet_remaining(%struct.ssh* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.ssh*, %struct.ssh** %6, align 8
  %18 = call i32 @sshpkt_get_cstring(%struct.ssh* %17, i8** %9, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %49

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @free(i8* %24)
  br label %28

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.ssh*, %struct.ssh** %6, align 8
  %30 = call i32 @sshpkt_get_end(%struct.ssh* %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %49

33:                                               ; preds = %28
  %34 = call i32 @debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @userauth_none(i32* %35)
  %37 = load %struct.ssh*, %struct.ssh** %6, align 8
  %38 = load i32, i32* @SSH2_MSG_EXT_INFO, align 4
  %39 = call i32 @ssh_dispatch_set(%struct.ssh* %37, i32 %38, i32* @input_userauth_error)
  %40 = load %struct.ssh*, %struct.ssh** %6, align 8
  %41 = load i32, i32* @SSH2_MSG_USERAUTH_SUCCESS, align 4
  %42 = call i32 @ssh_dispatch_set(%struct.ssh* %40, i32 %41, i32* @input_userauth_success)
  %43 = load %struct.ssh*, %struct.ssh** %6, align 8
  %44 = load i32, i32* @SSH2_MSG_USERAUTH_FAILURE, align 4
  %45 = call i32 @ssh_dispatch_set(%struct.ssh* %43, i32 %44, i32* @input_userauth_failure)
  %46 = load %struct.ssh*, %struct.ssh** %6, align 8
  %47 = load i32, i32* @SSH2_MSG_USERAUTH_BANNER, align 4
  %48 = call i32 @ssh_dispatch_set(%struct.ssh* %46, i32 %47, i32* @input_userauth_banner)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %33, %32, %20
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i64 @ssh_packet_remaining(%struct.ssh*) #1

declare dso_local i32 @sshpkt_get_cstring(%struct.ssh*, i8**, i32*) #1

declare dso_local i32 @debug2(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @userauth_none(i32*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
