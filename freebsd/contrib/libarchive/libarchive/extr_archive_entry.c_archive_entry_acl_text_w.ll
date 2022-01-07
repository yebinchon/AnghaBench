; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_acl_text_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_acl_text_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @archive_entry_acl_text_w(%struct.archive_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @free(i32* %8)
  %10 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = call i64 @archive_entry_acl_text_compat(i32* %4)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %17 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %20 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @archive_acl_to_text_w(%struct.TYPE_2__* %17, i32* null, i32 %18, i32 %21)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %24 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  ret i32* %30
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @archive_entry_acl_text_compat(i32*) #1

declare dso_local i32* @archive_acl_to_text_w(%struct.TYPE_2__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
