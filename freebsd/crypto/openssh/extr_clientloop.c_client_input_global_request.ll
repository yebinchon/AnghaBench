; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_input_global_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_input_global_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"client_input_global_request: rtype %s want_reply %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"hostkeys-00@openssh.com\00", align 1
@SSH2_MSG_REQUEST_SUCCESS = common dso_local global i32 0, align 4
@SSH2_MSG_REQUEST_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @client_input_global_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_input_global_request(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = call i8* @packet_get_cstring(i32* null)
  store i8* %10, i8** %7, align 8
  %11 = call i32 (...) @packet_get_char()
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @client_input_hostkeys()
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @SSH2_MSG_REQUEST_SUCCESS, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @SSH2_MSG_REQUEST_FAILURE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @packet_start(i32 %31)
  %33 = call i32 (...) @packet_send()
  %34 = call i32 (...) @packet_write_wait()
  br label %35

35:                                               ; preds = %30, %20
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @free(i8* %36)
  ret i32 0
}

declare dso_local i8* @packet_get_cstring(i32*) #1

declare dso_local i32 @packet_get_char(...) #1

declare dso_local i32 @debug(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @client_input_hostkeys(...) #1

declare dso_local i32 @packet_start(i32) #1

declare dso_local i32 @packet_send(...) #1

declare dso_local i32 @packet_write_wait(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
