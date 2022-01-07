; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.ae_sparse*, %struct.ae_xattr*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ae_sparse = type { %struct.ae_sparse*, i32, i32 }
%struct.ae_xattr = type { %struct.ae_xattr*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_entry* @archive_entry_clone(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.ae_xattr*, align 8
  %6 = alloca %struct.ae_sparse*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  %9 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %10 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %9, i32 0, i32 16
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.archive_entry* @archive_entry_new2(i32 %11)
  store %struct.archive_entry* %12, %struct.archive_entry** %4, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %14 = icmp eq %struct.archive_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.archive_entry* null, %struct.archive_entry** %2, align 8
  br label %135

16:                                               ; preds = %1
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %21 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %20, i32 0, i32 15
  store i32 %19, i32* %21, align 4
  %22 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %23 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %26 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %31 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 4
  %32 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %33 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %32, i32 0, i32 12
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %34, i32 0, i32 12
  %36 = call i32 @archive_mstring_copy(i32* %33, i32* %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %38 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %37, i32 0, i32 11
  %39 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %40 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %39, i32 0, i32 11
  %41 = call i32 @archive_mstring_copy(i32* %38, i32* %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %42, i32 0, i32 10
  %44 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %45 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %44, i32 0, i32 10
  %46 = call i32 @archive_mstring_copy(i32* %43, i32* %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %47, i32 0, i32 9
  %49 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %50 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %49, i32 0, i32 9
  %51 = call i32 @archive_mstring_copy(i32* %48, i32* %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %53 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %52, i32 0, i32 8
  %54 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %55 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %54, i32 0, i32 8
  %56 = call i32 @archive_mstring_copy(i32* %53, i32* %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %58 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %57, i32 0, i32 7
  %59 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %60 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %59, i32 0, i32 7
  %61 = call i32 @archive_mstring_copy(i32* %58, i32* %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %63 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %66 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %68 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %67, i32 0, i32 5
  %69 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %70 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %69, i32 0, i32 5
  %71 = call i32 @archive_mstring_copy(i32* %68, i32* %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %73 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %76 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %78 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %81 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %83 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %82, i32 0, i32 2
  %84 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %85 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %84, i32 0, i32 2
  %86 = call i32 @archive_acl_copy(i32* %83, i32* %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %88 = call i8* @archive_entry_mac_metadata(%struct.archive_entry* %87, i64* %7)
  store i8* %88, i8** %8, align 8
  %89 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @archive_entry_copy_mac_metadata(%struct.archive_entry* %89, i8* %90, i64 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %94 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %93, i32 0, i32 1
  %95 = load %struct.ae_xattr*, %struct.ae_xattr** %94, align 8
  store %struct.ae_xattr* %95, %struct.ae_xattr** %5, align 8
  br label %96

96:                                               ; preds = %99, %16
  %97 = load %struct.ae_xattr*, %struct.ae_xattr** %5, align 8
  %98 = icmp ne %struct.ae_xattr* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %101 = load %struct.ae_xattr*, %struct.ae_xattr** %5, align 8
  %102 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ae_xattr*, %struct.ae_xattr** %5, align 8
  %105 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ae_xattr*, %struct.ae_xattr** %5, align 8
  %108 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @archive_entry_xattr_add_entry(%struct.archive_entry* %100, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.ae_xattr*, %struct.ae_xattr** %5, align 8
  %112 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %111, i32 0, i32 0
  %113 = load %struct.ae_xattr*, %struct.ae_xattr** %112, align 8
  store %struct.ae_xattr* %113, %struct.ae_xattr** %5, align 8
  br label %96

114:                                              ; preds = %96
  %115 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %116 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %115, i32 0, i32 0
  %117 = load %struct.ae_sparse*, %struct.ae_sparse** %116, align 8
  store %struct.ae_sparse* %117, %struct.ae_sparse** %6, align 8
  br label %118

118:                                              ; preds = %121, %114
  %119 = load %struct.ae_sparse*, %struct.ae_sparse** %6, align 8
  %120 = icmp ne %struct.ae_sparse* %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %123 = load %struct.ae_sparse*, %struct.ae_sparse** %6, align 8
  %124 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ae_sparse*, %struct.ae_sparse** %6, align 8
  %127 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @archive_entry_sparse_add_entry(%struct.archive_entry* %122, i32 %125, i32 %128)
  %130 = load %struct.ae_sparse*, %struct.ae_sparse** %6, align 8
  %131 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %130, i32 0, i32 0
  %132 = load %struct.ae_sparse*, %struct.ae_sparse** %131, align 8
  store %struct.ae_sparse* %132, %struct.ae_sparse** %6, align 8
  br label %118

133:                                              ; preds = %118
  %134 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  store %struct.archive_entry* %134, %struct.archive_entry** %2, align 8
  br label %135

135:                                              ; preds = %133, %15
  %136 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  ret %struct.archive_entry* %136
}

declare dso_local %struct.archive_entry* @archive_entry_new2(i32) #1

declare dso_local i32 @archive_mstring_copy(i32*, i32*) #1

declare dso_local i32 @archive_acl_copy(i32*, i32*) #1

declare dso_local i8* @archive_entry_mac_metadata(%struct.archive_entry*, i64*) #1

declare dso_local i32 @archive_entry_copy_mac_metadata(%struct.archive_entry*, i8*, i64) #1

declare dso_local i32 @archive_entry_xattr_add_entry(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i32 @archive_entry_sparse_add_entry(%struct.archive_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
