; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_tentry_fill_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_tentry_fill_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i64, i64, i64 }

@co = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot guess key '%s' type\00", align 1
@IPFW_VTYPE_LEGACY = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error requesting table %s info\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Table %s does not exist\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Table %s does not exist, cannot guess key '%s' type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i8*, i32, i64*, i64*, %struct.TYPE_10__*)* @tentry_fill_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tentry_fill_key(%struct.TYPE_11__* %0, i32* %1, i8* %2, i32 %3, i64* %4, i64* %5, %struct.TYPE_10__* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %29 = call i32 @table_get_info(%struct.TYPE_11__* %27, %struct.TYPE_10__* %28)
  store i32 %29, i32* %18, align 4
  br label %31

30:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %18, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @co, i32 0, i32 0), align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %17, align 8
  br label %57

47:                                               ; preds = %34
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @guess_key_type(i8* %48, i64* %15)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @EX_USAGE, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @errx(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* @IPFW_VTYPE_LEGACY, align 8
  store i64 %56, i64* %17, align 8
  br label %57

57:                                               ; preds = %55, %37
  br label %99

58:                                               ; preds = %31
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @ESRCH, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* @EX_OSERR, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i32, i8*, i8*, ...) @errx(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %62, %58
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* @EX_DATAERR, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (i32, i8*, i8*, ...) @errx(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %74, %71
  %84 = load i8*, i8** %10, align 8
  %85 = call i64 @guess_key_type(i8* %84, i64* %15)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i32, i32* @EX_USAGE, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (i32, i8*, i8*, ...) @errx(i32 %88, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %87, %83
  %98 = load i64, i64* @IPFW_VTYPE_LEGACY, align 8
  store i64 %98, i64* %17, align 8
  br label %99

99:                                               ; preds = %97, %57
  %100 = load i8*, i8** %10, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @tentry_fill_key_type(i8* %100, i32* %101, i64 %102, i64 %103)
  %105 = load i64, i64* %15, align 8
  %106 = load i64*, i64** %12, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64*, i64** %13, align 8
  store i64 %107, i64* %108, align 8
  ret void
}

declare dso_local i32 @table_get_info(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @guess_key_type(i8*, i64*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @tentry_fill_key_type(i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
