; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_fiboptlist_csv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_fiboptlist_csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fibl_head_t = type { i32 }
%struct.fibl = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@ALLSTRLEN = common dso_local global i32 0, align 4
@numfibs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@defaultfib = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@fl_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fibl_head_t*)* @fiboptlist_csv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiboptlist_csv(i8* %0, %struct.fibl_head_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fibl_head_t*, align 8
  %5 = alloca %struct.fibl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fibl_head_t* %1, %struct.fibl_head_t** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load i32, i32* @ALLSTRLEN, align 4
  %17 = call i8* @calloc(i32 1, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %11, align 4
  br label %122

21:                                               ; preds = %15
  %22 = load i32, i32* @numfibs, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @ALLSTRLEN, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @numfibs, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %25, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %29)
  br label %36

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @ALLSTRLEN, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %32, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %36

36:                                               ; preds = %31, %24
  br label %57

37:                                               ; preds = %2
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* @ALLSTRLEN, align 4
  %43 = call i8* @calloc(i32 1, i32 %42)
  store i8* %43, i8** %7, align 8
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %122

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @ALLSTRLEN, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @defaultfib, align 4
  %52 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %48, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %37
  %54 = load i8*, i8** %3, align 8
  %55 = call i8* @strdup(i8* %54)
  store i8* %55, i8** %7, align 8
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %36
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %120, %57
  %59 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %59, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %121

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 45
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = call i32* @strchr(i8* %67, i8 signext 45)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.fibl_head_t*, %struct.fibl_head_t** %4, align 8
  %73 = call i32 @fiboptlist_range(i8* %71, %struct.fibl_head_t* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %122

77:                                               ; preds = %70
  br label %120

78:                                               ; preds = %66, %61
  store i64 0, i64* @errno, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strtol(i8* %79, i8** %9, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load i64, i64* @errno, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @numfibs, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @numfibs, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %88, %83
  %100 = load i64, i64* @EINVAL, align 8
  store i64 %100, i64* @errno, align 8
  br label %101

101:                                              ; preds = %99, %94, %91
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i64, i64* @errno, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %11, align 4
  br label %122

106:                                              ; preds = %102
  %107 = call i8* @calloc(i32 1, i32 4)
  %108 = bitcast i8* %107 to %struct.fibl*
  store %struct.fibl* %108, %struct.fibl** %5, align 8
  %109 = load %struct.fibl*, %struct.fibl** %5, align 8
  %110 = icmp eq %struct.fibl* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %11, align 4
  br label %122

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.fibl*, %struct.fibl** %5, align 8
  %115 = getelementptr inbounds %struct.fibl, %struct.fibl* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.fibl_head_t*, %struct.fibl_head_t** %4, align 8
  %117 = load %struct.fibl*, %struct.fibl** %5, align 8
  %118 = load i32, i32* @fl_next, align 4
  %119 = call i32 @TAILQ_INSERT_TAIL(%struct.fibl_head_t* %116, %struct.fibl* %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %77
  br label %58

121:                                              ; preds = %58
  br label %122

122:                                              ; preds = %121, %111, %105, %76, %46, %20
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fiboptlist_range(i8*, %struct.fibl_head_t*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.fibl_head_t*, %struct.fibl*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
