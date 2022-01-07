; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_kod_management.c_write_kod_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_kod_management.c_write_kod_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@kod_db_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@DIR_SEP = common dso_local global i8 0, align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mkdir(%s) failed: %m\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Can't open KOD db file %s for writing: %m\00", align 1
@kod_db_cnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"%16.16llx %s %s\0A\00", align 1
@kod_db = common dso_local global %struct.TYPE_2__** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_kod_db() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @kod_db_file, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* null, %8
  br i1 %9, label %10, label %60

10:                                               ; preds = %0
  %11 = load i8*, i8** @kod_db_file, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32, i32* @S_IRUSR, align 4
  %16 = load i32, i32* @S_IWUSR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S_IXUSR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IRGRP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IXGRP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @S_IROTH, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IXOTH, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i8*, i8** @kod_db_file, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* @DIR_SEP, align 1
  %31 = call i8* @strchr(i8* %29, i8 signext %30)
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %50, %14
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* null, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i8*, i8** %3, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** @kod_db_file, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @mkdir(i8* %37, i32 %38)
  %40 = icmp eq i32 -1, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EEXIST, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @LOG_ERR, align 4
  %47 = load i8*, i8** @kod_db_file, align 8
  %48 = call i32 @msyslog(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %106

50:                                               ; preds = %41, %35
  %51 = load i8, i8* @DIR_SEP, align 1
  %52 = load i8*, i8** %3, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* @DIR_SEP, align 1
  %56 = call i8* @strchr(i8* %54, i8 signext %55)
  store i8* %56, i8** %3, align 8
  br label %32

57:                                               ; preds = %32
  %58 = load i8*, i8** @kod_db_file, align 8
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %59, i32** %2, align 8
  br label %60

60:                                               ; preds = %57, %10, %0
  %61 = load i32*, i32** %2, align 8
  %62 = icmp eq i32* null, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_WARNING, align 4
  %65 = load i8*, i8** @kod_db_file, align 8
  %66 = call i32 @msyslog(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %1, align 4
  br label %106

68:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %97, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @kod_db_cnt, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load i32*, i32** %2, align 8
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %89, i64 %91
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @fprintf(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %81, i32 %88, i32 %95)
  br label %97

97:                                               ; preds = %73
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %69

100:                                              ; preds = %69
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @fflush(i32* %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @fclose(i32* %103)
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %100, %63, %45
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
