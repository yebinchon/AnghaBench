; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_support.c_test_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_support.c_test_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive* (...)*, i32 (%struct.archive*)*, i32 (%struct.archive*)*)* @test_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_success(%struct.archive* (...)* %0, i32 (%struct.archive*)* %1, i32 (%struct.archive*)* %2) #0 {
  %4 = alloca %struct.archive* (...)*, align 8
  %5 = alloca i32 (%struct.archive*)*, align 8
  %6 = alloca i32 (%struct.archive*)*, align 8
  %7 = alloca %struct.archive*, align 8
  %8 = alloca i32, align 4
  store %struct.archive* (...)* %0, %struct.archive* (...)** %4, align 8
  store i32 (%struct.archive*)* %1, i32 (%struct.archive*)** %5, align 8
  store i32 (%struct.archive*)* %2, i32 (%struct.archive*)** %6, align 8
  %9 = load %struct.archive* (...)*, %struct.archive* (...)** %4, align 8
  %10 = call %struct.archive* (...) %9()
  store %struct.archive* %10, %struct.archive** %7, align 8
  %11 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %5, align 8
  %12 = load %struct.archive*, %struct.archive** %7, align 8
  %13 = call i32 %11(%struct.archive* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ARCHIVE_WARN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.archive*, %struct.archive** %7, align 8
  %19 = call i32* @archive_error_string(%struct.archive* %18)
  %20 = icmp ne i32* null, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.archive*, %struct.archive** %7, align 8
  %24 = load %struct.archive*, %struct.archive** %7, align 8
  %25 = call i32 @archive_errno(%struct.archive* %24)
  %26 = call i32 @assertEqualIntA(%struct.archive* %23, i32 -1, i32 %25)
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.archive*, %struct.archive** %7, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %7, align 8
  %33 = call i32* @archive_error_string(%struct.archive* %32)
  %34 = icmp eq i32* null, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.archive*, %struct.archive** %7, align 8
  %38 = load %struct.archive*, %struct.archive** %7, align 8
  %39 = call i32 @archive_errno(%struct.archive* %38)
  %40 = call i32 @assertEqualIntA(%struct.archive* %37, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %27, %17
  %42 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %6, align 8
  %43 = load %struct.archive*, %struct.archive** %7, align 8
  %44 = call i32 %42(%struct.archive* %43)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
