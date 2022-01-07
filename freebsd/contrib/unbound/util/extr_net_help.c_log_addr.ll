; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32, i64 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ip4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ip6\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s local %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"(inet_ntop error)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s %s %s port %d (len %d)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s %s port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_addr(i32 %0, i8* %1, %struct.sockaddr_storage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %20 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr_in*
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to i8*
  store i8* %22, i8** %13, align 8
  %23 = load i32, i32* @verbosity, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %81

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %45 [
    i32 130, label %29
    i32 129, label %30
    i32 128, label %35
  ]

29:                                               ; preds = %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %46

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in6*
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %13, align 8
  br label %46

35:                                               ; preds = %27
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %40 = call i64 @inet_ntop(i32 %37, i8* %38, i8* %39, i64 100)
  %41 = load i32, i32* %5, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %44 = call i32 (i32, i8*, i8*, i8*, ...) @verbose(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %43)
  br label %81

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %30, %29
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %50 = call i64 @inet_ntop(i32 %47, i8* %48, i8* %49, i64 100)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %54 = call i32 @strlcpy(i8* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 100)
  br label %55

55:                                               ; preds = %52, %46
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 99
  store i8 0, i8* %56, align 1
  %57 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %58 = bitcast %struct.sockaddr_storage* %57 to %struct.sockaddr_in*
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ntohs(i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sge i32 %62, 4
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %8, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i32, i8*, i8*, i8*, ...) @verbose(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %66, i8* %67, i8* %68, i32 %70, i32 %72)
  br label %81

74:                                               ; preds = %55
  %75 = load i32, i32* %5, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i32, i8*, i8*, i8*, ...) @verbose(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %76, i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %26, %35, %74, %64
  ret void
}

declare dso_local i64 @inet_ntop(i32, i8*, i8*, i64) #1

declare dso_local i32 @verbose(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
