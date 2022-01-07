; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string.c_test_archive_strcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string.c_test_archive_strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"snafu\00", align 1
@EXTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_archive_strcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_archive_strcpy() #0 {
  %1 = alloca %struct.archive_string, align 4
  %2 = call i32 @archive_string_init(%struct.archive_string* %1)
  %3 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @assertExactString(i32 0, i32 0, i8* null, i32 %4)
  %6 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq %struct.archive_string* %1, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @EXTENT, align 4
  %11 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @assertExactString(i32 5, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq %struct.archive_string* %1, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @EXTENT, align 4
  %19 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @assertExactString(i32 3, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq %struct.archive_string* %1, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @EXTENT, align 4
  %27 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @assertExactString(i32 0, i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @archive_string_free(%struct.archive_string* %1)
  ret void
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @assertExactString(i32, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_string* @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
