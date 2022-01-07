; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_add_pax_attr_binary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_add_pax_attr_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*, i8*, i64)* @add_pax_attr_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pax_attr_binary(%struct.archive_string* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.archive_string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [13 x i8], align 1
  store %struct.archive_string* %0, %struct.archive_string** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 1, %16
  %18 = add nsw i32 %17, 1
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %27, %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 10
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %32, 10
  store i32 %33, i32* %12, align 4
  br label %24

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 12
  store i8 0, i8* %44, align 1
  %45 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %46 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 13
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i8* @format_int(i8* %48, i32 %51)
  %53 = call i32 @archive_strcat(%struct.archive_string* %45, i8* %52)
  %54 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %55 = call i32 @archive_strappend_char(%struct.archive_string* %54, i8 signext 32)
  %56 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @archive_strcat(%struct.archive_string* %56, i8* %57)
  %59 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %60 = call i32 @archive_strappend_char(%struct.archive_string* %59, i8 signext 61)
  %61 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @archive_array_append(%struct.archive_string* %61, i8* %62, i64 %63)
  %65 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %66 = call i32 @archive_strappend_char(%struct.archive_string* %65, i8 signext 10)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i8* @format_int(i8*, i32) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

declare dso_local i32 @archive_array_append(%struct.archive_string*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
