; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"Sender requested opening file \22%s\22 without first closing \22%s\22.\00", align 1
@ADIST_ERROR_WRONG_ORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Sender wants to open file \22%s\22, which has invalid name.\00", align 1
@ADIST_ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Terminated trail \22%s/%s\22 was unterminated on the sender as \22%s/%s\22?\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to rename file \22%s/%s\22 to \22%s/%s\22\00", align 1
@errno = common dso_local global i32 0, align 4
@ADIST_ERROR_RENAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Renamed file \22%s/%s\22 to \22%s/%s\22.\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Unable to open file \22%s/%s\22 for append\00", align 1
@ADIST_ERROR_OPEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Opened file \22%s/%s\22.\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Unable to create file \22%s/%s\22\00", align 1
@ADIST_ERROR_CREATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Created file \22%s/%s\22.\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Sender wants to open an old file \22%s\22.\00", align 1
@ADIST_ERROR_OPEN_OLD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"Unknown return value from trail_name_compare().\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @receiver_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receiver_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %13)
  %15 = load i32, i32* @ADIST_ERROR_WRONG_ORDER, align 4
  store i32 %15, i32* %2, align 4
  br label %181

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @trail_validate_name(i8* %17, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @ADIST_ERROR_INVALID_NAME, align 4
  store i32 %23, i32* %2, align 4
  br label %181

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @trail_name_compare(i8* %25, i32 %28)
  switch i32 %29, label %166 [
    i32 128, label %30
    i32 131, label %98
    i32 130, label %129
    i32 129, label %162
  ]

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @trail_is_not_terminated(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %44, i32 %47, i8* %48)
  %50 = load i32, i32* @ADIST_ERROR_INVALID_NAME, align 4
  store i32 %50, i32* %2, align 4
  br label %181

51:                                               ; preds = %30
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @renameat(i32 %54, i32 %57, i32 %60, i8* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %84

64:                                               ; preds = %51
  %65 = load i32, i32* @LOG_ERR, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %68, i8* %73, i32 %76, i8* %77)
  %79 = load i32, i32* @errno, align 4
  %80 = icmp sgt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @PJDLOG_ASSERT(i32 %81)
  %83 = load i32, i32* @ADIST_ERROR_RENAME, align 4
  store i32 %83, i32* %2, align 4
  br label %181

84:                                               ; preds = %51
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %87, i8* %92, i32 %95, i8* %96)
  br label %98

98:                                               ; preds = %24, %84
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* @O_WRONLY, align 4
  %104 = load i32, i32* @O_APPEND, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @O_NOFOLLOW, align 4
  %107 = or i32 %105, %106
  %108 = call i32 (i32, i8*, i32, ...) @openat(i32 %101, i8* %102, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %123

111:                                              ; preds = %98
  %112 = load i32, i32* @LOG_ERR, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %115, i8* %116)
  %118 = load i32, i32* @errno, align 4
  %119 = icmp sgt i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @PJDLOG_ASSERT(i32 %120)
  %122 = load i32, i32* @ADIST_ERROR_OPEN, align 4
  store i32 %122, i32* %2, align 4
  br label %181

123:                                              ; preds = %98
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %3, align 8
  %128 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %126, i8* %127)
  br label %168

129:                                              ; preds = %24
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %3, align 8
  %134 = load i32, i32* @O_WRONLY, align 4
  %135 = load i32, i32* @O_CREAT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @O_EXCL, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @O_NOFOLLOW, align 4
  %140 = or i32 %138, %139
  %141 = call i32 (i32, i8*, i32, ...) @openat(i32 %132, i8* %133, i32 %140, i32 384)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %156

144:                                              ; preds = %129
  %145 = load i32, i32* @LOG_ERR, align 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %3, align 8
  %150 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %148, i8* %149)
  %151 = load i32, i32* @errno, align 4
  %152 = icmp sgt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @PJDLOG_ASSERT(i32 %153)
  %155 = load i32, i32* @ADIST_ERROR_CREATE, align 4
  store i32 %155, i32* %2, align 4
  br label %181

156:                                              ; preds = %129
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %159, i8* %160)
  br label %168

162:                                              ; preds = %24
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 (i8*, i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %163)
  %165 = load i32, i32* @ADIST_ERROR_OPEN_OLD, align 4
  store i32 %165, i32* %2, align 4
  br label %181

166:                                              ; preds = %24
  %167 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %156, %123
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %3, align 8
  %173 = call i32 @strlcpy(i32 %171, i8* %172, i32 4)
  %174 = sext i32 %173 to i64
  %175 = icmp ult i64 %174, 4
  %176 = zext i1 %175 to i32
  %177 = call i32 @PJDLOG_VERIFY(i32 %176)
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %168, %162, %144, %111, %64, %36, %20, %9
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @pjdlog_error(i8*, i8*, ...) #1

declare dso_local i32 @trail_validate_name(i8*, i32*) #1

declare dso_local i32 @trail_name_compare(i8*, i32) #1

declare dso_local i32 @trail_is_not_terminated(i32) #1

declare dso_local i32 @renameat(i32, i32, i32, i8*) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @openat(i32, i8*, i32, ...) #1

declare dso_local i32 @PJDLOG_ABORT(i8*) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
