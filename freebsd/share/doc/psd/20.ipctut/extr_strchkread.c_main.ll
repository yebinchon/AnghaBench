; ModuleID = '/home/carl/AnghaBench/freebsd/share/doc/psd/20.ipctut/extr_strchkread.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/doc/psd/20.ipctut/extr_strchkread.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"opening stream socket\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"binding stream socket\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"getting socket name\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Socket has port #%d\1Bn\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"reading stream message\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Ending connection\1Bn\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"-->%s\1Bn\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Do something else\1Bn\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %0
  %19 = load i32, i32* @AF_INET, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @INADDR_ANY, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @bind(i32 %25, %struct.sockaddr_in* %4, i32 16)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %18
  store i32 16, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @getsockname(i32 %32, %struct.sockaddr_in* %4, i32* %3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ntohs(i64 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @listen(i32 %43, i32 5)
  br label %45

45:                                               ; preds = %97, %38
  %46 = call i32 @FD_ZERO(i32* %8)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @FD_SET(i32 %47, i32* %8)
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 5, i32* %49, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i64 @select(i32 %51, i32* %8, i32 0, i32 0, %struct.timeval* %9)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %97

56:                                               ; preds = %45
  %57 = load i32, i32* %2, align 4
  %58 = call i64 @FD_ISSET(i32 %57, i32* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @accept(i32 %61, %struct.sockaddr* null, i32* null)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %91

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %87, %67
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %70 = call i32 @bzero(i8* %69, i32 1024)
  %71 = load i32, i32* %5, align 4
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %73 = call i32 @read(i32 %71, i8* %72, i32 1024)
  store i32 %73, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %86

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %85

82:                                               ; preds = %77
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %68, label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @close(i32 %92)
  br label %96

94:                                               ; preds = %56
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %97

97:                                               ; preds = %96, %54
  %98 = load i64, i64* @TRUE, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %45, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %1, align 4
  ret i32 %101
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr_in*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr_in*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32, i32, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
