; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_quote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@safe_char = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*)* @mtree_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtree_quote(%struct.archive_string* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_string*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8, align 1
  store %struct.archive_string* %0, %struct.archive_string** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %65, %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = load i64*, i64** @safe_char, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %65

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @archive_strncat(%struct.archive_string* %28, i8* %29, i32 %35)
  br label %37

37:                                               ; preds = %27, %23
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %7, align 1
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 92, i8* %40, align 1
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = sdiv i32 %42, 64
  %44 = add nsw i32 %43, 48
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = sdiv i32 %48, 8
  %50 = srem i32 %49, 8
  %51 = add nsw i32 %50, 48
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %52, i8* %53, align 1
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = srem i32 %55, 8
  %57 = add nsw i32 %56, 48
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 %58, i8* %59, align 1
  %60 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %62 = call i32 @archive_strncat(%struct.archive_string* %60, i8* %61, i32 4)
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %37, %22
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %9

68:                                               ; preds = %9
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @archive_strncat(%struct.archive_string* %73, i8* %74, i32 %80)
  br label %82

82:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
