; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_resolve_localhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_resolve_localhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unhandled domain: %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"asprintf failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"getaddrinfo failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrinfo**, i32, i32, i32)* @resolve_localhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_localhost(%struct.addrinfo** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.addrinfo**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.addrinfo, align 4
  %12 = alloca i32, align 4
  store %struct.addrinfo** %0, %struct.addrinfo*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %19

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %15, %14
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @asprintf(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @ATF_REQUIRE_MSG(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 12)
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @AI_ADDRCONFIG, align 4
  %31 = load i32, i32* @AI_NUMERICSERV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @AI_NUMERICHOST, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.addrinfo**, %struct.addrinfo*** %5, align 8
  %41 = call i32 @getaddrinfo(i8* %38, i8* %39, %struct.addrinfo* %11, %struct.addrinfo** %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @gai_strerror(i32 %43)
  %45 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %42, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  ret void
}

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
