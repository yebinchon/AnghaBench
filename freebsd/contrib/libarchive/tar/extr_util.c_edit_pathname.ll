; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_edit_pathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_edit_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32 }
%struct.archive_entry = type { i32 }

@OPTFLAG_ABSOLUTE_PATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edit_pathname(%struct.bsdtar* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bsdtar*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %11 = call i8* @archive_entry_pathname(%struct.archive_entry* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %14 = call i8* @archive_entry_hardlink(%struct.archive_entry* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %17 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %23 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @strip_components(i8* %21, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %109

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %35 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @strip_components(i8* %33, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %109

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %45 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OPTFLAG_ABSOLUTE_PATHS, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %43
  %51 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @strip_absolute_path(%struct.bsdtar* %51, i8* %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* @strip_absolute_path(%struct.bsdtar* %63, i8* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %109

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %59
  br label %92

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 47
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 47
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ false, %74 ], [ %85, %80 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  br label %74

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %72
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %100
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %70, %40, %28
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i8* @strip_components(i8*, i32) #1

declare dso_local i8* @strip_absolute_path(%struct.bsdtar*, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_copy_hardlink(%struct.archive_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
