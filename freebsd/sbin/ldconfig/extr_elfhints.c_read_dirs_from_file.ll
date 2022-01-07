; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_read_dirs_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_read_dirs_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s:%d: trailing characters ignored\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @read_dirs_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dirs_from_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %98, %48, %21
  %23 = trunc i64 %12 to i32
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @fgets(i8* %14, i32 %23, i32* %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %102

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  store i8* %14, i8** %9, align 8
  br label %30

30:                                               ; preds = %35, %27
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  br label %30

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  br label %22

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %63, %49
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isspace(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  br label %51

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  store i8 0, i8* %72, align 1
  br label %74

74:                                               ; preds = %79, %71
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isspace(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  br label %74

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i8*, i8** %10, align 8
  %94 = call i8* @strdup(i8* %93)
  store i8* %94, i8** %10, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i8*, i8** %3, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @add_dir(i8* %99, i8* %100, i32 0)
  br label %22

102:                                              ; preds = %22
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @fclose(i32* %103)
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @warnx(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @add_dir(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
