; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_link_resolver.c_test_linkify_new_cpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_link_resolver.c_test_linkify_new_cpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_entry_linkresolver = type { i32 }

@ARCHIVE_FORMAT_CPIO_SVR4_NOCRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"test4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_linkify_new_cpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_linkify_new_cpio() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive_entry_linkresolver*, align 8
  %4 = call %struct.archive_entry_linkresolver* (...) @archive_entry_linkresolver_new()
  store %struct.archive_entry_linkresolver* %4, %struct.archive_entry_linkresolver** %3, align 8
  %5 = icmp ne %struct.archive_entry_linkresolver* null, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %9 = load i32, i32* @ARCHIVE_FORMAT_CPIO_SVR4_NOCRC, align 4
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
  %40 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %39, i32 3)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %42 = call i32 @archive_entry_set_ino(%struct.archive_entry* %41, i32 2)
  %43 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %44 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %43, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %46 = icmp eq %struct.archive_entry* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = icmp eq %struct.archive_entry* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %53, %struct.archive_entry** %1, align 8
  %54 = icmp ne %struct.archive_entry* null, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %58 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %60 = call i32 @archive_entry_set_ino(%struct.archive_entry* %59, i32 2)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %62 = call i32 @archive_entry_set_dev(%struct.archive_entry* %61, i32 2)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %64 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %63, i32 2)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %66 = call i32 @archive_entry_set_size(%struct.archive_entry* %65, i32 10)
  %67 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %68 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %67, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %70 = call i32 @archive_entry_pathname(%struct.archive_entry* %69)
  %71 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %73 = call i32 @archive_entry_size(%struct.archive_entry* %72)
  %74 = call i32 @assertEqualInt(i32 0, i32 %73)
  %75 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %76 = call i32 @archive_entry_free(%struct.archive_entry* %75)
  %77 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %78 = icmp eq %struct.archive_entry* null, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %82 = call i32 @archive_entry_free(%struct.archive_entry* %81)
  %83 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %83, %struct.archive_entry** %1, align 8
  %84 = icmp ne %struct.archive_entry* null, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %88 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %90 = call i32 @archive_entry_set_ino(%struct.archive_entry* %89, i32 2)
  %91 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %92 = call i32 @archive_entry_set_dev(%struct.archive_entry* %91, i32 2)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %94 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %93, i32 3)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %96 = call i32 @archive_entry_set_size(%struct.archive_entry* %95, i32 10)
  %97 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %98 = call i32 @archive_entry_linkify(%struct.archive_entry_linkresolver* %97, %struct.archive_entry** %1, %struct.archive_entry** %2)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %100 = call i32 @archive_entry_pathname(%struct.archive_entry* %99)
  %101 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %103 = call i32 @archive_entry_size(%struct.archive_entry* %102)
  %104 = call i32 @assertEqualInt(i32 0, i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %106 = call i32 @archive_entry_pathname(%struct.archive_entry* %105)
  %107 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %109 = call i32 @archive_entry_size(%struct.archive_entry* %108)
  %110 = call i32 @assertEqualInt(i32 10, i32 %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %112 = call i32 @archive_entry_free(%struct.archive_entry* %111)
  %113 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %114 = call i32 @archive_entry_free(%struct.archive_entry* %113)
  %115 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %116 = call i32 @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver* %115)
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

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_linkresolver_free(%struct.archive_entry_linkresolver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
