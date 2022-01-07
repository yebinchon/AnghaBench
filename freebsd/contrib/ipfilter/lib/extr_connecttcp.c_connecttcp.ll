; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_connecttcp.c_connecttcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_connecttcp.c_connecttcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32 }
%struct.hostent = type { i32* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connecttcp(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.sockaddr_in* %6, i32 0, i32 12)
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65535
  %14 = call i32 @htons(i32 %13)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @ISDIGIT(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %23 = call i32 @inet_aton(i8* %21, i32* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %58

26:                                               ; preds = %20
  br label %41

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.hostent* @gethostbyname(i8* %28)
  store %struct.hostent* %29, %struct.hostent** %7, align 8
  %30 = load %struct.hostent*, %struct.hostent** %7, align 8
  %31 = icmp eq %struct.hostent* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %58

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %35 = load %struct.hostent*, %struct.hostent** %7, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %34, i32 %39, i32 4)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* @AF_INET, align 4
  %43 = load i32, i32* @SOCK_STREAM, align 4
  %44 = call i32 @socket(i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %58

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %51 = call i32 @connect(i32 %49, %struct.sockaddr* %50, i32 12)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @close(i32 %54)
  store i32 -1, i32* %3, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %53, %47, %32, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
