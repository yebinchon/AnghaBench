; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_addrinfo_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_addrinfo_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo* }

@.str = private unnamed_addr constant [31 x i8] c"1 line read from snapshot:\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*)* @addrinfo_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrinfo_read_snapshot_func(%struct.addrinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @addrinfo_read_snapshot_ai(%struct.addrinfo* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %25, %struct.addrinfo** %6, align 8
  br label %26

26:                                               ; preds = %49, %24
  %27 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = call %struct.addrinfo* @calloc(i32 1, i32 8)
  %31 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  store %struct.addrinfo* %30, %struct.addrinfo** %32, align 8
  %33 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 0
  %35 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  %36 = icmp ne %struct.addrinfo* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @ATF_REQUIRE(i32 %37)
  %39 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 0
  %41 = load %struct.addrinfo*, %struct.addrinfo** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @addrinfo_read_snapshot_ai(%struct.addrinfo* %41, i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %48 = call i32 @free_addrinfo(%struct.addrinfo* %47)
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  store i32 -1, i32* %3, align 4
  br label %54

49:                                               ; preds = %29
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load %struct.addrinfo*, %struct.addrinfo** %51, align 8
  store %struct.addrinfo* %52, %struct.addrinfo** %6, align 8
  br label %26

53:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %46, %23, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @addrinfo_read_snapshot_ai(%struct.addrinfo*, i8*) #1

declare dso_local %struct.addrinfo* @calloc(i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @free_addrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
