; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_dirname.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Filename is too long: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rtld_dirname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtld_dirname(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9, %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 46, i8* %16, align 1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  store i32 0, i32* %3, align 4
  br label %119

19:                                               ; preds = %9
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %37, %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ugt i8* %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i1 [ false, %26 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %6, align 8
  br label %26

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 47
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %6, align 8
  br label %41

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 47, i32 46
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 0, i8* %70, align 1
  store i32 0, i32* %3, align 4
  br label %119

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %84, %71
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = icmp ugt i8* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ %83, %79 ]
  br i1 %85, label %72, label %86

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = add nsw i64 %92, 2
  %94 = load i32, i32* @PATH_MAX, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp sgt i64 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @_rtld_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %98)
  store i32 -1, i32* %3, align 4
  br label %119

100:                                              ; preds = %87
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = add nsw i64 %107, 1
  %109 = trunc i64 %108 to i32
  %110 = call i32 @strncpy(i8* %101, i8* %102, i32 %109)
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = add nsw i64 %116, 1
  %118 = getelementptr inbounds i8, i8* %111, i64 %117
  store i8 0, i8* %118, align 1
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %100, %97, %59, %14
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_rtld_error(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
