; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_sort_dir_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_sort_dir_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixup_entry = type { %struct.fixup_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fixup_entry* (%struct.fixup_entry*)* @sort_dir_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fixup_entry* @sort_dir_list(%struct.fixup_entry* %0) #0 {
  %2 = alloca %struct.fixup_entry*, align 8
  %3 = alloca %struct.fixup_entry*, align 8
  %4 = alloca %struct.fixup_entry*, align 8
  %5 = alloca %struct.fixup_entry*, align 8
  %6 = alloca %struct.fixup_entry*, align 8
  store %struct.fixup_entry* %0, %struct.fixup_entry** %3, align 8
  %7 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  %8 = icmp eq %struct.fixup_entry* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.fixup_entry* null, %struct.fixup_entry** %2, align 8
  br label %122

10:                                               ; preds = %1
  %11 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  %12 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %11, i32 0, i32 0
  %13 = load %struct.fixup_entry*, %struct.fixup_entry** %12, align 8
  %14 = icmp eq %struct.fixup_entry* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  store %struct.fixup_entry* %16, %struct.fixup_entry** %2, align 8
  br label %122

17:                                               ; preds = %10
  %18 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  store %struct.fixup_entry* %18, %struct.fixup_entry** %6, align 8
  %19 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  %20 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %19, i32 0, i32 0
  %21 = load %struct.fixup_entry*, %struct.fixup_entry** %20, align 8
  %22 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %21, i32 0, i32 0
  %23 = load %struct.fixup_entry*, %struct.fixup_entry** %22, align 8
  store %struct.fixup_entry* %23, %struct.fixup_entry** %4, align 8
  br label %24

24:                                               ; preds = %37, %17
  %25 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %26 = icmp ne %struct.fixup_entry* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %29 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %28, i32 0, i32 0
  %30 = load %struct.fixup_entry*, %struct.fixup_entry** %29, align 8
  store %struct.fixup_entry* %30, %struct.fixup_entry** %4, align 8
  %31 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %32 = icmp ne %struct.fixup_entry* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %35 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %34, i32 0, i32 0
  %36 = load %struct.fixup_entry*, %struct.fixup_entry** %35, align 8
  store %struct.fixup_entry* %36, %struct.fixup_entry** %4, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %39 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %38, i32 0, i32 0
  %40 = load %struct.fixup_entry*, %struct.fixup_entry** %39, align 8
  store %struct.fixup_entry* %40, %struct.fixup_entry** %6, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %43 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %42, i32 0, i32 0
  %44 = load %struct.fixup_entry*, %struct.fixup_entry** %43, align 8
  store %struct.fixup_entry* %44, %struct.fixup_entry** %5, align 8
  %45 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %46 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %45, i32 0, i32 0
  store %struct.fixup_entry* null, %struct.fixup_entry** %46, align 8
  %47 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  store %struct.fixup_entry* %47, %struct.fixup_entry** %4, align 8
  %48 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %49 = call %struct.fixup_entry* @sort_dir_list(%struct.fixup_entry* %48)
  store %struct.fixup_entry* %49, %struct.fixup_entry** %4, align 8
  %50 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %51 = call %struct.fixup_entry* @sort_dir_list(%struct.fixup_entry* %50)
  store %struct.fixup_entry* %51, %struct.fixup_entry** %5, align 8
  %52 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %53 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %56 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strcmp(i32 %54, i32 %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  store %struct.fixup_entry* %61, %struct.fixup_entry** %3, align 8
  store %struct.fixup_entry* %61, %struct.fixup_entry** %6, align 8
  %62 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %63 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %62, i32 0, i32 0
  %64 = load %struct.fixup_entry*, %struct.fixup_entry** %63, align 8
  store %struct.fixup_entry* %64, %struct.fixup_entry** %4, align 8
  br label %70

65:                                               ; preds = %41
  %66 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  store %struct.fixup_entry* %66, %struct.fixup_entry** %3, align 8
  store %struct.fixup_entry* %66, %struct.fixup_entry** %6, align 8
  %67 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %68 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %67, i32 0, i32 0
  %69 = load %struct.fixup_entry*, %struct.fixup_entry** %68, align 8
  store %struct.fixup_entry* %69, %struct.fixup_entry** %5, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %102, %70
  %72 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %73 = icmp ne %struct.fixup_entry* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %76 = icmp ne %struct.fixup_entry* %75, null
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %79, label %106

79:                                               ; preds = %77
  %80 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %81 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %84 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strcmp(i32 %82, i32 %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %90 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %91 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %90, i32 0, i32 0
  store %struct.fixup_entry* %89, %struct.fixup_entry** %91, align 8
  %92 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %93 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %92, i32 0, i32 0
  %94 = load %struct.fixup_entry*, %struct.fixup_entry** %93, align 8
  store %struct.fixup_entry* %94, %struct.fixup_entry** %4, align 8
  br label %102

95:                                               ; preds = %79
  %96 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %97 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %98 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %97, i32 0, i32 0
  store %struct.fixup_entry* %96, %struct.fixup_entry** %98, align 8
  %99 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %100 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %99, i32 0, i32 0
  %101 = load %struct.fixup_entry*, %struct.fixup_entry** %100, align 8
  store %struct.fixup_entry* %101, %struct.fixup_entry** %5, align 8
  br label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %104 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %103, i32 0, i32 0
  %105 = load %struct.fixup_entry*, %struct.fixup_entry** %104, align 8
  store %struct.fixup_entry* %105, %struct.fixup_entry** %6, align 8
  br label %71

106:                                              ; preds = %77
  %107 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %108 = icmp ne %struct.fixup_entry* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  %111 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %112 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %111, i32 0, i32 0
  store %struct.fixup_entry* %110, %struct.fixup_entry** %112, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %115 = icmp ne %struct.fixup_entry* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %118 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %119 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %118, i32 0, i32 0
  store %struct.fixup_entry* %117, %struct.fixup_entry** %119, align 8
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  store %struct.fixup_entry* %121, %struct.fixup_entry** %2, align 8
  br label %122

122:                                              ; preds = %120, %15, %9
  %123 = load %struct.fixup_entry*, %struct.fixup_entry** %2, align 8
  ret %struct.fixup_entry* %123
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
