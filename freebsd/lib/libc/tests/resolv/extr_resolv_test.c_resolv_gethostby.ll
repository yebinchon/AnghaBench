; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/resolv/extr_resolv_test.c_resolv_gethostby.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/resolv/extr_resolv_test.c_resolv_gethostby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%p: host %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%p: reverse %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @resolv_gethostby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolv_gethostby(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* %9)
  store %struct.hostent* %10, %struct.hostent** %6, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.hostent*, %struct.hostent** %6, align 8
  %15 = icmp eq %struct.hostent* %14, null
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintf(i8* %11, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13, i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @STDOUT_FILENO, align 4
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @write(i32 %19, i8* %20, i32 %21)
  %23 = load %struct.hostent*, %struct.hostent** %6, align 8
  %24 = icmp ne %struct.hostent* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %2
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %27 = load %struct.hostent*, %struct.hostent** %6, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hostent*, %struct.hostent** %6, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i8* %26, i32 %29, i32 %32)
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %35 = load %struct.hostent*, %struct.hostent** %6, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hostent*, %struct.hostent** %6, align 8
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.hostent* @gethostbyaddr(i8* %34, i32 %37, i32 %40)
  store %struct.hostent* %41, %struct.hostent** %7, align 8
  %42 = load %struct.hostent*, %struct.hostent** %7, align 8
  %43 = icmp ne %struct.hostent* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %25
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.hostent*, %struct.hostent** %7, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintf(i8* %45, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %46, i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @STDOUT_FILENO, align 4
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @write(i32 %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %25
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.hostent*, %struct.hostent** %6, align 8
  %58 = icmp ne %struct.hostent* %57, null
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 -1
  ret i32 %60
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
