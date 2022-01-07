; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string.c_test_archive_string_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string.c_test_archive_string_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"snafu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_archive_string_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_archive_string_concat() #0 {
  %1 = alloca %struct.archive_string, align 4
  %2 = alloca %struct.archive_string, align 4
  %3 = alloca %struct.archive_string, align 4
  %4 = alloca %struct.archive_string, align 4
  %5 = call i32 @archive_string_init(%struct.archive_string* %1)
  %6 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @assertExactString(i32 0, i32 0, i8* null, i32 %7)
  %9 = call i32 @archive_string_init(%struct.archive_string* %2)
  %10 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @assertExactString(i32 0, i32 0, i8* null, i32 %11)
  %13 = call i32 @archive_string_init(%struct.archive_string* %3)
  %14 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @assertExactString(i32 0, i32 0, i8* null, i32 %15)
  %17 = call i32 @archive_string_init(%struct.archive_string* %4)
  %18 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @assertExactString(i32 0, i32 0, i8* null, i32 %19)
  %21 = call i32 @archive_string_concat(%struct.archive_string* %2, %struct.archive_string* %1)
  %22 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @assertExactString(i32 0, i32 0, i8* null, i32 %23)
  %25 = load i32, i32* @EXTENT, align 4
  %26 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @assertExactString(i32 0, i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq %struct.archive_string* %1, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = call i32 @archive_string_concat(%struct.archive_string* %3, %struct.archive_string* %1)
  %34 = load i32, i32* @EXTENT, align 4
  %35 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @assertExactString(i32 0, i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EXTENT, align 4
  %39 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @assertExactString(i32 0, i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq %struct.archive_string* %1, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 @archive_string_concat(%struct.archive_string* %4, %struct.archive_string* %1)
  %47 = load i32, i32* @EXTENT, align 4
  %48 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @assertExactString(i32 3, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EXTENT, align 4
  %52 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @assertExactString(i32 3, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq %struct.archive_string* %1, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq %struct.archive_string* %2, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = call i32 @archive_string_concat(%struct.archive_string* %2, %struct.archive_string* %1)
  %64 = load i32, i32* @EXTENT, align 4
  %65 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @assertExactString(i32 0, i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EXTENT, align 4
  %69 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @assertExactString(i32 0, i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp eq %struct.archive_string* %1, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = call %struct.archive_string* @archive_strcpy(%struct.archive_string* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %77 = icmp eq %struct.archive_string* %2, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = call i32 @archive_string_concat(%struct.archive_string* %2, %struct.archive_string* %1)
  %81 = load i32, i32* @EXTENT, align 4
  %82 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %1, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @assertExactString(i32 5, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EXTENT, align 4
  %86 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %2, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @assertExactString(i32 5, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = call i32 @archive_string_free(%struct.archive_string* %4)
  %90 = call i32 @archive_string_free(%struct.archive_string* %3)
  %91 = call i32 @archive_string_free(%struct.archive_string* %2)
  %92 = call i32 @archive_string_free(%struct.archive_string* %1)
  ret void
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @assertExactString(i32, i32, i8*, i32) #1

declare dso_local i32 @archive_string_concat(%struct.archive_string*, %struct.archive_string*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_string* @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
