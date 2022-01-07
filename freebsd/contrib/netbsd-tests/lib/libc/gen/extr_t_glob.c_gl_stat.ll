; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_glob.c_gl_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_glob.c_gl_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_file = type { i8* }
%struct.TYPE_4__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a/b\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@b = common dso_local global %struct.gl_file* null, align 8
@a = common dso_local global %struct.gl_file* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"stat %s %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @gl_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_stat(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gl_file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = trunc i64 %14 to i32
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @trim(i8* %16, i32 %17, i8* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = call i32 @memset(%struct.TYPE_4__* %20, i32 0, i32 4)
  %22 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %90

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %16, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 97
  br i1 %37, label %38, label %82

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, i8* %16, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, i8* %16, i64 2
  %45 = load i8, i8* %44, align 2
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 98
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %16, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  store i64 4, i64* %10, align 8
  %54 = load %struct.gl_file*, %struct.gl_file** @b, align 8
  %55 = call i64 @__arraycount(%struct.gl_file* %54)
  store i64 %55, i64* %11, align 8
  %56 = load %struct.gl_file*, %struct.gl_file** @b, align 8
  store %struct.gl_file* %56, %struct.gl_file** %9, align 8
  br label %61

57:                                               ; preds = %48, %43
  store i64 2, i64* %10, align 8
  %58 = load %struct.gl_file*, %struct.gl_file** @a, align 8
  %59 = call i64 @__arraycount(%struct.gl_file* %58)
  store i64 %59, i64* %11, align 8
  %60 = load %struct.gl_file*, %struct.gl_file** @a, align 8
  store %struct.gl_file* %60, %struct.gl_file** %9, align 8
  br label %61

61:                                               ; preds = %57, %53
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.gl_file*, %struct.gl_file** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.gl_file, %struct.gl_file* %67, i64 %68
  %70 = getelementptr inbounds %struct.gl_file, %struct.gl_file* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %16, i64 %72
  %74 = call i64 @strcmp(i8* %71, i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %90

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %62

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %38, %33
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @DPRINTF(i8* %87)
  %89 = load i32, i32* @ENOENT, align 4
  store i32 %89, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %82, %76, %27
  %91 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trim(i8*, i32, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @__arraycount(%struct.gl_file*) #2

declare dso_local i32 @DPRINTF(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
