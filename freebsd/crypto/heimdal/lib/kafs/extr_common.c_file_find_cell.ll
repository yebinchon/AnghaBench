; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c_file_find_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c_file_find_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { i8* (%struct.kafs_data*, i8*)* }

@_PATH_CELLSERVDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_PATH_ARLA_CELLSERVDB = common dso_local global i32 0, align 4
@_PATH_OPENAFS_DEBIAN_CELLSERVDB = common dso_local global i32 0, align 4
@_PATH_OPENAFS_MACOSX_CELLSERVDB = common dso_local global i32 0, align 4
@_PATH_ARLA_DEBIAN_CELLSERVDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kafs_data*, i8*, i8**, i32)* @file_find_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_find_cell(%struct.kafs_data* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.kafs_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kafs_data* %0, %struct.kafs_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %12, align 4
  %14 = load i32, i32* @_PATH_CELLSERVDB, align 4
  %15 = call i32* @fopen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @_PATH_ARLA_CELLSERVDB, align 4
  %19 = call i32* @fopen(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @_PATH_OPENAFS_DEBIAN_CELLSERVDB, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @_PATH_OPENAFS_MACOSX_CELLSERVDB, align 4
  %27 = call i32* @fopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @_PATH_ARLA_DEBIAN_CELLSERVDB, align 4
  %31 = call i32* @fopen(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %117

33:                                               ; preds = %29, %25, %21, %17, %4
  br label %34

34:                                               ; preds = %113, %44, %33
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @fgets(i8* %35, i32 1024, i32* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %114

39:                                               ; preds = %34
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 62
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %34

45:                                               ; preds = %39
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %46, i8** %11, align 8
  %47 = call i32 @strsep(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  store i32 %54, i32* %13, align 4
  br label %62

55:                                               ; preds = %45
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i32 @strncmp(i8* %57, i8* %58, i32 %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %113

65:                                               ; preds = %62
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @fgets(i8* %66, i32 1024, i32* %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %114

71:                                               ; preds = %65
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %73 = call i8* @strchr(i8* %72, i8 signext 35)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %114

77:                                               ; preds = %71
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %81 = call i32 @strlen(i8* %80)
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %90 = call i32 @strlen(i8* %89)
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 %92
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %88, %77
  %95 = load %struct.kafs_data*, %struct.kafs_data** %5, align 8
  %96 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %95, i32 0, i32 0
  %97 = load i8* (%struct.kafs_data*, i8*)*, i8* (%struct.kafs_data*, i8*)** %96, align 8
  %98 = load %struct.kafs_data*, %struct.kafs_data** %5, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i8* %97(%struct.kafs_data* %98, i8* %99)
  %101 = load i8**, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8**, i8*** %7, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load i8**, i8*** %7, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %111, %105, %94
  br label %114

113:                                              ; preds = %62
  br label %34

114:                                              ; preds = %112, %76, %70, %34
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @fclose(i32* %115)
  br label %117

117:                                              ; preds = %114, %29
  %118 = load i32, i32* %12, align 4
  ret i32 %118
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
