; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_acl_text_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_acl_text_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.archive_string_conv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_archive_entry_acl_text_l(%struct.archive_entry* %0, i32 %1, i8** %2, i64* %3, %struct.archive_string_conv* %4) #0 {
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.archive_string_conv*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.archive_string_conv* %4, %struct.archive_string_conv** %10, align 8
  %11 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %12 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %17 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = call i64 @archive_entry_acl_text_compat(i32* %7)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %23 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %22, i32 0, i32 0
  %24 = load i64*, i64** %9, align 8
  %25 = bitcast i64* %24 to i32*
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %28 = call i8* @archive_acl_to_text_l(%struct.TYPE_2__* %23, i32* %25, i32 %26, %struct.archive_string_conv* %27)
  %29 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %30 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %32

32:                                               ; preds = %21, %5
  %33 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %34 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %8, align 8
  store i8* %36, i8** %37, align 8
  ret i32 0
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @archive_entry_acl_text_compat(i32*) #1

declare dso_local i8* @archive_acl_to_text_l(%struct.TYPE_2__*, i32*, i32, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
