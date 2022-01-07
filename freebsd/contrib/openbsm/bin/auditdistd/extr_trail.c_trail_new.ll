; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trail = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Directory name too long (\22%s\22).\00", align 1
@ENAMETOOLONG = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to create directory \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to open directory \22%s\22\00", align 1
@TRAIL_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trail* @trail_new(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.trail*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trail*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.trail* @calloc(i32 1, i32 24)
  store %struct.trail* %7, %struct.trail** %6, align 8
  %8 = load %struct.trail*, %struct.trail** %6, align 8
  %9 = getelementptr inbounds %struct.trail, %struct.trail* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlcpy(i32 %10, i8* %11, i32 4)
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 %13, 4
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.trail*, %struct.trail** %6, align 8
  %17 = call i32 @free(%struct.trail* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @pjdlog_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %20, i64* @errno, align 8
  store %struct.trail* null, %struct.trail** %3, align 8
  br label %79

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @opendir(i8* %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.trail*, %struct.trail** %6, align 8
  %26 = getelementptr inbounds %struct.trail, %struct.trail* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.trail*, %struct.trail** %6, align 8
  %28 = getelementptr inbounds %struct.trail, %struct.trail* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %72

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @mkdir(i8* %39, i32 448)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @pjdlog_errno(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.trail*, %struct.trail** %6, align 8
  %47 = call i32 @free(%struct.trail* %46)
  store %struct.trail* null, %struct.trail** %3, align 8
  br label %79

48:                                               ; preds = %38
  br label %55

49:                                               ; preds = %34, %31
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @pjdlog_errno(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load %struct.trail*, %struct.trail** %6, align 8
  %54 = call i32 @free(%struct.trail* %53)
  store %struct.trail* null, %struct.trail** %3, align 8
  br label %79

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = call i8* @opendir(i8* %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.trail*, %struct.trail** %6, align 8
  %60 = getelementptr inbounds %struct.trail, %struct.trail* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.trail*, %struct.trail** %6, align 8
  %62 = getelementptr inbounds %struct.trail, %struct.trail* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @pjdlog_errno(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load %struct.trail*, %struct.trail** %6, align 8
  %70 = call i32 @free(%struct.trail* %69)
  store %struct.trail* null, %struct.trail** %3, align 8
  br label %79

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %21
  %73 = load %struct.trail*, %struct.trail** %6, align 8
  %74 = getelementptr inbounds %struct.trail, %struct.trail* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load i32, i32* @TRAIL_MAGIC, align 4
  %76 = load %struct.trail*, %struct.trail** %6, align 8
  %77 = getelementptr inbounds %struct.trail, %struct.trail* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.trail*, %struct.trail** %6, align 8
  store %struct.trail* %78, %struct.trail** %3, align 8
  br label %79

79:                                               ; preds = %72, %65, %49, %42, %15
  %80 = load %struct.trail*, %struct.trail** %3, align 8
  ret %struct.trail* %80
}

declare dso_local %struct.trail* @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.trail*) #1

declare dso_local i32 @pjdlog_error(i8*, i8*) #1

declare dso_local i8* @opendir(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
