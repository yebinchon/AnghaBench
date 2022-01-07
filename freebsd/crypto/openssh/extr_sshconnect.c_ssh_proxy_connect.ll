; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_proxy_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_proxy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Could not create pipes to communicate with the proxy: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Executing proxy command: %.500s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dup2 stdin\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dup2 stdout\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"fork failed: %.100s\00", align 1
@proxy_command_pid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i8*, i32, i8*)* @ssh_proxy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_proxy_connect(%struct.ssh* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
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
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %14, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %4
  %24 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %24, i8** %14, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %27 = call i64 @pipe(i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %31 = call i64 @pipe(i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @fatal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @expand_proxy_command(i8* %38, i32 %39, i8* %40, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = call i64 (...) @fork()
  store i64 %45, i64* %13, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %37
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @dup2(i32 %56, i32 0)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %61, %47
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @close(i32 %67)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @dup2(i32 %70, i32 1)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %65
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  store i8* %79, i8** %80, align 16
  %81 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %81, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 2
  store i8* %82, i8** %83, align 16
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 3
  store i8* null, i8** %84, align 8
  %85 = load i32, i32* @SIGPIPE, align 4
  %86 = load i32, i32* @SIG_DFL, align 4
  %87 = call i32 @signal(i32 %85, i32 %86)
  %88 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %89 = load i8*, i8** %88, align 16
  %90 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %91 = call i32 @execv(i8* %89, i8** %90)
  %92 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %93 = load i8*, i8** %92, align 16
  %94 = call i32 @perror(i8* %93)
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %37
  %97 = load i64, i64* %13, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 @strerror(i32 %100)
  %102 = call i32 @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %105

103:                                              ; preds = %96
  %104 = load i64, i64* %13, align 8
  store i64 %104, i64* @proxy_command_pid, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @close(i32 %107)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @close(i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load %struct.ssh*, %struct.ssh** %6, align 8
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32* @ssh_packet_set_connection(%struct.ssh* %114, i32 %116, i32 %118)
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %105
  store i32 -1, i32* %5, align 4
  br label %123

122:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %121
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @expand_proxy_command(i8*, i32, i8*, i32) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @execv(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @ssh_packet_set_connection(%struct.ssh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
