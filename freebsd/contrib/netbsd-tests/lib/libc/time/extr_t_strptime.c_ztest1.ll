; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/time/extr_t_strptime.c_ztest1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/time/extr_t_strptime.c_ztest1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@timezone = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"strptime(\22%s\22, \22%s\22, &tm): expected: tm.tm_gmtoff=%ld, got: tm.tm_gmtoff=%ld\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %s %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @ztest1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest1(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 @memset(%struct.tm* %7, i32 0, i32 4)
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strptime(i8* %10, i8* %11, %struct.tm* %7)
  store i8* %12, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 90
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %26, %20, %16
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i64, i64* %6, align 8
  switch i64 %29, label %41 [
    i64 -2, label %30
    i64 -1, label %33
  ]

30:                                               ; preds = %28
  %31 = load i64, i64* @timezone, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %6, align 8
  br label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 90
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %39, %33
  br label %42

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %40, %30
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @ATF_REQUIRE_MSG(i32 %48, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50, i64 %51, i64 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57, i64 %60)
  ret void
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*, i8*, i64, i64) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
