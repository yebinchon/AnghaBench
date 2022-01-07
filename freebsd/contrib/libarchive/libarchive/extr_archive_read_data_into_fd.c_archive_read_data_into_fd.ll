; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_data_into_fd.c_archive_read_data_into_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_data_into_fd.c_archive_read_data_into_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.stat = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"archive_read_data_into_fd\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@MAX_WRITE = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_data_into_fd(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %14, align 8
  store i8* null, i8** %16, align 8
  store i64 16384, i64* %17, align 8
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %21 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %22 = call i32 @archive_check_magic(%struct.archive* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @fstat(i32 %23, %struct.stat* %6)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISREG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %2
  %32 = phi i1 [ false, %2 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %17, align 8
  %38 = call i8* @calloc(i32 1, i64 %37)
  store i8* %38, i8** %16, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %98, %39
  %41 = load %struct.archive*, %struct.archive** %4, align 8
  %42 = call i32 @archive_read_data_block(%struct.archive* %41, i8** %9, i64* %10, i64* %13)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %99

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %18, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.archive*, %struct.archive** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i64, i64* %17, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @pad_to(%struct.archive* %51, i32 %52, i32 %53, i64 %54, i8* %55, i64 %56, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %99

63:                                               ; preds = %50
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %63, %45
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @MAX_WRITE, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @MAX_WRITE, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %5, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @write(i32 %77, i8* %78, i64 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ult i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.archive*, %struct.archive** %4, align 8
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @archive_set_error(%struct.archive* %84, i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %87, i32* %7, align 4
  br label %123

88:                                               ; preds = %76
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i8*, i8** %18, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8* %94, i8** %18, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %66

98:                                               ; preds = %66
  br label %40

99:                                               ; preds = %62, %40
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @ARCHIVE_EOF, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load %struct.archive*, %struct.archive** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i64, i64* %17, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @pad_to(%struct.archive* %108, i32 %109, i32 %110, i64 %111, i8* %112, i64 %113, i64 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %107
  br label %122

122:                                              ; preds = %121, %103, %99
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @ARCHIVE_EOF, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @pad_to(%struct.archive*, i32, i32, i64, i8*, i64, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
