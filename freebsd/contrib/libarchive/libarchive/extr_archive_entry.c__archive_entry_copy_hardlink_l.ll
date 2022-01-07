; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_copy_hardlink_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c__archive_entry_copy_hardlink_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32 }
%struct.archive_string_conv = type { i32 }

@AE_SET_HARDLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_archive_entry_copy_hardlink_l(%struct.archive_entry* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.archive_string_conv*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %8, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 1
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %15 = call i32 @archive_mstring_copy_mbs_len_l(i32* %11, i8* %12, i64 %13, %struct.archive_string_conv* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* @AE_SET_HARDLINK, align 4
  %23 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %24 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %34

27:                                               ; preds = %18, %4
  %28 = load i32, i32* @AE_SET_HARDLINK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %31 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @archive_mstring_copy_mbs_len_l(i32*, i8*, i64, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
