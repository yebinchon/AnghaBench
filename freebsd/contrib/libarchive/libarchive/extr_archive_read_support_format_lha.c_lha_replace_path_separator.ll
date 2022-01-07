; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_replace_path_separator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_replace_path_separator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lha = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lha*, %struct.archive_entry*)* @lha_replace_path_separator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lha_replace_path_separator(%struct.lha* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.lha*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.lha* %0, %struct.lha** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %7 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %8 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %7)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = load %struct.lha*, %struct.lha** %3, align 8
  %12 = getelementptr inbounds %struct.lha, %struct.lha* %11, i32 0, i32 0
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @archive_wstrcpy(%struct.TYPE_3__* %12, i32* %13)
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %38, %10
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.lha*, %struct.lha** %3, align 8
  %18 = getelementptr inbounds %struct.lha, %struct.lha* %17, i32 0, i32 0
  %19 = call i64 @archive_strlen(%struct.TYPE_3__* %18)
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.lha*, %struct.lha** %3, align 8
  %23 = getelementptr inbounds %struct.lha, %struct.lha* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.lha*, %struct.lha** %3, align 8
  %32 = getelementptr inbounds %struct.lha, %struct.lha* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 47, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = load %struct.lha*, %struct.lha** %3, align 8
  %44 = getelementptr inbounds %struct.lha, %struct.lha* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %42, i32* %46)
  br label %48

48:                                               ; preds = %41, %2
  %49 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %50 = call i32* @archive_entry_symlink_w(%struct.archive_entry* %49)
  store i32* %50, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load %struct.lha*, %struct.lha** %3, align 8
  %54 = getelementptr inbounds %struct.lha, %struct.lha* %53, i32 0, i32 0
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @archive_wstrcpy(%struct.TYPE_3__* %54, i32* %55)
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %80, %52
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.lha*, %struct.lha** %3, align 8
  %60 = getelementptr inbounds %struct.lha, %struct.lha* %59, i32 0, i32 0
  %61 = call i64 @archive_strlen(%struct.TYPE_3__* %60)
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load %struct.lha*, %struct.lha** %3, align 8
  %65 = getelementptr inbounds %struct.lha, %struct.lha* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 92
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.lha*, %struct.lha** %3, align 8
  %74 = getelementptr inbounds %struct.lha, %struct.lha* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 47, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %85 = load %struct.lha*, %struct.lha** %3, align 8
  %86 = getelementptr inbounds %struct.lha, %struct.lha* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @archive_entry_copy_symlink_w(%struct.archive_entry* %84, i32* %88)
  br label %90

90:                                               ; preds = %83, %48
  ret void
}

declare dso_local i32* @archive_entry_pathname_w(%struct.archive_entry*) #1

declare dso_local i32 @archive_wstrcpy(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_3__*) #1

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i32*) #1

declare dso_local i32* @archive_entry_symlink_w(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_symlink_w(%struct.archive_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
