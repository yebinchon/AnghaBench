; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_gdbreplay.c_remote_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_gdbreplay.c_remote_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: Must specify tcp connection as host:addr\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Can't open socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Can't bind address\00", align 1
@remote_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Accept failed\00", align 1
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Replay logfile using %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 58)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @PF_INET, align 4
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = call i32 @socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 @perror_with_name(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %18
  store i32 1, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SOL_SOCKET, align 4
  %34 = load i32, i32* @SO_REUSEADDR, align 4
  %35 = bitcast i32* %6 to i8*
  %36 = call i32 @setsockopt(i32 %32, i32 %33, i32 %34, i8* %35, i32 4)
  %37 = load i32, i32* @PF_INET, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @INADDR_ANY, align 4
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %47 = call i64 @bind(i32 %45, %struct.sockaddr* %46, i32 12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @listen(i32 %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %31
  %54 = call i32 @perror_with_name(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  store i32 12, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %58 = call i32 @accept(i32 %56, %struct.sockaddr* %57, i32* %6)
  store i32 %58, i32* @remote_desc, align 4
  %59 = load i32, i32* @remote_desc, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @perror_with_name(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %55
  store i32 1, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SOL_SOCKET, align 4
  %66 = load i32, i32* @SO_KEEPALIVE, align 4
  %67 = bitcast i32* %6 to i8*
  %68 = call i32 @setsockopt(i32 %64, i32 %65, i32 %66, i8* %67, i32 4)
  store i32 1, i32* %6, align 4
  %69 = load i32, i32* @remote_desc, align 4
  %70 = load i32, i32* @IPPROTO_TCP, align 4
  %71 = load i32, i32* @TCP_NODELAY, align 4
  %72 = bitcast i32* %6 to i8*
  %73 = call i32 @setsockopt(i32 %69, i32 %70, i32 %71, i8* %72, i32 4)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32, i32* @SIGPIPE, align 4
  %77 = load i32, i32* @SIG_IGN, align 4
  %78 = call i32 @signal(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* @remote_desc, align 4
  %81 = load i32, i32* @F_SETFL, align 4
  %82 = load i32, i32* @FASYNC, align 4
  %83 = call i32 @fcntl(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fflush(i32 %87)
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
