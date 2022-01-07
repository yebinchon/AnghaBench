; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_hardlink_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_hardlink_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32 }
%struct.archive_string_conv = type { i32 }

@AE_SET_HARDLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_archive_entry_hardlink_l(%struct.archive_entry* %0, i8** %1, i64* %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AE_SET_HARDLINK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8**, i8*** %7, align 8
  store i8* null, i8** %17, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %26

19:                                               ; preds = %4
  %20 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %21 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %20, i32 0, i32 1
  %22 = load i8**, i8*** %7, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %25 = call i32 @archive_mstring_get_mbs_l(i32* %21, i8** %22, i64* %23, %struct.archive_string_conv* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @archive_mstring_get_mbs_l(i32*, i8**, i64*, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
