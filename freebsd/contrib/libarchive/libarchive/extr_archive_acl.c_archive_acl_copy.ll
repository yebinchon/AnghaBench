; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { %struct.archive_acl_entry*, i32 }
%struct.archive_acl_entry = type { %struct.archive_acl_entry*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_acl_copy(%struct.archive_acl* %0, %struct.archive_acl* %1) #0 {
  %3 = alloca %struct.archive_acl*, align 8
  %4 = alloca %struct.archive_acl*, align 8
  %5 = alloca %struct.archive_acl_entry*, align 8
  %6 = alloca %struct.archive_acl_entry*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %3, align 8
  store %struct.archive_acl* %1, %struct.archive_acl** %4, align 8
  %7 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %8 = call i32 @archive_acl_clear(%struct.archive_acl* %7)
  %9 = load %struct.archive_acl*, %struct.archive_acl** %4, align 8
  %10 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %13 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.archive_acl*, %struct.archive_acl** %4, align 8
  %15 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %14, i32 0, i32 0
  %16 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %15, align 8
  store %struct.archive_acl_entry* %16, %struct.archive_acl_entry** %5, align 8
  br label %17

17:                                               ; preds = %43, %2
  %18 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %19 = icmp ne %struct.archive_acl_entry* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %22 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %23 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %26 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %29 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %32 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl* %21, i32 %24, i32 %27, i32 %30, i32 %33)
  store %struct.archive_acl_entry* %34, %struct.archive_acl_entry** %6, align 8
  %35 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  %36 = icmp ne %struct.archive_acl_entry* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  %39 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %38, i32 0, i32 1
  %40 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %41 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %40, i32 0, i32 1
  %42 = call i32 @archive_mstring_copy(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %37, %20
  %44 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %5, align 8
  %45 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %44, i32 0, i32 0
  %46 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %45, align 8
  store %struct.archive_acl_entry* %46, %struct.archive_acl_entry** %5, align 8
  br label %17

47:                                               ; preds = %17
  ret void
}

declare dso_local i32 @archive_acl_clear(%struct.archive_acl*) #1

declare dso_local %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl*, i32, i32, i32, i32) #1

declare dso_local i32 @archive_mstring_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
