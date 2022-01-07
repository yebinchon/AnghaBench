; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-chall.c_auth2_challenge_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-chall.c_auth2_challenge_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32* (%struct.TYPE_9__*)*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"auth2_challenge_start: devices %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"auth2_challenge_start: trying authentication method '%s'\00", align 1
@SSH2_MSG_USERAUTH_INFO_RESPONSE = common dso_local global i32 0, align 4
@input_userauth_info_response = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*)* @auth2_challenge_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth2_challenge_start(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %6 = load %struct.ssh*, %struct.ssh** %3, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %20 ]
  %23 = call i32 @debug2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i64 @kbdint_next_device(%struct.TYPE_9__* %24, %struct.TYPE_8__* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.ssh*, %struct.ssh** %3, align 8
  %30 = call i32 @auth2_challenge_stop(%struct.ssh* %29)
  store i32 0, i32* %2, align 4
  br label %64

31:                                               ; preds = %21
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32* (%struct.TYPE_9__*)*, i32* (%struct.TYPE_9__*)** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32* %42(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = icmp eq i32* %44, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load %struct.ssh*, %struct.ssh** %3, align 8
  %50 = call i32 @auth2_challenge_stop(%struct.ssh* %49)
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %31
  %52 = load %struct.ssh*, %struct.ssh** %3, align 8
  %53 = call i64 @send_userauth_info_request(%struct.ssh* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.ssh*, %struct.ssh** %3, align 8
  %57 = call i32 @auth2_challenge_stop(%struct.ssh* %56)
  store i32 0, i32* %2, align 4
  br label %64

58:                                               ; preds = %51
  %59 = load %struct.ssh*, %struct.ssh** %3, align 8
  %60 = load i32, i32* @SSH2_MSG_USERAUTH_INFO_RESPONSE, align 4
  %61 = call i32 @ssh_dispatch_set(%struct.ssh* %59, i32 %60, i32* @input_userauth_info_response)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %55, %48, %28
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @debug2(i8*, i8*) #1

declare dso_local i64 @kbdint_next_device(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @auth2_challenge_stop(%struct.ssh*) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i64 @send_userauth_info_request(%struct.ssh*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
