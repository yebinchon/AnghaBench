; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_authenticated.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_authenticated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.ssh = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@auth_opts = common dso_local global %struct.TYPE_11__* null, align 8
@options = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FORWARD_LOCAL = common dso_local global i32 0, align 4
@FORWARD_REMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_authenticated(%struct.ssh* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @setproctitle(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @auth_opts, align 8
  %12 = call i32 @auth_log_authopts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %11, i32 0)
  %13 = load %struct.ssh*, %struct.ssh** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @auth_opts, align 8
  %15 = call i32 @set_fwdpermit_from_authopts(%struct.ssh* %13, %struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @auth_opts, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @options, i32 0, i32 1), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %2
  %24 = load %struct.ssh*, %struct.ssh** %3, align 8
  %25 = load i32, i32* @FORWARD_LOCAL, align 4
  %26 = call i32 @channel_disable_admin(%struct.ssh* %24, i32 %25)
  %27 = load %struct.ssh*, %struct.ssh** %3, align 8
  %28 = load i32, i32* @FORWARD_REMOTE, align 4
  %29 = call i32 @channel_disable_admin(%struct.ssh* %27, i32 %28)
  br label %57

30:                                               ; preds = %20
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @options, i32 0, i32 0), align 8
  %32 = load i32, i32* @FORWARD_LOCAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.ssh*, %struct.ssh** %3, align 8
  %37 = load i32, i32* @FORWARD_LOCAL, align 4
  %38 = call i32 @channel_disable_admin(%struct.ssh* %36, i32 %37)
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.ssh*, %struct.ssh** %3, align 8
  %41 = load i32, i32* @FORWARD_LOCAL, align 4
  %42 = call i32 @channel_permit_all(%struct.ssh* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @options, i32 0, i32 0), align 8
  %45 = load i32, i32* @FORWARD_REMOTE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.ssh*, %struct.ssh** %3, align 8
  %50 = load i32, i32* @FORWARD_REMOTE, align 4
  %51 = call i32 @channel_disable_admin(%struct.ssh* %49, i32 %50)
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.ssh*, %struct.ssh** %3, align 8
  %54 = load i32, i32* @FORWARD_REMOTE, align 4
  %55 = call i32 @channel_permit_all(%struct.ssh* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %23
  %58 = call i32 (...) @auth_debug_send()
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @prepare_auth_info_file(%struct.TYPE_12__* %61, i32 %64)
  %66 = load %struct.ssh*, %struct.ssh** %3, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = call i32 @do_authenticated2(%struct.ssh* %66, %struct.TYPE_10__* %67)
  %69 = load %struct.ssh*, %struct.ssh** %3, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = call i32 @do_cleanup(%struct.ssh* %69, %struct.TYPE_10__* %70)
  ret void
}

declare dso_local i32 @setproctitle(i8*, i32) #1

declare dso_local i32 @auth_log_authopts(i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_fwdpermit_from_authopts(%struct.ssh*, %struct.TYPE_11__*) #1

declare dso_local i32 @channel_disable_admin(%struct.ssh*, i32) #1

declare dso_local i32 @channel_permit_all(%struct.ssh*, i32) #1

declare dso_local i32 @auth_debug_send(...) #1

declare dso_local i32 @prepare_auth_info_file(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @do_authenticated2(%struct.ssh*, %struct.TYPE_10__*) #1

declare dso_local i32 @do_cleanup(%struct.ssh*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
