; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry_linkresolver = type { i32 }
%struct.archive_entry = type { i32 }
%struct.links_entry = type { %struct.archive_entry*, i32, i32 }

@NEXT_ENTRY_DEFERRED = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i64 0, align 8
@AE_IFBLK = common dso_local global i64 0, align 8
@AE_IFCHR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_linkify(%struct.archive_entry_linkresolver* %0, %struct.archive_entry** %1, %struct.archive_entry** %2) #0 {
  %4 = alloca %struct.archive_entry_linkresolver*, align 8
  %5 = alloca %struct.archive_entry**, align 8
  %6 = alloca %struct.archive_entry**, align 8
  %7 = alloca %struct.links_entry*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %4, align 8
  store %struct.archive_entry** %1, %struct.archive_entry*** %5, align 8
  store %struct.archive_entry** %2, %struct.archive_entry*** %6, align 8
  %9 = load %struct.archive_entry**, %struct.archive_entry*** %6, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %9, align 8
  %10 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %11 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %12 = icmp eq %struct.archive_entry* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %15 = load i32, i32* @NEXT_ENTRY_DEFERRED, align 4
  %16 = call %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver* %14, i32 %15)
  store %struct.links_entry* %16, %struct.links_entry** %7, align 8
  %17 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %18 = icmp ne %struct.links_entry* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %21 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %20, i32 0, i32 0
  %22 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %23 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  store %struct.archive_entry* %22, %struct.archive_entry** %23, align 8
  %24 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %25 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %24, i32 0, i32 0
  store %struct.archive_entry* null, %struct.archive_entry** %25, align 8
  br label %26

26:                                               ; preds = %19, %13
  br label %158

27:                                               ; preds = %3
  %28 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %29 = load %struct.archive_entry*, %struct.archive_entry** %28, align 8
  %30 = call i32 @archive_entry_nlink(%struct.archive_entry* %29)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %158

33:                                               ; preds = %27
  %34 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %35 = load %struct.archive_entry*, %struct.archive_entry** %34, align 8
  %36 = call i64 @archive_entry_filetype(%struct.archive_entry* %35)
  %37 = load i64, i64* @AE_IFDIR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %41 = load %struct.archive_entry*, %struct.archive_entry** %40, align 8
  %42 = call i64 @archive_entry_filetype(%struct.archive_entry* %41)
  %43 = load i64, i64* @AE_IFBLK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %47 = load %struct.archive_entry*, %struct.archive_entry** %46, align 8
  %48 = call i64 @archive_entry_filetype(%struct.archive_entry* %47)
  %49 = load i64, i64* @AE_IFCHR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39, %33
  br label %158

52:                                               ; preds = %45
  %53 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %54 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %156 [
    i32 128, label %56
    i32 131, label %80
    i32 129, label %101
    i32 130, label %102
  ]

56:                                               ; preds = %52
  %57 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %58 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %59 = load %struct.archive_entry*, %struct.archive_entry** %58, align 8
  %60 = call %struct.links_entry* @find_entry(%struct.archive_entry_linkresolver* %57, %struct.archive_entry* %59)
  store %struct.links_entry* %60, %struct.links_entry** %7, align 8
  %61 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %62 = icmp ne %struct.links_entry* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %64, align 8
  %66 = call i32 @archive_entry_unset_size(%struct.archive_entry* %65)
  %67 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %68 = load %struct.archive_entry*, %struct.archive_entry** %67, align 8
  %69 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %70 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @archive_entry_pathname(i32 %71)
  %73 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %68, i32 %72)
  br label %79

74:                                               ; preds = %56
  %75 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %76 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %77 = load %struct.archive_entry*, %struct.archive_entry** %76, align 8
  %78 = call %struct.links_entry* @insert_entry(%struct.archive_entry_linkresolver* %75, %struct.archive_entry* %77)
  br label %79

79:                                               ; preds = %74, %63
  br label %158

