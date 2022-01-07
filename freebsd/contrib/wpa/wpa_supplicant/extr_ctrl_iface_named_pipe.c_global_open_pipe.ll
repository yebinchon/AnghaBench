; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_named_pipe.c_global_open_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_named_pipe.c_global_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_global_priv = type { %struct.wpa_global_dst* }
%struct.wpa_global_dst = type { i64, %struct.wpa_global_dst*, %struct.wpa_global_dst*, %struct.TYPE_2__, %struct.ctrl_iface_global_priv* }
%struct.TYPE_2__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CTRL: Open pipe %p\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CTRL: CreateEvent failed: %d\00", align 1
@wpa_supplicant_global_iface_receive = common dso_local global i32 0, align 4
@NAMED_PIPE_PREFIX = common dso_local global i32 0, align 4
@PIPE_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@REPLY_BUFSIZE = common dso_local global i32 0, align 4
@REQUEST_BUFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CTRL: CreateNamedPipe failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CTRL: ConnectNamedPipe failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"CTRL: ConnectNamedPipe: connection in progress\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"CTRL: ConnectNamedPipe: already connected\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"CTRL: ConnectNamedPipe error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctrl_iface_global_priv*)* @global_open_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_open_pipe(%struct.ctrl_iface_global_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctrl_iface_global_priv*, align 8
  %4 = alloca %struct.wpa_global_dst*, align 8
  %5 = alloca i32, align 4
  store %struct.ctrl_iface_global_priv* %0, %struct.ctrl_iface_global_priv** %3, align 8
  %6 = call %struct.wpa_global_dst* @os_zalloc(i32 40)
  store %struct.wpa_global_dst* %6, %struct.wpa_global_dst** %4, align 8
  %7 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %8 = icmp eq %struct.wpa_global_dst* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %134

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.wpa_global_dst* %12)
  %14 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %3, align 8
  %15 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %15, i32 0, i32 4
  store %struct.ctrl_iface_global_priv* %14, %struct.ctrl_iface_global_priv** %16, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32* @CreateEvent(i32* null, i32 %20, i32 %21, i32* null)
  %23 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  %26 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %10
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %131

35:                                               ; preds = %10
  %36 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @wpa_supplicant_global_iface_receive, align 4
  %41 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %42 = call i32 @eloop_register_event(i32* %39, i32 8, i32 %40, %struct.wpa_global_dst* %41, i32* null)
  %43 = load i32, i32* @NAMED_PIPE_PREFIX, align 4
  %44 = load i32, i32* @PIPE_ACCESS_DUPLEX, align 4
  %45 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %48 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PIPE_WAIT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @REPLY_BUFSIZE, align 4
  %53 = load i32, i32* @REQUEST_BUFSIZE, align 4
  %54 = call i64 @CreateNamedPipe(i32 %43, i32 %46, i32 %51, i32 10, i32 %52, i32 %53, i32 1000, i32* null)
  %55 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %35
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = call i32 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %131

66:                                               ; preds = %35
  %67 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %68 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %70, i32 0, i32 3
  %72 = call i64 @ConnectNamedPipe(i64 %69, %struct.TYPE_2__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i32, i32* @MSG_ERROR, align 4
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @CloseHandle(i64 %80)
  %82 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %83 = call i32 @os_free(%struct.wpa_global_dst* %82)
  store i32 -1, i32* %2, align 4
  br label %134

84:                                               ; preds = %66
  %85 = call i32 (...) @GetLastError()
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  switch i32 %86, label %101 [
    i32 129, label %87
    i32 128, label %90
  ]

87:                                               ; preds = %84
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %111

90:                                               ; preds = %84
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %94 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @SetEvent(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %111

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %84, %100
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %106 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @CloseHandle(i64 %107)
  %109 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %110 = call i32 @os_free(%struct.wpa_global_dst* %109)
  store i32 -1, i32* %2, align 4
  br label %134

111:                                              ; preds = %99, %87
  %112 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %3, align 8
  %113 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %112, i32 0, i32 0
  %114 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %113, align 8
  %115 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %116 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %115, i32 0, i32 2
  store %struct.wpa_global_dst* %114, %struct.wpa_global_dst** %116, align 8
  %117 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %118 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %117, i32 0, i32 2
  %119 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %118, align 8
  %120 = icmp ne %struct.wpa_global_dst* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %123 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %124 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %123, i32 0, i32 2
  %125 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %124, align 8
  %126 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %125, i32 0, i32 1
  store %struct.wpa_global_dst* %122, %struct.wpa_global_dst** %126, align 8
  br label %127

127:                                              ; preds = %121, %111
  %128 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %129 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %3, align 8
  %130 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %129, i32 0, i32 0
  store %struct.wpa_global_dst* %128, %struct.wpa_global_dst** %130, align 8
  store i32 0, i32* %2, align 4
  br label %134

131:                                              ; preds = %62, %31
  %132 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  %133 = call i32 @global_close_pipe(%struct.wpa_global_dst* %132)
  store i32 -1, i32* %2, align 4
  br label %134

134:                                              ; preds = %131, %127, %101, %74, %9
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.wpa_global_dst* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @eloop_register_event(i32*, i32, i32, %struct.wpa_global_dst*, i32*) #1

declare dso_local i64 @CreateNamedPipe(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ConnectNamedPipe(i64, %struct.TYPE_2__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @os_free(%struct.wpa_global_dst*) #1

declare dso_local i32 @SetEvent(i32*) #1

declare dso_local i32 @global_close_pipe(%struct.wpa_global_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
