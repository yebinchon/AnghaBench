; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verifyB.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verifyB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Unsupported gzip\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unsupported bzip2\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Unsupported xar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @verifyB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verifyB(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %6, align 8
  %9 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %9, %struct.archive** %5, align 8
  %10 = icmp ne %struct.archive* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* @ARCHIVE_OK, align 8
  %14 = load %struct.archive*, %struct.archive** %5, align 8
  %15 = call i64 @archive_read_support_filter_gzip(%struct.archive* %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = call i32 @skipping(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @ARCHIVE_OK, align 8
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = call i32 @archive_read_free(%struct.archive* %20)
  %22 = call i32 @assertEqualInt(i64 %19, i32 %21)
  br label %113

23:                                               ; preds = %2
  %24 = load i64, i64* @ARCHIVE_OK, align 8
  %25 = load %struct.archive*, %struct.archive** %5, align 8
  %26 = call i64 @archive_read_support_filter_bzip2(%struct.archive* %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = call i32 @skipping(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @ARCHIVE_OK, align 8
  %31 = load %struct.archive*, %struct.archive** %5, align 8
  %32 = call i32 @archive_read_free(%struct.archive* %31)
  %33 = call i32 @assertEqualInt(i64 %30, i32 %32)
  br label %113

34:                                               ; preds = %23
  %35 = load i64, i64* @ARCHIVE_OK, align 8
  %36 = load %struct.archive*, %struct.archive** %5, align 8
  %37 = call i64 @archive_read_support_format_xar(%struct.archive* %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = call i32 @skipping(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* @ARCHIVE_OK, align 8
  %42 = load %struct.archive*, %struct.archive** %5, align 8
  %43 = call i32 @archive_read_free(%struct.archive* %42)
  %44 = call i32 @assertEqualInt(i64 %41, i32 %43)
  br label %113

45:                                               ; preds = %34
  %46 = load %struct.archive*, %struct.archive** %5, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @archive_read_open_memory(%struct.archive* %46, i8* %47, i64 %48)
  %50 = icmp eq i64 0, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assertA(i32 %51)
  %53 = load %struct.archive*, %struct.archive** %5, align 8
  %54 = call i64 @archive_read_next_header(%struct.archive* %53, %struct.archive_entry** %6)
  %55 = icmp eq i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assertA(i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %59 = call i64 @archive_entry_size(%struct.archive_entry* %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, 12
  %62 = zext i1 %61 to i32
  %63 = call i32 @assertA(i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @malloc(i64 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* null, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assertA(i32 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.archive*, %struct.archive** %5, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @archive_read_data(%struct.archive* %72, i8* %73, i64 %74)
  %76 = icmp eq i64 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assertA(i32 %77)
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.archive*, %struct.archive** %5, align 8
  %82 = call i64 @archive_read_next_header(%struct.archive* %81, %struct.archive_entry** %6)
  %83 = icmp eq i64 0, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assertA(i32 %84)
  %86 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %87 = call i64 @archive_entry_size(%struct.archive_entry* %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp eq i64 %88, 12
  %90 = zext i1 %89 to i32
  %91 = call i32 @assertA(i32 %90)
  %92 = load i64, i64* %7, align 8
  %93 = call i64 @malloc(i64 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ne i8* null, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assertA(i32 %97)
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.archive*, %struct.archive** %5, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @archive_read_data(%struct.archive* %100, i8* %101, i64 %102)
  %104 = icmp eq i64 %99, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assertA(i32 %105)
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i64, i64* @ARCHIVE_OK, align 8
  %110 = load %struct.archive*, %struct.archive** %5, align 8
  %111 = call i32 @archive_read_free(%struct.archive* %110)
  %112 = call i32 @assertEqualInt(i64 %109, i32 %111)
  br label %113

113:                                              ; preds = %45, %39, %28, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i64 @archive_read_support_filter_gzip(%struct.archive*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertEqualInt(i64, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i64 @archive_read_support_filter_bzip2(%struct.archive*) #1

declare dso_local i64 @archive_read_support_format_xar(%struct.archive*) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
