; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c___gr_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c___gr_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i8**, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.group*)* @__gr_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gr_scan(i8* %0, %struct.group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.group* %1, %struct.group** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.group*, %struct.group** %5, align 8
  %10 = getelementptr inbounds %struct.group, %struct.group* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 58)
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load %struct.group*, %struct.group** %5, align 8
  %20 = getelementptr inbounds %struct.group, %struct.group* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.group*, %struct.group** %5, align 8
  %22 = getelementptr inbounds %struct.group, %struct.group* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 58
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load %struct.group*, %struct.group** %5, align 8
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8 0, i8* %30, align 1
  br label %39

31:                                               ; preds = %15
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %118

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load %struct.group*, %struct.group** %5, align 8
  %43 = getelementptr inbounds %struct.group, %struct.group* %42, i32 0, i32 3
  %44 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %118

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i8* @strchr(i8* %49, i8 signext 58)
  store i8* %50, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %118

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %4, align 8
  %56 = load %struct.group*, %struct.group** %5, align 8
  %57 = getelementptr inbounds %struct.group, %struct.group* %56, i32 0, i32 2
  store i8** null, i8*** %57, align 8
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %107, %53
  %59 = load %struct.group*, %struct.group** %5, align 8
  %60 = getelementptr inbounds %struct.group, %struct.group* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i8** @reallocf(i8** %61, i32 %66)
  %68 = load %struct.group*, %struct.group** %5, align 8
  %69 = getelementptr inbounds %struct.group, %struct.group* %68, i32 0, i32 2
  store i8** %67, i8*** %69, align 8
  %70 = load %struct.group*, %struct.group** %5, align 8
  %71 = getelementptr inbounds %struct.group, %struct.group* %70, i32 0, i32 2
  %72 = load i8**, i8*** %71, align 8
  %73 = icmp eq i8** %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %118

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %104, %75
  %77 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.group*, %struct.group** %5, align 8
  %79 = getelementptr inbounds %struct.group, %struct.group* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %77, i8** %83, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load %struct.group*, %struct.group** %5, align 8
  %86 = getelementptr inbounds %struct.group, %struct.group* %85, i32 0, i32 2
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %84
  %94 = load %struct.group*, %struct.group** %5, align 8
  %95 = getelementptr inbounds %struct.group, %struct.group* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br label %104

104:                                              ; preds = %93, %84
  %105 = phi i1 [ false, %84 ], [ %103, %93 ]
  br i1 %105, label %76, label %106

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.group*, %struct.group** %5, align 8
  %109 = getelementptr inbounds %struct.group, %struct.group* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %58, label %117

117:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %74, %52, %46, %36, %14
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8** @reallocf(i8**, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
