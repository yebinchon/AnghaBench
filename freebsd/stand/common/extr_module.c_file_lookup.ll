; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@emptyextlist = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i8**)* @file_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @file_lookup(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i8**, i8*** %9, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i8**, i8*** @emptyextlist, align 8
  store i8** %22, i8*** %9, align 8
  br label %23

23:                                               ; preds = %21, %4
  %24 = load i8**, i8*** %9, align 8
  store i8** %24, i8*** %13, align 8
  br label %25

25:                                               ; preds = %39, %23
  %26 = load i8**, i8*** %13, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i8**, i8*** %13, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %39

39:                                               ; preds = %38
  %40 = load i8**, i8*** %13, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %13, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 2
  %49 = call i8* @malloc(i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  br label %115

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @bcopy(i8* %54, i8* %55, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 47, i8* %74, align 1
  br label %75

75:                                               ; preds = %69, %60, %53
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @bcopy(i8* %80, i8* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %12, align 8
  %88 = load i8**, i8*** %9, align 8
  store i8** %88, i8*** %13, align 8
  br label %89

89:                                               ; preds = %109, %75
  %90 = load i8**, i8*** %13, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load i8*, i8** %12, align 8
  %95 = load i8**, i8*** %13, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcpy(i8* %94, i8* %96)
  %98 = load i8*, i8** %11, align 8
  %99 = call i64 @stat(i8* %98, %struct.stat* %10)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @S_ISREG(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** %11, align 8
  store i8* %107, i8** %5, align 8
  br label %115

108:                                              ; preds = %101, %93
  br label %109

109:                                              ; preds = %108
  %110 = load i8**, i8*** %13, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %13, align 8
  br label %89

112:                                              ; preds = %89
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @free(i8* %113)
  store i8* null, i8** %5, align 8
  br label %115

115:                                              ; preds = %112, %106, %52
  %116 = load i8*, i8** %5, align 8
  ret i8* %116
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
