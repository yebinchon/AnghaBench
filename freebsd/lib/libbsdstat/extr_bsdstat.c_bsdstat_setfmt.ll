; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbsdstat/extr_bsdstat.c_bsdstat_setfmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbsdstat/extr_bsdstat.c_bsdstat_setfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdstat = type { i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: unknown statistic name \22%s\22 skipped\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: not enough room for all stats; stopped at %s\0A\00", align 1
@FMTS_IS_STAT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdstat*, i8*)* @bsdstat_setfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsdstat_setfmt(%struct.bsdstat* %0, i8* %1) #0 {
  %3 = alloca %struct.bsdstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bsdstat* %0, %struct.bsdstat** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlcpy(i8* %10, i8* %11, i32 4096)
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %76, %47, %2
  %15 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %106

17:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %21 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %27 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcasecmp(i8* %25, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %18

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %44 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @stderr, align 4
  %49 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %50 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %52)
  br label %14

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 4
  %57 = icmp sgt i32 %56, 8
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %61 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %63)
  br label %106

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %70 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 32, i8* %75, align 1
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i8, i8* @FMTS_IS_STAT, align 1
  %78 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %79 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 %77, i8* %84, align 1
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %89 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 %87, i8* %94, align 1
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %100 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 %98, i8* %105, align 1
  br label %14

106:                                              ; preds = %58, %14
  %107 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %108 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 0, i8* %112, align 1
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
