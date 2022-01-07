; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nos-tun/extr_nos-tun.c_Set_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nos-tun/extr_nos-tun.c_Set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unknown host %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_in*)* @Set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Set_address(i8* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %7 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %8 = bitcast %struct.sockaddr_in* %7 to i8*
  %9 = call i32 @bzero(i8* %8, i32 4)
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @inet_addr(i8* %13)
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @INADDR_NONE, align 4
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.hostent* @gethostbyname(i8* %21)
  store %struct.hostent* %22, %struct.hostent** %6, align 8
  %23 = load %struct.hostent*, %struct.hostent** %6, align 8
  %24 = icmp ne %struct.hostent* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.hostent*, %struct.hostent** %6, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hostent*, %struct.hostent** %6, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = ptrtoint %struct.TYPE_2__* %39 to i32
  %41 = load %struct.hostent*, %struct.hostent** %6, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bcopy(i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
