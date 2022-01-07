; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_remote_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_remote_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@remote_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not open remote device\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Remote debugging using %s\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Can't open socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Can't bind address\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Listening on port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Accept failed\00", align 1
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Remote debugging from host %s\0A\00", align 1
@CLOCAL = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_SETOWN = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@TCGETA = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@TCSETA = common dso_local global i32 0, align 4
@TIOCGETP = common dso_local global i32 0, align 4
@TIOCSETP = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remote_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* @remote_desc, align 4
  %16 = load i32, i32* @remote_desc, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @perror_with_name(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %94

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 58)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @PF_INET, align 4
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = call i32 @socket(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 @perror_with_name(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %24
  store i32 1, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_REUSEADDR, align 4
  %41 = bitcast i32* %7 to i8*
  %42 = call i32 @setsockopt(i32 %38, i32 %39, i32 %40, i8* %41, i32 4)
  %43 = load i32, i32* @PF_INET, align 4
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @INADDR_ANY, align 4
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %53 = call i64 @bind(i32 %51, %struct.sockaddr* %52, i32 12)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @listen(i32 %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %37
  %60 = call i32 @perror_with_name(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 12, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %67 = call i32 @accept(i32 %65, %struct.sockaddr* %66, i32* %7)
  store i32 %67, i32* @remote_desc, align 4
  %68 = load i32, i32* @remote_desc, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @perror_with_name(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  store i32 1, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SOL_SOCKET, align 4
  %75 = load i32, i32* @SO_KEEPALIVE, align 4
  %76 = bitcast i32* %7 to i8*
  %77 = call i32 @setsockopt(i32 %73, i32 %74, i32 %75, i8* %76, i32 4)
  store i32 1, i32* %7, align 4
  %78 = load i32, i32* @remote_desc, align 4
  %79 = load i32, i32* @IPPROTO_TCP, align 4
  %80 = load i32, i32* @TCP_NODELAY, align 4
  %81 = bitcast i32* %7 to i8*
  %82 = call i32 @setsockopt(i32 %78, i32 %79, i32 %80, i8* %81, i32 4)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* @SIGPIPE, align 4
  %86 = load i32, i32* @SIG_IGN, align 4
  %87 = call i32 @signal(i32 %85, i32 %86)
  %88 = load i32, i32* @stderr, align 4
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @inet_ntoa(i32 %91)
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %72, %20
  %95 = call i32 (...) @disable_async_io()
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @disable_async_io(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
