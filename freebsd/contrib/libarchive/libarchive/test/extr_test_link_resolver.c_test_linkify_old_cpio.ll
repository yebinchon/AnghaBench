; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_link_resolver.c_test_linkify_old_cpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_link_resolver.c_test_linkify_old_cpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_entry_linkresolver = type { i32 }

@ARCHIVE_FORMAT_CPIO_POSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_linkify_old_cpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_linkify_old_cpio() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive_entry_linkresolver*, align 8
  %4 = call %struct.archive_entry_linkresolver* (...) @archive_entry_linkresolver_new()
  store %struct.archive_entry_linkresolver* %4, %struct.archive_entry_linkresolver** %3, align 8
  %5 = icmp ne %struct.archive_entry_linkresolver* null, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %9 = load i32, i32* @ARCHIVE_FORMAT_CPIO_POSIX, align 4
  %10 = call i32 @archive_entry_linkresolver_set_strategy(%struct.archive_entry_linkresolver* %8, i32 %9)
  %11 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %11, %struct.archive_entry** %1, align 8
  %12 = icmp ne %struct.archive_entry* null, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %16 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %18 = call i32 @archive_entry_set_ino(%struct.archive_entry* %17, i32 1)
  %19 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %20 = call i32 @archive_entry_set_dev(%struct.archive_entry* %19, i32 2)
  %21 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %22 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %21, i32 2)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %24 = call i32 @archive_entry_set_size(%struct.archive_entry* %23, i32 10)
  %25 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %26 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %25, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %28 = icmp eq %struct.archive_entry* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %32 = call i32 @archive_entry_size(%struct.archive_entry* %31)
  %33 = call i32 @assertEqualInt(i32 10, i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %35 = call i32 @archive_entry_pathname(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %38 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %37, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %40 = icmp eq %struct.archive_entry* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %44 = call i32 @archive_entry_pathname(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %47 = call i32 @archive_entry_hardlink(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualString(i8* null, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %50 = call i32 @archive_entry_size(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 10, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %53 = call i32 @archive_entry_free(%struct.archive_entry* %52)
  %54 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %55 = call i32 @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver* %54)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry_linkresolver* @archive_entry_linkresolver_new(...) #1

declare dso_local i32 @archive_entry_linkresolver_set_strategy(%struct.archive_entry_linkresolver*, i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_linkify(%struct.archive_entry_linkresolver*, %struct.archive_entry**, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
