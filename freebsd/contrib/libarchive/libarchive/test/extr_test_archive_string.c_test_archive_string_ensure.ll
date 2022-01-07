; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string.c_test_archive_string_ensure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string.c_test_archive_string_ensure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_archive_string_ensure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_archive_string_ensure() #0 {
  %1 = alloca %struct.archive_string, align 4
  %2 = call i32 @archive_string_init(%struct.archive_string* %1)
  %3 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @assertExactString(i32 0, i32 0, i32* null, i32 %4)
  %6 = call %struct.archive_string* @archive_string_ensure(%struct.archive_string* %1, i32 5)
  %7 = icmp eq %struct.archive_string* %1, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @EXTENT, align 4
  %11 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @assertNonNULLString(i32 0, i32 %10, i32 %12)
  %14 = load i32, i32* @EXTENT, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call %struct.archive_string* @archive_string_ensure(%struct.archive_string* %1, i32 %15)
  %17 = icmp eq %struct.archive_string* %1, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @EXTENT, align 4
  %21 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @assertNonNULLString(i32 0, i32 %20, i32 %22)
  %24 = load i32, i32* @EXTENT, align 4
  %25 = call %struct.archive_string* @archive_string_ensure(%struct.archive_string* %1, i32 %24)
  %26 = icmp eq %struct.archive_string* %1, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @EXTENT, align 4
  %30 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @assertNonNULLString(i32 0, i32 %29, i32 %31)
  %33 = load i32, i32* @EXTENT, align 4
  %34 = add nsw i32 %33, 1
  %35 = call %struct.archive_string* @archive_string_ensure(%struct.archive_string* %1, i32 %34)
  %36 = icmp eq %struct.archive_string* %1, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @EXTENT, align 4
  %40 = mul nsw i32 2, %39
  %41 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @assertNonNULLString(i32 0, i32 %40, i32 %42)
  %44 = call i32 @archive_string_free(%struct.archive_string* %1)
  ret void
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @assertExactString(i32, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_string* @archive_string_ensure(%struct.archive_string*, i32) #1

declare dso_local i32 @assertNonNULLString(i32, i32, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
