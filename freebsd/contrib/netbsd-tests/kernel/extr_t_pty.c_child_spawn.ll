; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_child_spawn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_child_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"child: started; open \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"child: TTY open, starting read loop\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"child: polling\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"child: poll()\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"child: attempting to read %zu bytes\0A\00", align 1
@buffer_size = common dso_local global i64 0, align 8
@dbuf = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"child: read()\00", align 1
@qsize = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"read returned %zd less than the queue size %d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"child: read %zd bytes from TTY\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"child: closing TTY %zu\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"child: exiting\0A\00", align 1
@packets = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Lost data %zu != %zu\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @child_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_spawn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = call i32 @err(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 (...) @setsid()
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  ret i32 %19

20:                                               ; preds = %14
  %21 = load i64, i64* @verbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @tty_open(i8* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fd_nonblock(i32 %29)
  %31 = load i64, i64* @verbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @POLLIN, align 4
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %125, %35
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 2000)
  store i32 %47, i32* %7, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @err(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %126

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @POLLERR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %126

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @POLLIN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %119, %69
  %71 = load i64, i64* @verbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* @buffer_size, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @dbuf, align 4
  %79 = load i64, i64* @buffer_size, align 8
  %80 = call i32 @read(i32 %77, i32 %78, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EAGAIN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %124

87:                                               ; preds = %82
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  %89 = call i32 @err(i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %76
  %91 = load i32, i32* @qsize, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @qsize, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @buffer_size, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* @qsize, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 @errx(i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %105, i64 %107)
  br label %109

109:                                              ; preds = %102, %97, %93, %90
  %110 = load i64, i64* @verbose, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %127

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %6, align 8
  br label %70

124:                                              ; preds = %86
  br label %125

125:                                              ; preds = %124, %63
  br label %41

126:                                              ; preds = %62, %55
  br label %127

127:                                              ; preds = %126, %118
  %128 = load i64, i64* @verbose, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i64, i64* %6, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i64, i64* @verbose, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @buffer_size, align 8
  %143 = load i64, i64* @packets, align 8
  %144 = mul i64 %142, %143
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32, i32* @EXIT_FAILURE, align 4
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @buffer_size, align 8
  %150 = load i64, i64* @packets, align 8
  %151 = mul i64 %149, %150
  %152 = call i32 @errx(i32 %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i64 %148, i64 %151)
  br label %153

153:                                              ; preds = %146, %140
  %154 = load i32, i32* @EXIT_SUCCESS, align 4
  %155 = call i32 @exit(i32 %154) #3
  unreachable
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tty_open(i8*) #1

declare dso_local i32 @fd_nonblock(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, i32, i64) #1

declare dso_local i32 @errx(i32, i8*, i64, i64) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
