; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_find_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.links_entry = type { i64, i64, %struct.links_entry*, %struct.TYPE_2__*, %struct.archive_entry*, %struct.archive_entry* }
%struct.TYPE_2__ = type { %struct.links_entry* }
%struct.archive_entry_linkresolver = type { i32, %struct.links_entry*, i32, %struct.links_entry** }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.links_entry* (%struct.archive_entry_linkresolver*, %struct.archive_entry*)* @find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.links_entry* @find_entry(%struct.archive_entry_linkresolver* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.links_entry*, align 8
  %4 = alloca %struct.archive_entry_linkresolver*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.links_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %11 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %12 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %11, i32 0, i32 1
  %13 = load %struct.links_entry*, %struct.links_entry** %12, align 8
  %14 = icmp ne %struct.links_entry* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %17 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %16, i32 0, i32 1
  %18 = load %struct.links_entry*, %struct.links_entry** %17, align 8
  %19 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %18, i32 0, i32 4
  %20 = load %struct.archive_entry*, %struct.archive_entry** %19, align 8
  %21 = call i32 @archive_entry_free(%struct.archive_entry* %20)
  %22 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %23 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %22, i32 0, i32 1
  %24 = load %struct.links_entry*, %struct.links_entry** %23, align 8
  %25 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %24, i32 0, i32 5
  %26 = load %struct.archive_entry*, %struct.archive_entry** %25, align 8
  %27 = call i32 @archive_entry_free(%struct.archive_entry* %26)
  %28 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %29 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %28, i32 0, i32 1
  %30 = load %struct.links_entry*, %struct.links_entry** %29, align 8
  %31 = call i32 @free(%struct.links_entry* %30)
  %32 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %33 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %32, i32 0, i32 1
  store %struct.links_entry* null, %struct.links_entry** %33, align 8
  br label %34

34:                                               ; preds = %15, %2
  %35 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %36 = call i32 @archive_entry_dev(%struct.archive_entry* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %38 = call i32 @archive_entry_ino64(%struct.archive_entry* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %39, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %45 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = and i64 %43, %48
  store i64 %49, i64* %8, align 8
  %50 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %51 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %50, i32 0, i32 3
  %52 = load %struct.links_entry**, %struct.links_entry*** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %52, i64 %53
  %55 = load %struct.links_entry*, %struct.links_entry** %54, align 8
  store %struct.links_entry* %55, %struct.links_entry** %6, align 8
  br label %56

56:                                               ; preds = %144, %34
  %57 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %58 = icmp ne %struct.links_entry* %57, null
  br i1 %58, label %59, label %148

59:                                               ; preds = %56
  %60 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %61 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %143

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %68 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %67, i32 0, i32 4
  %69 = load %struct.archive_entry*, %struct.archive_entry** %68, align 8
  %70 = call i32 @archive_entry_dev(%struct.archive_entry* %69)
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %143

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %75 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %74, i32 0, i32 4
  %76 = load %struct.archive_entry*, %struct.archive_entry** %75, align 8
  %77 = call i32 @archive_entry_ino64(%struct.archive_entry* %76)
  %78 = icmp eq i32 %73, %77
  br i1 %78, label %79, label %143

79:                                               ; preds = %72
  %80 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %81 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %85 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  store %struct.links_entry* %89, %struct.links_entry** %3, align 8
  br label %149

90:                                               ; preds = %79
  %91 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %92 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = icmp ne %struct.TYPE_2__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %97 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %96, i32 0, i32 2
  %98 = load %struct.links_entry*, %struct.links_entry** %97, align 8
  %99 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %100 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store %struct.links_entry* %98, %struct.links_entry** %102, align 8
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %105 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %104, i32 0, i32 2
  %106 = load %struct.links_entry*, %struct.links_entry** %105, align 8
  %107 = icmp ne %struct.links_entry* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %110 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %113 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %112, i32 0, i32 2
  %114 = load %struct.links_entry*, %struct.links_entry** %113, align 8
  %115 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %114, i32 0, i32 3
  store %struct.TYPE_2__* %111, %struct.TYPE_2__** %115, align 8
  br label %116

116:                                              ; preds = %108, %103
  %117 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %118 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %117, i32 0, i32 3
  %119 = load %struct.links_entry**, %struct.links_entry*** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %119, i64 %120
  %122 = load %struct.links_entry*, %struct.links_entry** %121, align 8
  %123 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %124 = icmp eq %struct.links_entry* %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %116
  %126 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %127 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %126, i32 0, i32 2
  %128 = load %struct.links_entry*, %struct.links_entry** %127, align 8
  %129 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %130 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %129, i32 0, i32 3
  %131 = load %struct.links_entry**, %struct.links_entry*** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %131, i64 %132
  store %struct.links_entry* %128, %struct.links_entry** %133, align 8
  br label %134

134:                                              ; preds = %125, %116
  %135 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %136 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %140 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %141 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %140, i32 0, i32 1
  store %struct.links_entry* %139, %struct.links_entry** %141, align 8
  %142 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  store %struct.links_entry* %142, %struct.links_entry** %3, align 8
  br label %149

143:                                              ; preds = %72, %65, %59
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %146 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %145, i32 0, i32 2
  %147 = load %struct.links_entry*, %struct.links_entry** %146, align 8
  store %struct.links_entry* %147, %struct.links_entry** %6, align 8
  br label %56

148:                                              ; preds = %56
  store %struct.links_entry* null, %struct.links_entry** %3, align 8
  br label %149

149:                                              ; preds = %148, %134, %88
  %150 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  ret %struct.links_entry* %150
}

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @free(%struct.links_entry*) #1

declare dso_local i32 @archive_entry_dev(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ino64(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
