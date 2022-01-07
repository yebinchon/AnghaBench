; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_logwtmp.c_ftpd_logwtmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_logwtmp.c_ftpd_logwtmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.utmpx = type { i32, i32, i32, i32, i32, i32, i32 }

@USER_PROCESS = common dso_local global i32 0, align 4
@DEAD_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ftpd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftpd_logwtmp(i8* %0, i8* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.utmpx, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %8 = call i32 @memset(%struct.utmpx* %7, i32 0, i32 28)
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i32, i32* @USER_PROCESS, align 4
  %13 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strncpy(i32 %15, i8* %16, i32 4)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = icmp ne %struct.sockaddr* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @realhostname_sa(i32 %22, i32 4, %struct.sockaddr* %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %11
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @DEAD_PROCESS, align 4
  %31 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = call i32 (...) @getpid()
  %34 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 2
  %36 = call i32 @gettimeofday(i32* %35, i32* null)
  %37 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strncpy(i32 %38, i8* %39, i32 4)
  %41 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strncpy(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %44 = call i32 @pututxline(%struct.utmpx* %7)
  ret void
}

declare dso_local i32 @memset(%struct.utmpx*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @realhostname_sa(i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @pututxline(%struct.utmpx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
