; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/resolv/extr_resolv_test.c_resolvone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/resolv/extr_resolv_test.c_resolvone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8** }
%struct.addrinfo = type { i32 }

@hosts = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%p: %d resolving %s %d\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@method = common dso_local global i32 0, align 4
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
  %7 = alloca %struct.addrinfo, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = call i32 (...) @pthread_self()
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @random()
  %13 = and i32 %12, 268435455
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hosts, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = srem i32 %13, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hosts, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @snprintf(i8* %25, i32 1024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i8* %28, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @STDOUT_FILENO, align 4
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @write(i32 %32, i8* %33, i32 %34)
  %36 = load i32, i32* @method, align 4
  switch i32 %36, label %50 [
    i32 130, label %37
    i32 129, label %42
    i32 128, label %46
  ]

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @resolv_getaddrinfo(i32 %38, i8* %39, i64 %40)
  store i32 %41, i32* %9, align 4
  br label %51

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @resolv_gethostby(i32 %43, i8* %44)
  store i32 %45, i32* %9, align 4
  br label %51

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @resolv_getipnodeby(i32 %47, i8* %48)
  store i32 %49, i32* %9, align 4
  br label %51

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %50, %46, %42, %37
  %52 = call i32 @pthread_mutex_lock(i32* @stats)
  %53 = load i32*, i32** @ask, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** @got, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = call i32 @pthread_mutex_unlock(i32* @stats)
  ret void
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @resolv_getaddrinfo(i32, i8*, i64) #1

declare dso_local i32 @resolv_gethostby(i32, i8*) #1

declare dso_local i32 @resolv_getipnodeby(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
