; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hostent = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Invalid hostname.  Couldn't find remote host address.\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@ptraceSock = common dso_local global i32 0, align 4
@RDBPROG = common dso_local global i32 0, align 4
@RDBVERS = common dso_local global i32 0, align 4
@pClient = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"\09net_connect\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't connect to remote target.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @net_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_connect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @inet_addr(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @gethostbyname(i8* %11)
  %13 = inttoptr i64 %12 to %struct.hostent*
  store %struct.hostent* %13, %struct.hostent** %4, align 8
  %14 = load %struct.hostent*, %struct.hostent** %4, align 8
  %15 = icmp eq %struct.hostent* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  %19 = load %struct.hostent*, %struct.hostent** %4, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = call i32 @memset(%struct.sockaddr_in* %3, i8 signext 0, i32 24)
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @AF_INET, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %32, i32* @ptraceSock, align 4
  %33 = load i32, i32* @RDBPROG, align 4
  %34 = load i32, i32* @RDBVERS, align 4
  %35 = call i32* @clnttcp_create(%struct.sockaddr_in* %3, i32 %33, i32 %34, i32* @ptraceSock, i32 0, i32 0)
  store i32* %35, i32** @pClient, align 8
  %36 = load i32*, i32** @pClient, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %24
  ret void
}

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local i64 @gethostbyname(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i8 signext, i32) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
