; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_copy_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_copy_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_mstring = type { i32, i32, i32, i64 }

@AES_SET_UTF8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_mstring_copy_utf8(%struct.archive_mstring* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_mstring*, align 8
  %5 = alloca i8*, align 8
  store %struct.archive_mstring* %0, %struct.archive_mstring** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.archive_mstring*, %struct.archive_mstring** %4, align 8
  %10 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i64, i64* @AES_SET_UTF8, align 8
  %13 = load %struct.archive_mstring*, %struct.archive_mstring** %4, align 8
  %14 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  %15 = load %struct.archive_mstring*, %struct.archive_mstring** %4, align 8
  %16 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %15, i32 0, i32 2
  %17 = call i32 @archive_string_empty(i32* %16)
  %18 = load %struct.archive_mstring*, %struct.archive_mstring** %4, align 8
  %19 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %18, i32 0, i32 1
  %20 = call i32 @archive_string_empty(i32* %19)
  %21 = load %struct.archive_mstring*, %struct.archive_mstring** %4, align 8
  %22 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %21, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = call i32 @archive_strncpy(i32* %22, i8* %23, i64 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %11, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @archive_string_empty(i32*) #1

declare dso_local i32 @archive_strncpy(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
