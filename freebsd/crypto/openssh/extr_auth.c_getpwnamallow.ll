; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_getpwnamallow.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_getpwnamallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.passwd = type { i32 }
%struct.connection_info = type { i8* }

@active_state = common dso_local global %struct.ssh* null, align 8
@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BLACKLIST_BAD_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid user %.100s from %.100s port %d\00", align 1
@SSH_INVALID_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @getpwnamallow(i8* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.connection_info*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %7, %struct.ssh** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 4
  %9 = call %struct.connection_info* @get_connection_info(i32 1, i32 %8)
  store %struct.connection_info* %9, %struct.connection_info** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.connection_info*, %struct.connection_info** %6, align 8
  %12 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.connection_info*, %struct.connection_info** %6, align 8
  %14 = call i32 @parse_server_match_config(%struct.TYPE_4__* @options, %struct.connection_info* %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 1), align 4
  %16 = call i32 @log_change_level(i32 %15)
  %17 = load %struct.ssh*, %struct.ssh** %4, align 8
  %18 = call i32 @process_permitopen(%struct.ssh* %17, %struct.TYPE_4__* @options)
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.passwd* @getpwnam(i8* %19)
  store %struct.passwd* %20, %struct.passwd** %5, align 8
  %21 = load %struct.passwd*, %struct.passwd** %5, align 8
  %22 = icmp eq %struct.passwd* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load i32, i32* @BLACKLIST_BAD_USER, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @BLACKLIST_NOTIFY(i32 %24, i8* %25)
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.ssh*, %struct.ssh** %4, align 8
  %29 = call i32 @ssh_remote_ipaddr(%struct.ssh* %28)
  %30 = load %struct.ssh*, %struct.ssh** %4, align 8
  %31 = call i32 @ssh_remote_port(%struct.ssh* %30)
  %32 = call i32 (i8*, i8*, i32, ...) @logit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29, i32 %31)
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %45

33:                                               ; preds = %1
  %34 = load %struct.passwd*, %struct.passwd** %5, align 8
  %35 = call i32 @allowed_user(%struct.passwd* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %45

38:                                               ; preds = %33
  %39 = load %struct.passwd*, %struct.passwd** %5, align 8
  %40 = icmp ne %struct.passwd* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.passwd*, %struct.passwd** %5, align 8
  %43 = call %struct.passwd* @pwcopy(%struct.passwd* %42)
  store %struct.passwd* %43, %struct.passwd** %2, align 8
  br label %45

44:                                               ; preds = %38
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %45

45:                                               ; preds = %44, %41, %37, %23
  %46 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %46
}

declare dso_local %struct.connection_info* @get_connection_info(i32, i32) #1

declare dso_local i32 @parse_server_match_config(%struct.TYPE_4__*, %struct.connection_info*) #1

declare dso_local i32 @log_change_level(i32) #1

declare dso_local i32 @process_permitopen(%struct.ssh*, %struct.TYPE_4__*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @BLACKLIST_NOTIFY(i32, i8*) #1

declare dso_local i32 @logit(i8*, i8*, i32, ...) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

declare dso_local i32 @allowed_user(%struct.passwd*) #1

declare dso_local %struct.passwd* @pwcopy(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
