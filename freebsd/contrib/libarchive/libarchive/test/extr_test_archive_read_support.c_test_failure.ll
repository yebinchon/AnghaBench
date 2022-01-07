; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_support.c_test_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_support.c_test_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive* (...)*, i32 (%struct.archive*)*, i32 (%struct.archive*)*)* @test_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_failure(%struct.archive* (...)* %0, i32 (%struct.archive*)* %1, i32 (%struct.archive*)* %2) #0 {
  %4 = alloca %struct.archive* (...)*, align 8
  %5 = alloca i32 (%struct.archive*)*, align 8
  %6 = alloca i32 (%struct.archive*)*, align 8
  %7 = alloca %struct.archive*, align 8
  store %struct.archive* (...)* %0, %struct.archive* (...)** %4, align 8
  store i32 (%struct.archive*)* %1, i32 (%struct.archive*)** %5, align 8
  store i32 (%struct.archive*)* %2, i32 (%struct.archive*)** %6, align 8
  %8 = load %struct.archive* (...)*, %struct.archive* (...)** %4, align 8
  %9 = call %struct.archive* (...) %8()
  store %struct.archive* %9, %struct.archive** %7, align 8
  %10 = load %struct.archive*, %struct.archive** %7, align 8
  %11 = load i32, i32* @ARCHIVE_FATAL, align 4
  %12 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %5, align 8
  %13 = load %struct.archive*, %struct.archive** %7, align 8
  %14 = call i32 %12(%struct.archive* %13)
  %15 = call i32 @assertEqualIntA(%struct.archive* %10, i32 %11, i32 %14)
  %16 = load %struct.archive*, %struct.archive** %7, align 8
  %17 = call i32* @archive_error_string(%struct.archive* %16)
  %18 = icmp ne i32* null, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.archive*, %struct.archive** %7, align 8
  %22 = load %struct.archive*, %struct.archive** %7, align 8
  %23 = call i32 @archive_errno(%struct.archive* %22)
  %24 = call i32 @assertEqualIntA(%struct.archive* %21, i32 -1, i32 %23)
  %25 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %6, align 8
  %26 = load %struct.archive*, %struct.archive** %7, align 8
  %27 = call i32 %25(%struct.archive* %26)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