80:                                               ; preds = %52
  %81 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %82 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %83 = load %struct.archive_entry*, %struct.archive_entry** %82, align 8
  %84 = call %struct.links_entry* @find_entry(%struct.archive_entry_linkresolver* %81, %struct.archive_entry* %83)
  store %struct.links_entry* %84, %struct.links_entry** %7, align 8
  %85 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %86 = icmp ne %struct.links_entry* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %89 = load %struct.archive_entry*, %struct.archive_entry** %88, align 8
  %90 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %91 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @archive_entry_pathname(i32 %92)
  %94 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %89, i32 %93)
  br label %100

95:                                               ; preds = %80
  %96 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %97 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %98 = load %struct.archive_entry*, %struct.archive_entry** %97, align 8
  %99 = call %struct.links_entry* @insert_entry(%struct.archive_entry_linkresolver* %96, %struct.archive_entry* %98)
  br label %100

100:                                              ; preds = %95, %87
  br label %158

101:                                              ; preds = %52
  br label %158

102:                                              ; preds = %52
  %103 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %104 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %105 = load %struct.archive_entry*, %struct.archive_entry** %104, align 8
  %106 = call %struct.links_entry* @find_entry(%struct.archive_entry_linkresolver* %103, %struct.archive_entry* %105)
  store %struct.links_entry* %106, %struct.links_entry** %7, align 8
  %107 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %108 = icmp ne %struct.links_entry* %107, null
  br i1 %108, label %109, label %141

109:                                              ; preds = %102
  %110 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %111 = load %struct.archive_entry*, %struct.archive_entry** %110, align 8
  store %struct.archive_entry* %111, %struct.archive_entry** %8, align 8
  %112 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %113 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %112, i32 0, i32 0
  %114 = load %struct.archive_entry*, %struct.archive_entry** %113, align 8
  %115 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  store %struct.archive_entry* %114, %struct.archive_entry** %115, align 8
  %116 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %117 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %118 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %117, i32 0, i32 0
  store %struct.archive_entry* %116, %struct.archive_entry** %118, align 8
  %119 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %120 = load %struct.archive_entry*, %struct.archive_entry** %119, align 8
  %121 = call i32 @archive_entry_unset_size(%struct.archive_entry* %120)
  %122 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %123 = load %struct.archive_entry*, %struct.archive_entry** %122, align 8
  %124 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %125 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @archive_entry_pathname(i32 %126)
  %128 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %123, i32 %127)
  %129 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %130 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %109
  %134 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %135 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %134, i32 0, i32 0
  %136 = load %struct.archive_entry*, %struct.archive_entry** %135, align 8
  %137 = load %struct.archive_entry**, %struct.archive_entry*** %6, align 8
  store %struct.archive_entry* %136, %struct.archive_entry** %137, align 8
  %138 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %139 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %138, i32 0, i32 0
  store %struct.archive_entry* null, %struct.archive_entry** %139, align 8
  br label %140

140:                                              ; preds = %133, %109
  br label %155

141:                                              ; preds = %102
  %142 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %143 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %144 = load %struct.archive_entry*, %struct.archive_entry** %143, align 8
  %145 = call %struct.links_entry* @insert_entry(%struct.archive_entry_linkresolver* %142, %struct.archive_entry* %144)
  store %struct.links_entry* %145, %struct.links_entry** %7, align 8
  %146 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %147 = icmp eq %struct.links_entry* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %158

149:                                              ; preds = %141
  %150 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  %151 = load %struct.archive_entry*, %struct.archive_entry** %150, align 8
  %152 = load %struct.links_entry*, %struct.links_entry** %7, align 8
  %153 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %152, i32 0, i32 0
  store %struct.archive_entry* %151, %struct.archive_entry** %153, align 8
  %154 = load %struct.archive_entry**, %struct.archive_entry*** %5, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %154, align 8
  br label %155

155:                                              ; preds = %149, %140
  br label %158

156:                                              ; preds = %52
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %155, %148, %101, %100, %79, %51, %32, %26
  ret void
}

declare dso_local %struct.links_entry* @next_entry(%struct.archive_entry_linkresolver*, i32) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local %struct.links_entry* @find_entry(%struct.archive_entry_linkresolver*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_unset_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_hardlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_pathname(i32) #1

declare dso_local %struct.links_entry* @insert_entry(%struct.archive_entry_linkresolver*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
