; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/test/extr_test.c_test_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/test/extr_test.c_test_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.test_file = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@host_base = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_open(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.test_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* @host_base, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

21:                                               ; preds = %3
  %22 = load i32, i32* @host_base, align 4
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = call i32 @strlcpy(i8* %16, i32 %22, i32 %23)
  %25 = call i32 @strlen(i8* %16)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %16, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = call i32 @strlen(i8* %16)
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %16, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %32, %21
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = call i32 @strlcat(i8* %16, i8* %38, i32 %39)
  %41 = call %struct.test_file* @malloc(i32 32)
  store %struct.test_file* %41, %struct.test_file** %9, align 8
  %42 = load %struct.test_file*, %struct.test_file** %9, align 8
  %43 = getelementptr inbounds %struct.test_file, %struct.test_file* %42, i32 0, i32 2
  %44 = call i64 @stat(i8* %16, %struct.TYPE_4__* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.test_file*, %struct.test_file** %9, align 8
  %48 = call i32 @free(%struct.test_file* %47)
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.test_file*, %struct.test_file** %9, align 8
  %54 = getelementptr inbounds %struct.test_file, %struct.test_file* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.test_file*, %struct.test_file** %9, align 8
  %56 = getelementptr inbounds %struct.test_file, %struct.test_file* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @S_ISDIR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %50
  %62 = load %struct.test_file*, %struct.test_file** %9, align 8
  %63 = getelementptr inbounds %struct.test_file, %struct.test_file* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = call i32 @opendir(i8* %16)
  %65 = load %struct.test_file*, %struct.test_file** %9, align 8
  %66 = getelementptr inbounds %struct.test_file, %struct.test_file* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %struct.test_file*, %struct.test_file** %9, align 8
  %69 = getelementptr inbounds %struct.test_file, %struct.test_file* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %104

74:                                               ; preds = %61
  %75 = load %struct.test_file*, %struct.test_file** %9, align 8
  %76 = bitcast %struct.test_file* %75 to i8*
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

78:                                               ; preds = %50
  %79 = load %struct.test_file*, %struct.test_file** %9, align 8
  %80 = getelementptr inbounds %struct.test_file, %struct.test_file* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @S_ISREG(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %78
  %86 = load %struct.test_file*, %struct.test_file** %9, align 8
  %87 = getelementptr inbounds %struct.test_file, %struct.test_file* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @O_RDONLY, align 4
  %89 = call i64 @open(i8* %16, i32 %88)
  %90 = load %struct.test_file*, %struct.test_file** %9, align 8
  %91 = getelementptr inbounds %struct.test_file, %struct.test_file* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.test_file*, %struct.test_file** %9, align 8
  %94 = getelementptr inbounds %struct.test_file, %struct.test_file* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %104

99:                                               ; preds = %85
  %100 = load %struct.test_file*, %struct.test_file** %9, align 8
  %101 = bitcast %struct.test_file* %100 to i8*
  %102 = load i8**, i8*** %7, align 8
  store i8* %101, i8** %102, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103, %98, %73
  %105 = load %struct.test_file*, %struct.test_file** %9, align 8
  %106 = call i32 @free(%struct.test_file* %105)
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

108:                                              ; preds = %104, %99, %74, %46, %19
  %109 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local %struct.test_file* @malloc(i32) #2

declare dso_local i64 @stat(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @free(%struct.test_file*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @opendir(i8*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @open(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
