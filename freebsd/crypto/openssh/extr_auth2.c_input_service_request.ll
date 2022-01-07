; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_input_service_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_input_service_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"input_service_request: no authctxt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ssh-userauth\00", align 1
@SSH2_MSG_USERAUTH_REQUEST = common dso_local global i32 0, align 4
@input_userauth_request = common dso_local global i32 0, align 4
@SSH2_MSG_SERVICE_ACCEPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"bad service request %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_service_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_service_request(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %11 = load %struct.ssh*, %struct.ssh** %6, align 8
  %12 = getelementptr inbounds %struct.ssh, %struct.ssh* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = call i8* @packet_get_cstring(i32* %8)
  store i8* %14, i8** %10, align 8
  %15 = call i32 (...) @packet_check_eom()
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  %30 = load %struct.ssh*, %struct.ssh** %6, align 8
  %31 = load i32, i32* @SSH2_MSG_USERAUTH_REQUEST, align 4
  %32 = call i32 @ssh_dispatch_set(%struct.ssh* %30, i32 %31, i32* @input_userauth_request)
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @SSH2_MSG_SERVICE_ACCEPT, align 4
  %39 = call i32 @packet_start(i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @packet_put_cstring(i8* %40)
  %42 = call i32 (...) @packet_send()
  %43 = call i32 (...) @packet_write_wait()
  br label %49

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @packet_disconnect(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  ret i32 0
}

declare dso_local i8* @packet_get_cstring(i32*) #1

declare dso_local i32 @packet_check_eom(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

declare dso_local i32 @packet_start(i32) #1

declare dso_local i32 @packet_put_cstring(i8*) #1

declare dso_local i32 @packet_send(...) #1

declare dso_local i32 @packet_write_wait(...) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @packet_disconnect(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
