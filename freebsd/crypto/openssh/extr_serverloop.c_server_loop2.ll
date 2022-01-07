; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_loop2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_loop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Entering interactive session for SSH2.\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@sigchld_handler = common dso_local global i32 0, align 4
@child_terminated = common dso_local global i64 0, align 8
@use_privsep = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@notify_pipe = common dso_local global i32* null, align 8
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@received_sigterm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Exiting on signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_loop2(%struct.ssh* %0, i32* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = call i32 @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @SIGCHLD, align 4
  %14 = load i32, i32* @sigchld_handler, align 4
  %15 = call i32 @signal(i32 %13, i32 %14)
  store i64 0, i64* @child_terminated, align 8
  %16 = call i32 (...) @packet_get_connection_in()
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @packet_get_connection_out()
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @use_privsep, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @SIGTERM, align 4
  %22 = load i32, i32* @sigterm_handler, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = load i32, i32* @SIGINT, align 4
  %25 = load i32, i32* @sigterm_handler, align 4
  %26 = call i32 @signal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGQUIT, align 4
  %28 = load i32, i32* @sigterm_handler, align 4
  %29 = call i32 @signal(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %2
  %31 = call i32 (...) @notify_setup()
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @MAXIMUM(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** @notify_pipe, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MAXIMUM(i32 %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = call i32 (...) @server_init_dispatch()
  br label %41

41:                                               ; preds = %95, %30
  %42 = load %struct.ssh*, %struct.ssh** %3, align 8
  %43 = call i32 @process_buffered_input_packets(%struct.ssh* %42)
  %44 = load %struct.ssh*, %struct.ssh** %3, align 8
  %45 = call i32 @ssh_packet_is_rekeying(%struct.ssh* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = call i64 (...) @packet_not_very_much_data_to_write()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.ssh*, %struct.ssh** %3, align 8
  %52 = call i32 @channel_output_poll(%struct.ssh* %51)
  br label %53

53:                                               ; preds = %50, %47, %41
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.ssh*, %struct.ssh** %3, align 8
  %58 = call i32 @ssh_packet_is_rekeying(%struct.ssh* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = call i32 (...) @packet_get_rekey_timeout()
  %62 = mul nsw i32 %61, 1000
  store i32 %62, i32* %11, align 4
  br label %64

63:                                               ; preds = %56, %53
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load %struct.ssh*, %struct.ssh** %3, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @wait_until_can_do_something(%struct.ssh* %65, i32 %66, i32 %67, i32** %5, i32** %6, i32* %7, i32* %8, i32 %68)
  %70 = load i64, i64* @received_sigterm, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i64, i64* @received_sigterm, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @logit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i32 @cleanup_exit(i32 255)
  br label %77

77:                                               ; preds = %72, %64
  %78 = load %struct.ssh*, %struct.ssh** %3, align 8
  %79 = call i32 @collect_children(%struct.ssh* %78)
  %80 = load %struct.ssh*, %struct.ssh** %3, align 8
  %81 = call i32 @ssh_packet_is_rekeying(%struct.ssh* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load %struct.ssh*, %struct.ssh** %3, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @channel_after_select(%struct.ssh* %84, i32* %85, i32* %86)
  br label %88

88:                                               ; preds = %83, %77
  %89 = load %struct.ssh*, %struct.ssh** %3, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @process_input(%struct.ssh* %89, i32* %90, i32 %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %99

95:                                               ; preds = %88
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @process_output(i32* %96, i32 %97)
  br label %41

99:                                               ; preds = %94
  %100 = load %struct.ssh*, %struct.ssh** %3, align 8
  %101 = call i32 @collect_children(%struct.ssh* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @free(i32* %102)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @free(i32* %104)
  %106 = load %struct.ssh*, %struct.ssh** %3, align 8
  %107 = call i32 @channel_free_all(%struct.ssh* %106)
  %108 = load %struct.ssh*, %struct.ssh** %3, align 8
  %109 = call i32 @session_destroy_all(%struct.ssh* %108, i32* null)
  ret void
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @packet_get_connection_in(...) #1

declare dso_local i32 @packet_get_connection_out(...) #1

declare dso_local i32 @notify_setup(...) #1

declare dso_local i32 @MAXIMUM(i32, i32) #1

declare dso_local i32 @server_init_dispatch(...) #1

declare dso_local i32 @process_buffered_input_packets(%struct.ssh*) #1

declare dso_local i32 @ssh_packet_is_rekeying(%struct.ssh*) #1

declare dso_local i64 @packet_not_very_much_data_to_write(...) #1

declare dso_local i32 @channel_output_poll(%struct.ssh*) #1

declare dso_local i32 @packet_get_rekey_timeout(...) #1

declare dso_local i32 @wait_until_can_do_something(%struct.ssh*, i32, i32, i32**, i32**, i32*, i32*, i32) #1

declare dso_local i32 @logit(i8*, i32) #1

declare dso_local i32 @cleanup_exit(i32) #1

declare dso_local i32 @collect_children(%struct.ssh*) #1

declare dso_local i32 @channel_after_select(%struct.ssh*, i32*, i32*) #1

declare dso_local i64 @process_input(%struct.ssh*, i32*, i32) #1

declare dso_local i32 @process_output(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @channel_free_all(%struct.ssh*) #1

declare dso_local i32 @session_destroy_all(%struct.ssh*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
