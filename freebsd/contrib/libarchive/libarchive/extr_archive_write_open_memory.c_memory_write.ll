; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_memory.c_memory_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_memory.c_memory_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_memory_data = type { i64, i64, i64, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Buffer exhausted\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i8*, i64)* @memory_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_write(%struct.archive* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.write_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.write_memory_data*
  store %struct.write_memory_data* %12, %struct.write_memory_data** %10, align 8
  %13 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %14 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %15, %16
  %18 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %19 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.archive*, %struct.archive** %6, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @archive_set_error(%struct.archive* %23, i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %26, i64* %5, align 8
  br label %56

27:                                               ; preds = %4
  %28 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %29 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %32 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @memcpy(i64 %34, i8* %35, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %40 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %44 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  %48 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %49 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.write_memory_data*, %struct.write_memory_data** %10, align 8
  %52 = getelementptr inbounds %struct.write_memory_data, %struct.write_memory_data* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %27
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %22
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
