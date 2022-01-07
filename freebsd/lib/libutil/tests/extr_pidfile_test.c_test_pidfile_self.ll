; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_pidfile_test.c_test_pidfile_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_pidfile_test.c_test_pidfile_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"test_pidfile_self\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pidfile exists and is locked\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"managed to opened pidfile twice\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pidfile contained wrong PID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_pidfile_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_pidfile_self() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pidfh*, align 8
  %4 = alloca %struct.pidfh*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @unlink(i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.pidfh* @pidfile_open(i8* %9, i32 384, i64* %5)
  store %struct.pidfh* %10, %struct.pidfh** %3, align 8
  %11 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %12 = icmp eq %struct.pidfh* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %61

17:                                               ; preds = %13, %0
  %18 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %19 = icmp eq %struct.pidfh* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  store i8* %22, i8** %1, align 8
  br label %61

23:                                               ; preds = %17
  %24 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %25 = call i64 @pidfile_write(%struct.pidfh* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %30 = call i32 @pidfile_close(%struct.pidfh* %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @unlink(i8* %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @strerror(i32 %33)
  store i8* %34, i8** %1, align 8
  br label %61

35:                                               ; preds = %23
  %36 = load i8*, i8** %2, align 8
  %37 = call %struct.pidfh* @pidfile_open(i8* %36, i32 384, i64* %5)
  store %struct.pidfh* %37, %struct.pidfh** %4, align 8
  %38 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %39 = icmp ne %struct.pidfh* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %42 = call i32 @pidfile_close(%struct.pidfh* %41)
  %43 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %44 = call i32 @pidfile_close(%struct.pidfh* %43)
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @unlink(i8* %45)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %61

47:                                               ; preds = %35
  %48 = load i64, i64* %5, align 8
  %49 = call i64 (...) @getpid()
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %53 = call i32 @pidfile_close(%struct.pidfh* %52)
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 @unlink(i8* %54)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %58 = call i32 @pidfile_close(%struct.pidfh* %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @unlink(i8* %59)
  store i8* null, i8** %1, align 8
  br label %61

61:                                               ; preds = %56, %51, %40, %27, %20, %16
  %62 = load i8*, i8** %1, align 8
  ret i8* %62
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i64*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @pidfile_close(%struct.pidfh*) #1

declare dso_local i64 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
