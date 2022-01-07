; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkresolver_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkresolver_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry_linkresolver = type { %struct.archive_entry_linkresolver* }
%struct.links_entry = type { i32 }

@NEXT_ENTRY_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver* %0) #0 {
  %2 = alloca %struct.archive_entry_linkresolver*, align 8
  %3 = alloca %struct.links_entry*, align 8
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %2, align 8
  %4 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %5 = icmp eq %struct.archive_entry_linkresolver* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %10 = load i32, i32* @NEXT_ENTRY_ALL, align 4
  %11 = call %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver* %9, i32 %10)
  store %struct.links_entry* %11, %struct.links_entry** %3, align 8
  %12 = icmp ne %struct.links_entry* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %15 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @archive_entry_free(i32 %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %20 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %19, i32 0, i32 0
  %21 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %20, align 8
  %22 = call i32 @free(%struct.archive_entry_linkresolver* %21)
  %23 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %24 = call i32 @free(%struct.archive_entry_linkresolver* %23)
  br label %25

25:                                               ; preds = %18, %6
  ret void
}

declare dso_local %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver*, i32) #1

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @free(%struct.archive_entry_linkresolver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
