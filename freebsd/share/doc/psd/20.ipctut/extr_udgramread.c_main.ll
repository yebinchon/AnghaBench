; ModuleID = '/home/carl/AnghaBench/freebsd/share/doc/psd/20.ipctut/extr_udgramread.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/doc/psd/20.ipctut/extr_udgramread.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"opening datagram socket\00", align 1
@NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"binding name to datagram socket\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"socket -->%s\1Bn\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"receiving datagram packet\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-->%s\1Bn\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_un, align 4
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @AF_UNIX, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %0
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** @NAME, align 8
  %20 = call i32 @strcpy(i32 %18, i8* %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @bind(i32 %21, %struct.sockaddr_un* %4, i32 8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %14
  %28 = load i8*, i8** @NAME, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %2, align 4
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %32 = call i64 @read(i32 %30, i8* %31, i32 1024)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %38 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i8*, i8** @NAME, align 8
  %42 = call i32 @unlink(i8* %41)
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr_un*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
