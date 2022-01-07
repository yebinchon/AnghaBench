; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_setup_x11fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_setup_x11fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32 }
%struct.ssh = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i8*, i32*, i32 }
%struct.stat = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@auth_opts = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"X11 forwarding disabled by key options.\00", align 1
@options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"X11 forwarding disabled in server configuration file.\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"No xauth program; cannot forward X11.\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"X11 display already set.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"x11_create_display_inet failed.\00", align 1
@session_close_single_x11 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"gethostname: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"localhost:%u.%u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"unix:%u.%u\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%.400s:%u.%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @session_setup_x11fwd(%struct.ssh* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %13 = load i32, i32* @NI_MAXHOST, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @auth_opts, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @packet_send_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %137

23:                                               ; preds = %2
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 3), align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %137

28:                                               ; preds = %23
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 2), align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 2), align 8
  %33 = call i32 @stat(i32* %32, %struct.stat* %6)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %28
  %36 = call i32 @packet_send_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %137

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %137

44:                                               ; preds = %37
  %45 = load %struct.ssh*, %struct.ssh** %4, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 1), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @x11_create_display_inet(%struct.ssh* %45, i32 %46, i64 %47, i32 %50, i32* %52, i32** %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %137

59:                                               ; preds = %44
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %78, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.ssh*, %struct.ssh** %4, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @session_close_single_x11, align 4
  %77 = call i32 @channel_register_cleanup(%struct.ssh* %69, i32 %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %68
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %60

81:                                               ; preds = %60
  %82 = trunc i64 %14 to i32
  %83 = call i64 @gethostname(i8* %16, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 @strerror(i32 %86)
  %88 = call i32 @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %89
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %93, i32 512, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %96, i32 %99)
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %104, i32 %107)
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %110 = call i8* @xstrdup(i8* %109)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %115 = call i8* @xstrdup(i8* %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %136

118:                                              ; preds = %89
  %119 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %119, i32 512, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %16, i32 %122, i32 %125)
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %128 = call i8* @xstrdup(i8* %127)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i32* %129, i32** %131, align 8
  %132 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %133 = call i8* @xstrdup(i8* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %118, %92
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %137

137:                                              ; preds = %136, %57, %42, %35, %26, %21
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @packet_send_debug(i8*) #2

declare dso_local i32 @debug(i8*) #2

declare dso_local i32 @stat(i32*, %struct.stat*) #2

declare dso_local i32 @x11_create_display_inet(%struct.ssh*, i32, i64, i32, i32*, i32**) #2

declare dso_local i32 @channel_register_cleanup(%struct.ssh*, i32, i32, i32) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @fatal(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @xstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
