; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_strmode.c_archive_entry_strmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_strmode.c_archive_entry_strmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i8* }

@archive_entry_strmode.permbits = internal constant [9 x i32] [i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [12 x i8] c"?rwxrwxrwx \00", align 1
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @archive_entry_strmode(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %2, align 8
  %6 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %7 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %12 = call i32 @archive_entry_mode(%struct.archive_entry* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %14 = call i32 @archive_entry_filetype(%struct.archive_entry* %13)
  switch i32 %14, label %36 [
    i32 129, label %15
    i32 134, label %18
    i32 133, label %21
    i32 132, label %24
    i32 130, label %27
    i32 128, label %30
    i32 131, label %33
  ]

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 45, i8* %17, align 1
  br label %44

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 98, i8* %20, align 1
  br label %44

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 99, i8* %23, align 1
  br label %44

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 100, i8* %26, align 1
  br label %44

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 108, i8* %29, align 1
  br label %44

30:                                               ; preds = %1
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 115, i8* %32, align 1
  br label %44

33:                                               ; preds = %1
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 112, i8* %35, align 1
  br label %44

36:                                               ; preds = %1
  %37 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %38 = call i32* @archive_entry_hardlink(%struct.archive_entry* %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 104, i8* %42, align 1
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %40, %33, %30, %27, %24, %21, %18, %15
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 9
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* @archive_entry_strmode.permbits, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %49, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 45, i8* %61, align 1
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %45

66:                                               ; preds = %45
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @S_ISUID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  store i8 115, i8* %77, align 1
  br label %81

78:                                               ; preds = %71
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8 83, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @S_ISGID, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  store i8 115, i8* %93, align 1
  br label %97

94:                                               ; preds = %87
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 6
  store i8 83, i8* %96, align 1
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @S_ISVTX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 9
  store i8 116, i8* %109, align 1
  br label %113

110:                                              ; preds = %103
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 9
  store i8 84, i8* %112, align 1
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %98
  %115 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %116 = call i64 @archive_entry_acl_types(%struct.archive_entry* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 10
  store i8 43, i8* %120, align 1
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %3, align 8
  ret i8* %122
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_acl_types(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
