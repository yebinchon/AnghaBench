; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_read_metatags.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_read_metatags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"KERNEL\00", align 1
@inst_kernel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"MODULES\00", align 1
@inst_modules = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ROOTFS\00", align 1
@inst_rootfs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"LOADER_RC\00", align 1
@inst_loader_rc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_metatags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_metatags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %12 = call i32 @read(i32 %10, i8* %11, i32 1024)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %2, align 4
  br label %91

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 1024
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  store i32 0, i32* %9, align 4
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %87, %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %89

38:                                               ; preds = %36
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 61)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %9, align 4
  br label %89

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  store i8 0, i8* %46, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 10)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %9, align 4
  br label %89

54:                                               ; preds = %45
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 0, i8* %55, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @setpath(i32* @inst_kernel, i8* %61)
  store i32 %62, i32* %9, align 4
  br label %87

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @setmultipath(i32* @inst_modules, i8* %68)
  store i32 %69, i32* %9, align 4
  br label %86

70:                                               ; preds = %63
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @setpath(i32* @inst_rootfs, i8* %75)
  store i32 %76, i32* %9, align 4
  br label %85

77:                                               ; preds = %70
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @setpath(i32* @inst_loader_rc, i8* %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %6, align 8
  br label %28

89:                                               ; preds = %52, %43, %36
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %21, %15
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @setpath(i32*, i8*) #1

declare dso_local i32 @setmultipath(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
