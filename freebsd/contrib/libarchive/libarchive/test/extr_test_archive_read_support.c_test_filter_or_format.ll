; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_support.c_test_filter_or_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_support.c_test_filter_or_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@archive_read_new = common dso_local global i32 0, align 4
@archive_read_free = common dso_local global i32 0, align 4
@archive_write_new = common dso_local global i32 0, align 4
@archive_write_free = common dso_local global i32 0, align 4
@archive_read_disk_new = common dso_local global i32 0, align 4
@archive_write_disk_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_filter_or_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filter_or_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @archive_read_new, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @archive_read_free, align 4
  %6 = call i32 @test_success(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @archive_write_new, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @archive_write_free, align 4
  %10 = call i32 @test_failure(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @archive_read_disk_new, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @archive_read_free, align 4
  %14 = call i32 @test_failure(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @archive_write_disk_new, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @archive_write_free, align 4
  %18 = call i32 @test_failure(i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @test_success(i32, i32, i32) #1

declare dso_local i32 @test_failure(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
