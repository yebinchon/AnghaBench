; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_next_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.links_entry = type { %struct.links_entry*, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { %struct.links_entry* }
%struct.archive_entry_linkresolver = type { i64, %struct.links_entry*, i32, %struct.links_entry** }

@NEXT_ENTRY_DEFERRED = common dso_local global i32 0, align 4
@NEXT_ENTRY_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.links_entry* (%struct.archive_entry_linkresolver*, i32)* @next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver* %0, i32 %1) #0 {
  %3 = alloca %struct.links_entry*, align 8
  %4 = alloca %struct.archive_entry_linkresolver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.links_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %9 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %8, i32 0, i32 1
  %10 = load %struct.links_entry*, %struct.links_entry** %9, align 8
  %11 = icmp ne %struct.links_entry* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %14 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %13, i32 0, i32 1
  %15 = load %struct.links_entry*, %struct.links_entry** %14, align 8
  %16 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @archive_entry_free(i32* %17)
  %19 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %20 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %19, i32 0, i32 1
  %21 = load %struct.links_entry*, %struct.links_entry** %20, align 8
  %22 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @archive_entry_free(i32* %23)
  %25 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %26 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %25, i32 0, i32 1
  %27 = load %struct.links_entry*, %struct.links_entry** %26, align 8
  %28 = call i32 @free(%struct.links_entry* %27)
  %29 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %30 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %29, i32 0, i32 1
  store %struct.links_entry* null, %struct.links_entry** %30, align 8
  br label %31

31:                                               ; preds = %12, %2
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %119, %31
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %35 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %122

38:                                               ; preds = %32
  %39 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %40 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %39, i32 0, i32 3
  %41 = load %struct.links_entry**, %struct.links_entry*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %41, i64 %42
  %44 = load %struct.links_entry*, %struct.links_entry** %43, align 8
  store %struct.links_entry* %44, %struct.links_entry** %6, align 8
  br label %45

45:                                               ; preds = %114, %38
  %46 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %47 = icmp ne %struct.links_entry* %46, null
  br i1 %47, label %48, label %118

48:                                               ; preds = %45
  %49 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %50 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @NEXT_ENTRY_DEFERRED, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %114

59:                                               ; preds = %53, %48
  %60 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %61 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @NEXT_ENTRY_PARTIAL, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %114

70:                                               ; preds = %64, %59
  %71 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %72 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %71, i32 0, i32 0
  %73 = load %struct.links_entry*, %struct.links_entry** %72, align 8
  %74 = icmp ne %struct.links_entry* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %77 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %80 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %79, i32 0, i32 0
  %81 = load %struct.links_entry*, %struct.links_entry** %80, align 8
  %82 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %81, i32 0, i32 1
  store %struct.TYPE_2__* %78, %struct.TYPE_2__** %82, align 8
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %85 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp ne %struct.TYPE_2__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %90 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %89, i32 0, i32 0
  %91 = load %struct.links_entry*, %struct.links_entry** %90, align 8
  %92 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %93 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store %struct.links_entry* %91, %struct.links_entry** %95, align 8
  br label %105

96:                                               ; preds = %83
  %97 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %98 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %97, i32 0, i32 0
  %99 = load %struct.links_entry*, %struct.links_entry** %98, align 8
  %100 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %101 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %100, i32 0, i32 3
  %102 = load %struct.links_entry**, %struct.links_entry*** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %102, i64 %103
  store %struct.links_entry* %99, %struct.links_entry** %104, align 8
  br label %105

105:                                              ; preds = %96, %88
  %106 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %107 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %111 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %112 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %111, i32 0, i32 1
  store %struct.links_entry* %110, %struct.links_entry** %112, align 8
  %113 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  store %struct.links_entry* %113, %struct.links_entry** %3, align 8
  br label %123

114:                                              ; preds = %69, %58
  %115 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %116 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %115, i32 0, i32 0
  %117 = load %struct.links_entry*, %struct.links_entry** %116, align 8
  store %struct.links_entry* %117, %struct.links_entry** %6, align 8
  br label %45

118:                                              ; preds = %45
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %7, align 8
  br label %32

122:                                              ; preds = %32
  store %struct.links_entry* null, %struct.links_entry** %3, align 8
  br label %123

123:                                              ; preds = %122, %105
  %124 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  ret %struct.links_entry* %124
}

declare dso_local i32 @archive_entry_free(i32*) #1

declare dso_local i32 @free(%struct.links_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
