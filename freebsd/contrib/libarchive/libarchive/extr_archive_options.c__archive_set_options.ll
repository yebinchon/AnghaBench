; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_options.c__archive_set_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_options.c__archive_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of memory adding file to list\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"__ignore_wrong_module_name__\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown module name: `%s'\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Undefined option: `%s%s%s'\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_archive_set_options(%struct.archive* %0, i8* %1, i32 %2, i8* %3, i32 (%struct.archive*, i8*, i8*, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.archive*, i8*, i8*, i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (%struct.archive*, i8*, i8*, i8*)* %4, i32 (%struct.archive*, i8*, i8*, i8*)** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.archive*, %struct.archive** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @archive_check_magic(%struct.archive* %21, i32 %22, i32 %23, i8* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %5
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %5
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %35, i32* %6, align 4
  br label %156

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %16, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.archive*, %struct.archive** %7, align 8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %44, i32* %6, align 4
  br label %156

45:                                               ; preds = %36
  %46 = load i8*, i8** %16, align 8
  store i8* %46, i8** %17, align 8
  br label %47

47:                                               ; preds = %135, %45
  store i8* null, i8** %20, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %18, align 8
  %48 = call i32 @parse_option(i8** %17, i8** %18, i8** %19, i8** %20)
  %49 = load i8*, i8** %18, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8*, i8** %19, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i8*, i8** %19, align 8
  %56 = call i64 @strcmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** %20, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %58
  br label %135

63:                                               ; preds = %54, %51, %47
  %64 = load i32 (%struct.archive*, i8*, i8*, i8*)*, i32 (%struct.archive*, i8*, i8*, i8*)** %11, align 8
  %65 = load %struct.archive*, %struct.archive** %7, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = call i32 %64(%struct.archive* %65, i8* %66, i8* %67, i8* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @ARCHIVE_FATAL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %76, i32* %6, align 4
  br label %156

77:                                               ; preds = %63
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @ARCHIVE_FAILED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8*, i8** %18, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %87, i32* %6, align 4
  br label %156

88:                                               ; preds = %81, %77
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @ARCHIVE_WARN, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %135

97:                                               ; preds = %93
  %98 = load %struct.archive*, %struct.archive** %7, align 8
  %99 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %100 = load i8*, i8** %18, align 8
  %101 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %98, i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %104, i32* %6, align 4
  br label %156

105:                                              ; preds = %88
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @ARCHIVE_WARN, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load %struct.archive*, %struct.archive** %7, align 8
  %111 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %112 = load i8*, i8** %18, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i8*, i8** %18, align 8
  br label %117

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i8* [ %115, %114 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %116 ]
  %119 = load i8*, i8** %18, align 8
  %120 = icmp ne i8* %119, null
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %123 = load i8*, i8** %19, align 8
  %124 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %110, i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %118, i8* %122, i8* %123)
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %127, i32* %6, align 4
  br label %156

128:                                              ; preds = %105
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @ARCHIVE_OK, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 1, i32* %13, align 4
  br label %134

133:                                              ; preds = %128
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %133, %132
  br label %135

135:                                              ; preds = %134, %96, %62
  %136 = load i8*, i8** %17, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %47, label %138

138:                                              ; preds = %135
  %139 = load i8*, i8** %16, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @ARCHIVE_OK, align 4
  br label %154

145:                                              ; preds = %138
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @ARCHIVE_WARN, align 4
  br label %152

150:                                              ; preds = %145
  %151 = load i32, i32* @ARCHIVE_FAILED, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  br label %154

154:                                              ; preds = %152, %143
  %155 = phi i32 [ %144, %143 ], [ %153, %152 ]
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %117, %97, %84, %73, %40, %34
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, ...) #1

declare dso_local i32 @parse_option(i8**, i8**, i8**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
