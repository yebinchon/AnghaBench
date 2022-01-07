; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_wince_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_wince_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@connection_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Can't initialize connection to remote device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wince-stub.exe\00", align 1
@WINCE_STUB = common dso_local global i32 0, align 4
@remote_add_host = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"couldn't get hostname of this system.\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Couldn't connect to host system.\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"couldn't bind socket\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Couldn't open socket for listening.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Unable to start remote stub '%s'.  Windows CE error %d.\00", align 1
@s = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"couldn't set up server for connection.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wince_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wince_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @connection_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %0
  %11 = call i32 (...) @CeRapiInit()
  switch i32 %11, label %13 [
    i32 0, label %12
  ]

12:                                               ; preds = %10
  store i32 1, i32* @connection_initialized, align 4
  br label %16

13:                                               ; preds = %10
  %14 = call i32 (...) @CeRapiUninit()
  %15 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %12
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* @WINCE_STUB, align 4
  %19 = call i8* @upload_to_device(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcpy(i8* %20, i8* %21)
  %23 = load i64, i64* @remote_add_host, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %27 = call i32 @strcat(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %29 = call i8* @strchr(i8* %28, i8 signext 0)
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %32 = call i64 @strlen(i8* %31)
  %33 = sub i64 256, %32
  %34 = call i64 @gethostname(i8* %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %25
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* @AF_INET, align 4
  %41 = load i32, i32* @SOCK_STREAM, align 4
  %42 = call i32 @socket(i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @stub_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  store i32 1, i32* %1, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SOL_SOCKET, align 4
  %49 = load i32, i32* @SO_REUSEADDR, align 4
  %50 = bitcast i32* %1 to i8*
  %51 = call i32 @setsockopt(i32 %47, i32 %48, i32 %49, i8* %50, i32 4)
  %52 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 8)
  %53 = load i32, i32* @AF_INET, align 4
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = call i32 @htons(i32 7000)
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %59 = call i64 @bind(i32 %57, %struct.sockaddr* %58, i32 8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %46
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @listen(i32 %64, i32 1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @towide(i8* %70, i32* null)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %73 = call i32 @towide(i8* %72, i32* null)
  %74 = call i32 @CeCreateProcess(i32 %71, i32 %73, i32* null, i32* null, i32 0, i32 0, i32* null, i32* null, i32* null, i32* %7)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* (...) @CeGetLastError()
  %79 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @accept(i32 %81, i32* null, i32* null)
  store i32 %82, i32* @s, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @close(i32 %87)
  ret void
}

declare dso_local i32 @CeRapiInit(...) #1

declare dso_local i32 @CeRapiUninit(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @upload_to_device(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @gethostname(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @stub_error(i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @CeCreateProcess(i32, i32, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @towide(i8*, i32*) #1

declare dso_local i8* @CeGetLastError(...) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
