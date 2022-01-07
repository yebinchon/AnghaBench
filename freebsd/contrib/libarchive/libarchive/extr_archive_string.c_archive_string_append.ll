; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_string* (%struct.archive_string*, i8*, i64)* @archive_string_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_string* @archive_string_append(%struct.archive_string* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca %struct.archive_string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %9 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %10 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %11, %12
  %14 = add i64 %13, 1
  %15 = call i32* @archive_string_ensure(%struct.archive_string* %8, i64 %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.archive_string* null, %struct.archive_string** %4, align 8
  br label %46

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %23 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %26 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @memmove(i64* %28, i8* %29, i64 %30)
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %35 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %39 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %42 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 0, i64* %44, align 8
  %45 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  store %struct.archive_string* %45, %struct.archive_string** %4, align 8
  br label %46

46:                                               ; preds = %32, %17
  %47 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  ret %struct.archive_string* %47
}

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @memmove(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
