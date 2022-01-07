; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i64, i64, i32*, %struct.archive_acl_entry*, %struct.archive_acl_entry*, %struct.archive_acl_entry* }
%struct.archive_acl_entry = type { i32, %struct.archive_acl_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_acl_clear(%struct.archive_acl* %0) #0 {
  %2 = alloca %struct.archive_acl*, align 8
  %3 = alloca %struct.archive_acl_entry*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %6 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %5, i32 0, i32 5
  %7 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  %8 = icmp ne %struct.archive_acl_entry* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %11 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %10, i32 0, i32 5
  %12 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %11, align 8
  %13 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %12, i32 0, i32 1
  %14 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %13, align 8
  store %struct.archive_acl_entry* %14, %struct.archive_acl_entry** %3, align 8
  %15 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %16 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %15, i32 0, i32 5
  %17 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %18 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %17, i32 0, i32 0
  %19 = call i32 @archive_mstring_clean(i32* %18)
  %20 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %21 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %20, i32 0, i32 5
  %22 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %21, align 8
  %23 = call i32 @free(%struct.archive_acl_entry* %22)
  %24 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %3, align 8
  %25 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %26 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %25, i32 0, i32 5
  store %struct.archive_acl_entry* %24, %struct.archive_acl_entry** %26, align 8
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %29 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %28, i32 0, i32 4
  %30 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %29, align 8
  %31 = call i32 @free(%struct.archive_acl_entry* %30)
  %32 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %33 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %32, i32 0, i32 4
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %33, align 8
  %34 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %35 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %34, i32 0, i32 3
  %36 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %35, align 8
  %37 = call i32 @free(%struct.archive_acl_entry* %36)
  %38 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %39 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %38, i32 0, i32 3
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %39, align 8
  %40 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %41 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %43 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.archive_acl*, %struct.archive_acl** %2, align 8
  %45 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  ret void
}

declare dso_local i32 @archive_mstring_clean(i32*) #1

declare dso_local i32 @free(%struct.archive_acl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
