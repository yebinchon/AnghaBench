; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_xattr.c_archive_entry_xattr_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_xattr.c_archive_entry_xattr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.ae_xattr* }
%struct.ae_xattr = type { %struct.ae_xattr*, %struct.ae_xattr*, %struct.ae_xattr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_xattr_clear(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.ae_xattr*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 0
  %7 = load %struct.ae_xattr*, %struct.ae_xattr** %6, align 8
  %8 = icmp ne %struct.ae_xattr* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %4
  %10 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 0
  %12 = load %struct.ae_xattr*, %struct.ae_xattr** %11, align 8
  %13 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %12, i32 0, i32 2
  %14 = load %struct.ae_xattr*, %struct.ae_xattr** %13, align 8
  store %struct.ae_xattr* %14, %struct.ae_xattr** %3, align 8
  %15 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %16 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %15, i32 0, i32 0
  %17 = load %struct.ae_xattr*, %struct.ae_xattr** %16, align 8
  %18 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %17, i32 0, i32 1
  %19 = load %struct.ae_xattr*, %struct.ae_xattr** %18, align 8
  %20 = call i32 @free(%struct.ae_xattr* %19)
  %21 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %22 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %21, i32 0, i32 0
  %23 = load %struct.ae_xattr*, %struct.ae_xattr** %22, align 8
  %24 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %23, i32 0, i32 0
  %25 = load %struct.ae_xattr*, %struct.ae_xattr** %24, align 8
  %26 = call i32 @free(%struct.ae_xattr* %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %28 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %27, i32 0, i32 0
  %29 = load %struct.ae_xattr*, %struct.ae_xattr** %28, align 8
  %30 = call i32 @free(%struct.ae_xattr* %29)
  %31 = load %struct.ae_xattr*, %struct.ae_xattr** %3, align 8
  %32 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %33 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %32, i32 0, i32 0
  store %struct.ae_xattr* %31, %struct.ae_xattr** %33, align 8
  br label %4

34:                                               ; preds = %4
  %35 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %36 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %35, i32 0, i32 0
  store %struct.ae_xattr* null, %struct.ae_xattr** %36, align 8
  ret void
}

declare dso_local i32 @free(%struct.ae_xattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
