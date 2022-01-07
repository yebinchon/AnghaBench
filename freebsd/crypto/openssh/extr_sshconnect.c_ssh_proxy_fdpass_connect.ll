; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_proxy_fdpass_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_proxy_fdpass_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Could not create socketpair to communicate with proxy dialer: %.100s\00", align 1
@errno = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Executing proxy dialer command: %.500s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dup2 stdin\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dup2 stdout\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"fork failed: %.100s\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"proxy dialer did not pass back a connection\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Couldn't wait for child: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i8*, i32, i8*)* @ssh_proxy_fdpass_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_proxy_fdpass_connect(%struct.ssh* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [10 x i8*], align 16
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %14, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %19, i8** %14, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i32, i32* @AF_UNIX, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %24 = call i64 @socketpair(i32 %21, i32 %22, i32 0, i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @errno, align 8
  %28 = call i32 @strerror(i64 %27)
  %29 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @expand_proxy_command(i8* %31, i32 %32, i8* %33, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = call i64 (...) @fork()
  store i64 %38, i64* %13, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %30
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @dup2(i32 %49, i32 0)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %40
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @dup2(i32 %61, i32 1)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %55
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %14, align 8
  %77 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  store i8* %76, i8** %77, align 16
  %78 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %78, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 2
  store i8* %79, i8** %80, align 16
  %81 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 3
  store i8* null, i8** %81, align 8
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %83 = load i8*, i8** %82, align 16
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %85 = call i32 @execv(i8* %83, i8** %84)
  %86 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %87 = load i8*, i8** %86, align 16
  %88 = call i32 @perror(i8* %87)
  %89 = call i32 @exit(i32 1) #3
  unreachable

90:                                               ; preds = %30
  %91 = load i64, i64* %13, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i64, i64* @errno, align 8
  %95 = call i32 @strerror(i64 %94)
  %96 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @close(i32 %99)
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @free(i8* %101)
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mm_receive_fd(i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %97
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @close(i32 %111)
  br label %113

113:                                              ; preds = %125, %109
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @waitpid(i64 %114, i32* null, i32 0)
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EINTR, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i64, i64* @errno, align 8
  %123 = call i32 @strerror(i64 %122)
  %124 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  br label %113

126:                                              ; preds = %113
  %127 = load %struct.ssh*, %struct.ssh** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32* @ssh_packet_set_connection(%struct.ssh* %127, i32 %128, i32 %129)
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %134

133:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %132
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i8* @expand_proxy_command(i8*, i32, i8*, i32) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @execv(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mm_receive_fd(i32) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32* @ssh_packet_set_connection(%struct.ssh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
