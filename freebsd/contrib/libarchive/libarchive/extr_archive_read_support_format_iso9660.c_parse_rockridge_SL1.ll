; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_rockridge_SL1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_rockridge_SL1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ROOT\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_info*, i8*, i32)* @parse_rockridge_SL1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_rockridge_SL1(%struct.file_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load %struct.file_info*, %struct.file_info** %4, align 8
  %11 = getelementptr inbounds %struct.file_info, %struct.file_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.file_info*, %struct.file_info** %4, align 8
  %16 = getelementptr inbounds %struct.file_info, %struct.file_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %14, %3
  %21 = load %struct.file_info*, %struct.file_info** %4, align 8
  %22 = getelementptr inbounds %struct.file_info, %struct.file_info* %21, i32 0, i32 1
  %23 = call i32 @archive_string_empty(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.file_info*, %struct.file_info** %4, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %120

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %38 [
    i32 0, label %34
    i32 1, label %35
  ]

34:                                               ; preds = %30
  br label %39

35:                                               ; preds = %30
  %36 = load %struct.file_info*, %struct.file_info** %4, align 8
  %37 = getelementptr inbounds %struct.file_info, %struct.file_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %39

38:                                               ; preds = %30
  br label %120

39:                                               ; preds = %35, %34
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %110, %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %120

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  %50 = load i8, i8* %48, align 1
  store i8 %50, i8* %8, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8, i8* %51, align 1
  store i8 %53, i8* %9, align 1
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %6, align 4
  %56 = load %struct.file_info*, %struct.file_info** %4, align 8
  %57 = getelementptr inbounds %struct.file_info, %struct.file_info* %56, i32 0, i32 1
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @archive_strcat(%struct.TYPE_4__* %57, i8* %58)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  switch i32 %61, label %109 [
    i32 0, label %62
    i32 1, label %74
    i32 2, label %86
    i32 4, label %90
    i32 8, label %94
    i32 16, label %98
    i32 32, label %105
  ]

62:                                               ; preds = %47
  %63 = load i32, i32* %6, align 4
  %64 = load i8, i8* %9, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %120

68:                                               ; preds = %62
  %69 = load %struct.file_info*, %struct.file_info** %4, align 8
  %70 = getelementptr inbounds %struct.file_info, %struct.file_info* %69, i32 0, i32 1
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %9, align 1
  %73 = call i32 @archive_strncat(%struct.TYPE_4__* %70, i8* %71, i8 zeroext %72)
  br label %110

74:                                               ; preds = %47
  %75 = load i32, i32* %6, align 4
  %76 = load i8, i8* %9, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %120

80:                                               ; preds = %74
  %81 = load %struct.file_info*, %struct.file_info** %4, align 8
  %82 = getelementptr inbounds %struct.file_info, %struct.file_info* %81, i32 0, i32 1
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %9, align 1
  %85 = call i32 @archive_strncat(%struct.TYPE_4__* %82, i8* %83, i8 zeroext %84)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %110

86:                                               ; preds = %47
  %87 = load %struct.file_info*, %struct.file_info** %4, align 8
  %88 = getelementptr inbounds %struct.file_info, %struct.file_info* %87, i32 0, i32 1
  %89 = call i32 @archive_strcat(%struct.TYPE_4__* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %110

90:                                               ; preds = %47
  %91 = load %struct.file_info*, %struct.file_info** %4, align 8
  %92 = getelementptr inbounds %struct.file_info, %struct.file_info* %91, i32 0, i32 1
  %93 = call i32 @archive_strcat(%struct.TYPE_4__* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %110

94:                                               ; preds = %47
  %95 = load %struct.file_info*, %struct.file_info** %4, align 8
  %96 = getelementptr inbounds %struct.file_info, %struct.file_info* %95, i32 0, i32 1
  %97 = call i32 @archive_strcat(%struct.TYPE_4__* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %110

98:                                               ; preds = %47
  %99 = load %struct.file_info*, %struct.file_info** %4, align 8
  %100 = getelementptr inbounds %struct.file_info, %struct.file_info* %99, i32 0, i32 1
  %101 = call i32 @archive_string_empty(%struct.TYPE_4__* %100)
  %102 = load %struct.file_info*, %struct.file_info** %4, align 8
  %103 = getelementptr inbounds %struct.file_info, %struct.file_info* %102, i32 0, i32 1
  %104 = call i32 @archive_strcat(%struct.TYPE_4__* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %110

105:                                              ; preds = %47
  %106 = load %struct.file_info*, %struct.file_info** %4, align 8
  %107 = getelementptr inbounds %struct.file_info, %struct.file_info* %106, i32 0, i32 1
  %108 = call i32 @archive_strcat(%struct.TYPE_4__* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %110

109:                                              ; preds = %47
  br label %120

110:                                              ; preds = %105, %98, %94, %90, %86, %80, %68
  %111 = load i8, i8* %9, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %5, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %5, align 8
  %116 = load i8, i8* %9, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %44

120:                                              ; preds = %29, %38, %67, %79, %109, %44
  ret void
}

declare dso_local i32 @archive_string_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @archive_strcat(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @archive_strncat(%struct.TYPE_4__*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
