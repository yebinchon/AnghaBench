; ModuleID = '/home/carl/AnghaBench/freebsd/share/doc/psd/20.ipctut/extr_ustreamread.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/doc/psd/20.ipctut/extr_ustreamread.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i8*, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"opening stream socket\00", align 1
@NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"binding stream socket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Socket has name %s\1Bn\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"reading stream message\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Ending connection\1Bn\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-->%s\1Bn\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un, align 8
  %6 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @AF_UNIX, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = load i32, i32* @AF_UNIX, align 4
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @NAME, align 4
  %21 = call i32 @strcpy(i8* %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @bind(i32 %22, %struct.sockaddr_un* %5, i32 16)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @listen(i32 %32, i32 5)
  br label %34

34:                                               ; preds = %65, %28
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @accept(i32 %35, i32 0, i32 0)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %65

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %61, %41
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %44 = call i32 @bzero(i8* %43, i32 1024)
  %45 = load i32, i32* %3, align 4
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %47 = call i32 @read(i32 %45, i8* %46, i32 1024)
  store i32 %47, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %60

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %54
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %42, label %64

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @close(i32 %66)
  br label %34
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr_un*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, i32, i32) #1

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
