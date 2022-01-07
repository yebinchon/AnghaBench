; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_acl_text.c_compare_acl_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_acl_text.c_compare_acl_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*, i32, i8*)* @compare_acl_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_acl_text(%struct.archive_entry* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @convert_s_to_ws(i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @archive_entry_acl_to_text(%struct.archive_entry* %13, i32* %10, i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @assertEqualString(i8* %16, i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @assertEqualInt(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @archive_entry_acl_to_text_w(%struct.archive_entry* %27, i32* %10, i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @assertEqualWString(i8* %30, i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @wcslen(i8* %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @assertEqualInt(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  ret void
}

declare dso_local i8* @convert_s_to_ws(i8*) #1

declare dso_local i8* @archive_entry_acl_to_text(%struct.archive_entry*, i32*, i32) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @archive_entry_acl_to_text_w(%struct.archive_entry*, i32*, i32) #1

declare dso_local i32 @assertEqualWString(i8*, i8*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
