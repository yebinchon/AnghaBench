; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_err_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_err_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32, i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(inet_ntop error)\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: %s for %s port %d (len %d)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: %s for %s port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_err_addr(i8* %0, i8* %1, %struct.sockaddr_storage* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %14 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in*
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %19 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr_in6*
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %12, align 8
  br label %30

30:                                               ; preds = %25, %4
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %34 = call i64 @inet_ntop(i32 %31, i8* %32, i8* %33, i64 100)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %38 = call i32 @strlcpy(i8* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %39

39:                                               ; preds = %36, %30
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 99
  store i8 0, i8* %40, align 1
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %42 = bitcast %struct.sockaddr_storage* %41 to %struct.sockaddr_in*
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ntohs(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i32, i32* @verbosity, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, i8*, i8*, i8*, i32, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i8* %51, i32 %53, i32 %55)
  br label %64

57:                                               ; preds = %39
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, i8*, i8*, i8*, i32, ...) @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %59, i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %57, %48
  ret void
}

declare dso_local i64 @inet_ntop(i32, i8*, i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @log_err(i8*, i8*, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
