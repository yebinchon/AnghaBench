; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_options.c__archive_set_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_options.c__archive_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Empty option\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown module name: `%s'\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Undefined option: `%s%s%s%s%s%s'\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_archive_set_option(%struct.archive* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 (%struct.archive*, i8*, i8*, i8*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32 (%struct.archive*, i8*, i8*, i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 (%struct.archive*, i8*, i8*, i8*)* %6, i32 (%struct.archive*, i8*, i8*, i8*)** %15, align 8
  %20 = load %struct.archive*, %struct.archive** %9, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = call i32 @archive_check_magic(%struct.archive* %20, i32 %21, i32 %22, i8* %23)
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %7
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  br label %36

35:                                               ; preds = %27, %7
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ null, %35 ]
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** %11, align 8
  br label %49

48:                                               ; preds = %40, %36
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i8* [ %47, %46 ], [ null, %48 ]
  store i8* %50, i8** %17, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i8*, i8** %12, align 8
  br label %62

61:                                               ; preds = %53, %49
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ null, %61 ]
  store i8* %63, i8** %18, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %18, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %70, i32* %8, align 4
  br label %134

71:                                               ; preds = %66, %62
  %72 = load i8*, i8** %17, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.archive*, %struct.archive** %9, align 8
  %76 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %77 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %75, i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %78, i32* %8, align 4
  br label %134

79:                                               ; preds = %71
  %80 = load i32 (%struct.archive*, i8*, i8*, i8*)*, i32 (%struct.archive*, i8*, i8*, i8*)** %15, align 8
  %81 = load %struct.archive*, %struct.archive** %9, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = call i32 %80(%struct.archive* %81, i8* %82, i8* %83, i8* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @ARCHIVE_WARN, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.archive*, %struct.archive** %9, align 8
  %92 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %91, i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %95, i32* %8, align 4
  br label %134

96:                                               ; preds = %79
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* @ARCHIVE_WARN, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %132

100:                                              ; preds = %96
  %101 = load %struct.archive*, %struct.archive** %9, align 8
  %102 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %103 = load i8*, i8** %18, align 8
  %104 = icmp ne i8* %103, null
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %107 = load i8*, i8** %16, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i8*, i8** %16, align 8
  br label %112

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %111 ]
  %114 = load i8*, i8** %16, align 8
  %115 = icmp ne i8* %114, null
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %118 = load i8*, i8** %17, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = icmp ne i8* %119, null
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %123 = load i8*, i8** %18, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i8*, i8** %18, align 8
  br label %128

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i8* [ %126, %125 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %127 ]
  %130 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %106, i8* %113, i8* %117, i8* %118, i8* %122, i8* %129)
  %131 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %131, i32* %8, align 4
  br label %134

132:                                              ; preds = %96
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %128, %90, %74, %69
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
