; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AE_SYMLINK_TYPE_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_entry* @archive_entry_clear(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  %4 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %5 = icmp eq %struct.archive_entry* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.archive_entry* null, %struct.archive_entry** %2, align 8
  br label %48

7:                                                ; preds = %1
  %8 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %9 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %8, i32 0, i32 9
  %10 = call i32 @archive_mstring_clean(i32* %9)
  %11 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %12 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %11, i32 0, i32 8
  %13 = call i32 @archive_mstring_clean(i32* %12)
  %14 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %15 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %14, i32 0, i32 7
  %16 = call i32 @archive_mstring_clean(i32* %15)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %17, i32 0, i32 6
  %19 = call i32 @archive_mstring_clean(i32* %18)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %21 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %20, i32 0, i32 5
  %22 = call i32 @archive_mstring_clean(i32* %21)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %24 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %23, i32 0, i32 4
  %25 = call i32 @archive_mstring_clean(i32* %24)
  %26 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %27 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %26, i32 0, i32 3
  %28 = call i32 @archive_mstring_clean(i32* %27)
  %29 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %30 = call i32 @archive_entry_copy_mac_metadata(%struct.archive_entry* %29, i32* null, i32 0)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %32 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %31, i32 0, i32 2
  %33 = call i32 @archive_acl_clear(i32* %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = call i32 @archive_entry_xattr_clear(%struct.archive_entry* %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %37 = call i32 @archive_entry_sparse_clear(%struct.archive_entry* %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %39 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @free(i32 %40)
  %42 = load i32, i32* @AE_SYMLINK_TYPE_UNDEFINED, align 4
  %43 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %44 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %46 = call i32 @memset(%struct.archive_entry* %45, i32 0, i32 40)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  store %struct.archive_entry* %47, %struct.archive_entry** %2, align 8
  br label %48

48:                                               ; preds = %7, %6
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  ret %struct.archive_entry* %49
}

declare dso_local i32 @archive_mstring_clean(i32*) #1

declare dso_local i32 @archive_entry_copy_mac_metadata(%struct.archive_entry*, i32*, i32) #1

declare dso_local i32 @archive_acl_clear(i32*) #1

declare dso_local i32 @archive_entry_xattr_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_sparse_clear(%struct.archive_entry*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memset(%struct.archive_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
