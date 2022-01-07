; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veta.c_trust_dir_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veta.c_trust_dir_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @trust_dir_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trust_dir_add(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @opendir(i8* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

20:                                               ; preds = %1
  store i64 0, i64* %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.dirent* @readdir(i32* %21)
  store %struct.dirent* %22, %struct.dirent** %7, align 8
  br label %23

23:                                               ; preds = %58, %20
  %24 = load %struct.dirent*, %struct.dirent** %7, align 8
  %25 = icmp ne %struct.dirent* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load %struct.dirent*, %struct.dirent** %7, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %58

35:                                               ; preds = %26
  %36 = trunc i64 %13 to i32
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.dirent*, %struct.dirent** %7, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @snprintf(i8* %15, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp sge i64 %42, %13
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %58

45:                                               ; preds = %35
  %46 = call i64 @stat(i8* %15, %struct.stat* %8)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %45
  br label %58

54:                                               ; preds = %48
  %55 = call i64 @trust_file_add(i8* %15)
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %54, %53, %44, %34
  %59 = load i32*, i32** %6, align 8
  %60 = call %struct.dirent* @readdir(i32* %59)
  store %struct.dirent* %60, %struct.dirent** %7, align 8
  br label %23

61:                                               ; preds = %23
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @closedir(i32* %62)
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %19
  %66 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @trust_file_add(i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
