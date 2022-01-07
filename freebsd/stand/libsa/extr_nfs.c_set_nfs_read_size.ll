; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_set_nfs_read_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_set_nfs_read_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"nfs.read_size\00", align 1
@errno = common dso_local global i64 0, align 8
@nfs_read_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: bad value: \22%s\22, defaulting to %d\0A\00", align 1
@NFSREAD_MIN_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: bad value: \22%d\22, defaulting to %d\0A\00", align 1
@NFSREAD_MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_nfs_read_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nfs_read_size() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  store i64 0, i64* @errno, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i64 @strtol(i8* %7, i8** %2, i32 0)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* @nfs_read_size, align 4
  %10 = load i64, i64* @errno, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = load i8*, i8** %1, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %12, %6
  %23 = load i8*, i8** %1, align 8
  %24 = load i32, i32* @NFSREAD_MIN_SIZE, align 4
  %25 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* @NFSREAD_MIN_SIZE, align 4
  store i32 %26, i32* @nfs_read_size, align 4
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32, i32* @nfs_read_size, align 4
  %30 = load i32, i32* @NFSREAD_MIN_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @nfs_read_size, align 4
  %34 = load i32, i32* @NFSREAD_MIN_SIZE, align 4
  %35 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @NFSREAD_MIN_SIZE, align 4
  store i32 %36, i32* @nfs_read_size, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* @nfs_read_size, align 4
  %39 = load i32, i32* @NFSREAD_MAX_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @nfs_read_size, align 4
  %43 = load i32, i32* @NFSREAD_MIN_SIZE, align 4
  %44 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @NFSREAD_MAX_SIZE, align 4
  store i32 %45, i32* @nfs_read_size, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %48 = load i32, i32* @nfs_read_size, align 4
  %49 = call i32 @snprintf(i8* %47, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %51 = call i32 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %50, i32 1)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
