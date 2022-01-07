; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_pidfile_test.c_test_pidfile_uncontested.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_pidfile_test.c_test_pidfile_uncontested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"test_pidfile_uncontested\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pidfile exists and is locked\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to write PID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_pidfile_uncontested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_pidfile_uncontested() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pidfh*, align 8
  %4 = alloca i64, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @unlink(i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.pidfh* @pidfile_open(i8* %7, i32 384, i64* %4)
  store %struct.pidfh* %8, %struct.pidfh** %3, align 8
  %9 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %10 = icmp eq %struct.pidfh* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %35

15:                                               ; preds = %11, %0
  %16 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %17 = icmp eq %struct.pidfh* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @errno, align 4
  %20 = call i8* @strerror(i32 %19)
  store i8* %20, i8** %1, align 8
  br label %35

21:                                               ; preds = %15
  %22 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %23 = call i64 @pidfile_write(%struct.pidfh* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %27 = call i32 @pidfile_close(%struct.pidfh* %26)
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @unlink(i8* %28)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %32 = call i32 @pidfile_close(%struct.pidfh* %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @unlink(i8* %33)
  store i8* null, i8** %1, align 8
  br label %35

35:                                               ; preds = %30, %25, %18, %14
  %36 = load i8*, i8** %1, align 8
  ret i8* %36
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i64*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @pidfile_close(%struct.pidfh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
