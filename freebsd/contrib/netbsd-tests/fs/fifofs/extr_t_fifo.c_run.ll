; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/fifofs/extr_t_fifo.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/fifofs/extr_t_fifo.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.sigaction = type { i32, i32 }

@MSG_SIZE = common dso_local global i32 0, align 4
@run.ts = internal constant %struct.timespec { i32 0, i32 500000000 }, align 4
@sigchild_handler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@FIFO_FILE_PATH = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to open fifo\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Child pid is %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to open the fifo in read mode\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Was sleeping...\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Failed to read\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Parent interrupted, continuing...\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Writers have closed, looks like we are done\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Received %zd bytes message '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"We are done.. now reap the child\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to reap the child\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"We are done completely\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sigaction, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MSG_SIZE, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @MSG_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = call i32 @memset(%struct.sigaction* %9, i32 0, i32 8)
  %18 = load i32, i32* @sigchild_handler, align 4
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %21 = call i32 @sigemptyset(i32* %20)
  %22 = load i32, i32* @SIGCHLD, align 4
  %23 = call i32 @sigaction(i32 %22, %struct.sigaction* %9, i32* null)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i32, i32* @FIFO_FILE_PATH, align 4
  %29 = call i32 @unlink(i32 %28)
  %30 = load i32, i32* @FIFO_FILE_PATH, align 4
  %31 = load i32, i32* @S_IRUSR, align 4
  %32 = load i32, i32* @S_IWUSR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mkfifo(i32 %30, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = call i32 (...) @fork()
  store i32 %39, i32* %2, align 4
  switch i32 %39, label %51 [
    i32 -1, label %40
    i32 0, label %42
  ]

40:                                               ; preds = %38
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %40
  %43 = load i32, i32* @FIFO_FILE_PATH, align 4
  %44 = load i32, i32* @O_WRONLY, align 4
  %45 = call i32 @open(i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %4, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = call i32 (...) @child_writer()
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %153

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* @verbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fflush(i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %70, %60
  %62 = load i32, i32* @FIFO_FILE_PATH, align 4
  %63 = load i32, i32* @O_RDONLY, align 4
  %64 = call i32 @open(i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %4, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINTR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %61

71:                                               ; preds = %66
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74
  %76 = call i32 @nanosleep(%struct.timespec* @run.ts, i32* null)
  %77 = load i64, i64* @verbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fflush(i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %123, %102, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @read(i32 %85, i8* %16, i64 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EINTR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i64, i64* @verbose, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @fflush(i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %84

103:                                              ; preds = %90
  br label %124

104:                                              ; preds = %84
  %105 = load i32, i32* %3, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i64, i64* @verbose, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @fflush(i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %124

115:                                              ; preds = %104
  %116 = load i64, i64* @verbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %119, i8* %16)
  %121 = load i32, i32* @stdout, align 4
  %122 = call i32 @fflush(i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  br label %84

124:                                              ; preds = %114, %103
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @close(i32 %125)
  %127 = load i64, i64* @verbose, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %131 = load i32, i32* @stdout, align 4
  %132 = call i32 @fflush(i32 %131)
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %144, %133
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @waitpid(i32 %135, i32* %5, i32 0)
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @EINTR, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %153

144:                                              ; preds = %138
  br label %134

145:                                              ; preds = %134
  %146 = load i64, i64* @verbose, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %150 = load i32, i32* @stdout, align 4
  %151 = call i32 @fflush(i32 %150)
  br label %152

152:                                              ; preds = %148, %145
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %153

153:                                              ; preds = %152, %142, %49
  %154 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %1, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @mkfifo(i32, i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @child_writer(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #2

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
