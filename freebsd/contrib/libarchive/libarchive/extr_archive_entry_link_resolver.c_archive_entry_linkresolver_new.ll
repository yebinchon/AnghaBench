; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkresolver_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkresolver_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry_linkresolver = type { i32, i32* }

@links_cache_initial_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_entry_linkresolver* @archive_entry_linkresolver_new() #0 {
  %1 = alloca %struct.archive_entry_linkresolver*, align 8
  %2 = alloca %struct.archive_entry_linkresolver*, align 8
  %3 = load i32, i32* @links_cache_initial_size, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @links_cache_initial_size, align 4
  %7 = load i32, i32* @links_cache_initial_size, align 4
  %8 = sub nsw i32 %7, 1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %0
  store %struct.archive_entry_linkresolver* null, %struct.archive_entry_linkresolver** %1, align 8
  br label %38

12:                                               ; preds = %5
  %13 = call i8* @calloc(i32 1, i32 16)
  %14 = bitcast i8* %13 to %struct.archive_entry_linkresolver*
  store %struct.archive_entry_linkresolver* %14, %struct.archive_entry_linkresolver** %2, align 8
  %15 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %16 = icmp eq %struct.archive_entry_linkresolver* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.archive_entry_linkresolver* null, %struct.archive_entry_linkresolver** %1, align 8
  br label %38

18:                                               ; preds = %12
  %19 = load i32, i32* @links_cache_initial_size, align 4
  %20 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %21 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %23 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @calloc(i32 %24, i32 4)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %28 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %30 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %35 = call i32 @free(%struct.archive_entry_linkresolver* %34)
  store %struct.archive_entry_linkresolver* null, %struct.archive_entry_linkresolver** %1, align 8
  br label %38

36:                                               ; preds = %18
  %37 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  store %struct.archive_entry_linkresolver* %37, %struct.archive_entry_linkresolver** %1, align 8
  br label %38

38:                                               ; preds = %36, %33, %17, %11
  %39 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %1, align 8
  ret %struct.archive_entry_linkresolver* %39
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.archive_entry_linkresolver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
