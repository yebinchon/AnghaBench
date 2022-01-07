; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32, i32 }
%struct.hostent = type { i32 }
%struct.sockaddr = type { i32 }

@sent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gettimeofday(sent)\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@RIP_PORT = common dso_local global i32 0, align 4
@soc = common dso_local global i32 0, align 4
@omsg_buf = common dso_local global i32 0, align 4
@omsg_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i64 @gettimeofday(i32* @sent, i32 0)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 16)
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %16 = call i32 @inet_aton(i8* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.hostent* @gethostbyname(i8* %19)
  store %struct.hostent* %20, %struct.hostent** %5, align 8
  %21 = load %struct.hostent*, %struct.hostent** %5, align 8
  %22 = icmp eq %struct.hostent* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @herror(i8* %24)
  store i32 -1, i32* %2, align 4
  br label %45

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %28 = load %struct.hostent*, %struct.hostent** %5, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32* %27, i32 %30, i32 4)
  br label %32

32:                                               ; preds = %26, %10
  %33 = load i32, i32* @RIP_PORT, align 4
  %34 = call i32 @htons(i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @soc, align 4
  %37 = load i32, i32* @omsg_len, align 4
  %38 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %39 = call i64 @sendto(i32 %36, i32* @omsg_buf, i32 %37, i32 0, %struct.sockaddr* %38, i32 16)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @perror(i8* %42)
  store i32 -1, i32* %2, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %41, %23, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @gettimeofday(i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @herror(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
