; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlMergePathnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlMergePathnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Include: Prefix path - \22%s\22\0AInclude: FilePathname - \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Include: Merged Pathname - \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FlMergePathnames(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i32, i8*, i8*, ...) @DbgPrint(i32 %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %18, %14, %2
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add nsw i64 %31, 1
  %33 = call i8* @UtLocalCacheCalloc(i64 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcpy(i8* %34, i8* %35)
  br label %100

37:                                               ; preds = %23
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %39, 1
  %41 = call i8* @UtLocalCacheCalloc(i64 %40)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %63, %37
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @strrchr(i8* %58, i8 signext 47)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %75

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  store i8* %66, i8** %4, align 8
  br label %45

67:                                               ; preds = %55
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @strrchr(i8* %68, i8 signext 47)
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @strlen(i8* %76)
  %78 = load i8*, i8** %4, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = add nsw i64 %77, %79
  %81 = add nsw i64 %80, 2
  %82 = call i8* @UtLocalCacheCalloc(i64 %81)
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %75
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strcpy(i8* %91, i8* %92)
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcat(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %85, %75
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @strcat(i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %29
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @UtConvertBackslashes(i8* %101)
  %103 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @DbgPrint(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %6, align 8
  ret i8* %106
}

declare dso_local i32 @DbgPrint(i32, i8*, i8*, ...) #1

declare dso_local i8* @UtLocalCacheCalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @UtConvertBackslashes(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
