; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_h_resolv.c_resolvone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_h_resolv.c_resolvone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8** }
%struct.addrinfo = type { i32 }

@hosts = common dso_local global %struct.TYPE_2__* null, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%p: %d resolving %s %d\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%p: host %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@stats = common dso_local global i32 0, align 4
@ask = common dso_local global i32* null, align 8
@got = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @resolvone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolvone(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call i32 (...) @pthread_self()
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @random()
  %12 = and i32 %11, 268435455
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hosts, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %12, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hosts, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i64, i64* @debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %27, i32 1024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i8* %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @STDOUT_FILENO, align 4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @write(i32 %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %1
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @getaddrinfo(i8* %39, i32* null, i32* null, %struct.addrinfo** %7)
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* @debug, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %45 = load i32, i32* %4, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %51 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %44, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46, i8* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @STDOUT_FILENO, align 4
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @write(i32 %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %38
  %57 = call i32 @pthread_mutex_lock(i32* @stats)
  %58 = load i32*, i32** @ask, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** @got, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = call i32 @pthread_mutex_unlock(i32* @stats)
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %56
  %75 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %76 = call i32 @freeaddrinfo(%struct.addrinfo* %75)
  br label %77

77:                                               ; preds = %74, %56
  ret void
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
