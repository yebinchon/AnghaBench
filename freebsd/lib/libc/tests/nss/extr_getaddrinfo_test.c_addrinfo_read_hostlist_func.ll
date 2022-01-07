; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_addrinfo_read_hostlist_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_addrinfo_read_hostlist_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"resolving %s: \00", align 1
@hints = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"found\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*)* @addrinfo_read_hostlist_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrinfo_read_hostlist_func(%struct.addrinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @getaddrinfo(i8* %10, i32* null, i32* @hints, %struct.addrinfo** %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %17 = call i32 @addrinfo_test_correctness(%struct.addrinfo* %16, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %22 = call i32 @freeaddrinfo(%struct.addrinfo* %21)
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %14
  %25 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %27 = call i32 @clone_addrinfo(%struct.addrinfo* %25, %struct.addrinfo* %26)
  %28 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %29 = call i32 @freeaddrinfo(%struct.addrinfo* %28)
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  br label %34

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %33 = call i32 @memset(%struct.addrinfo* %32, i32 0, i32 4)
  br label %34

34:                                               ; preds = %30, %24
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #1

declare dso_local i32 @addrinfo_test_correctness(%struct.addrinfo*, i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @clone_addrinfo(%struct.addrinfo*, %struct.addrinfo*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
