; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_fiboptlist_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_fiboptlist_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fibl_head_t = type { i32 }
%struct.fibl = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@errno = common dso_local global i32 0, align 4
@numfibs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fl_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fibl_head_t*)* @fiboptlist_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiboptlist_range(i8* %0, %struct.fibl_head_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fibl_head_t*, align 8
  %5 = alloca %struct.fibl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fibl_head_t* %1, %struct.fibl_head_t** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %7, align 8
  store i8* %14, i8** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %63, %2
  %16 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %58 [
    i32 0, label %20
    i32 1, label %20
  ]

20:                                               ; preds = %18, %18
  store i32 0, i32* @errno, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strtol(i8* %21, i8** %9, i32 0)
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @numfibs, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @numfibs, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %33, %28
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  br label %52

52:                                               ; preds = %50, %42, %39
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* @errno, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %59

58:                                               ; preds = %18
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %98

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %15

66:                                               ; preds = %15
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %12, align 4
  br label %98

73:                                               ; preds = %66
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %94, %73
  %77 = load i32, i32* %11, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = call %struct.fibl* @calloc(i32 1, i32 4)
  store %struct.fibl* %82, %struct.fibl** %5, align 8
  %83 = load %struct.fibl*, %struct.fibl** %5, align 8
  %84 = icmp eq %struct.fibl* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %12, align 4
  br label %98

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.fibl*, %struct.fibl** %5, align 8
  %89 = getelementptr inbounds %struct.fibl, %struct.fibl* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.fibl_head_t*, %struct.fibl_head_t** %4, align 8
  %91 = load %struct.fibl*, %struct.fibl** %5, align 8
  %92 = load i32, i32* @fl_next, align 4
  %93 = call i32 @TAILQ_INSERT_TAIL(%struct.fibl_head_t* %90, %struct.fibl* %91, i32 %92)
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97, %85, %72, %62
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.fibl* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.fibl_head_t*, %struct.fibl*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
