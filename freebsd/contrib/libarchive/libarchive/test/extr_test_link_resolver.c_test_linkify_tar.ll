; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_link_resolver.c_test_linkify_tar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_link_resolver.c_test_linkify_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_entry_linkresolver = type { i32 }

@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_linkify_tar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_linkify_tar() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive_entry_linkresolver*, align 8
  %4 = call %struct.archive_entry_linkresolver* (...) @archive_entry_linkresolver_new()
  store %struct.archive_entry_linkresolver* %4, %struct.archive_entry_linkresolver** %3, align 8
  %5 = icmp ne %struct.archive_entry_linkresolver* null, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %9 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
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
  %22 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %21, i32 1)
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
  %37 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %38 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %40 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %39, i32 2)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %42 = call i32 @archive_entry_set_ino(%struct.archive_entry* %41, i32 2)
  %43 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %44 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %43, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %46 = icmp eq %struct.archive_entry* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %50 = call i32 @archive_entry_pathname(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %53 = call i32 @archive_entry_hardlink(%struct.archive_entry* %52)
  %54 = call i32 @assertEqualString(i8* null, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %56 = call i32 @archive_entry_size(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualInt(i32 10, i32 %56)
  %58 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %59 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %58, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %61 = icmp eq %struct.archive_entry* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %65 = call i32 @archive_entry_pathname(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %68 = call i32 @archive_entry_hardlink(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %71 = call i32 @archive_entry_size(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualInt(i32 0, i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %74 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %76 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %75, i32 2)
  %77 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %78 = load i32, i32* @AE_IFDIR, align 4
  %79 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %77, i32 %78)
  %80 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %81 = call i32 @archive_entry_set_ino(%struct.archive_entry* %80, i32 3)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %83 = call i32 @archive_entry_set_hardlink(%struct.archive_entry* %82, i32* null)
  %84 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %85 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %84, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %86 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %87 = icmp eq %struct.archive_entry* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %91 = call i32 @archive_entry_pathname(%struct.archive_entry* %90)
  %92 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %94 = call i32 @archive_entry_hardlink(%struct.archive_entry* %93)
  %95 = call i32 @assertEqualString(i8* null, i32 %94)
  %96 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %97 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %96, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %98 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %99 = icmp eq %struct.archive_entry* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %103 = call i32 @archive_entry_pathname(%struct.archive_entry* %102)
  %104 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %106 = call i32 @archive_entry_hardlink(%struct.archive_entry* %105)
  %107 = call i32 @assertEqualString(i8* null, i32 %106)
  %108 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %109 = call i32 @archive_entry_free(%struct.archive_entry* %108)
  %110 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %111 = call i32 @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver* %110)
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

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_hardlink(%struct.archive_entry*, i32*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
