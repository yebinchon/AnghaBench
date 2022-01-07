; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_fill_nsec3_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_fill_nsec3_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_env = type { i64*, i64* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot parse: %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"nsec3 key iterations not ascending: %d %d\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"validator nsec3cfg keysz %d mxiter %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_env*, i8*, i32)* @fill_nsec3_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_nsec3_iter(%struct.val_env* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.val_env*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.val_env* %0, %struct.val_env** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.val_env*, %struct.val_env** %5, align 8
  %11 = getelementptr inbounds %struct.val_env, %struct.val_env* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = call i32 @free(i64* %12)
  %14 = load %struct.val_env*, %struct.val_env** %5, align 8
  %15 = getelementptr inbounds %struct.val_env, %struct.val_env* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = call i32 @free(i64* %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = call i64 @calloc(i32 8, i64 %19)
  %21 = inttoptr i64 %20 to i64*
  %22 = load %struct.val_env*, %struct.val_env** %5, align 8
  %23 = getelementptr inbounds %struct.val_env, %struct.val_env* %22, i32 0, i32 0
  store i64* %21, i64** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = call i64 @calloc(i32 8, i64 %25)
  %27 = inttoptr i64 %26 to i64*
  %28 = load %struct.val_env*, %struct.val_env** %5, align 8
  %29 = getelementptr inbounds %struct.val_env, %struct.val_env* %28, i32 0, i32 1
  store i64* %27, i64** %29, align 8
  %30 = load %struct.val_env*, %struct.val_env** %5, align 8
  %31 = getelementptr inbounds %struct.val_env, %struct.val_env* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.val_env*, %struct.val_env** %5, align 8
  %36 = getelementptr inbounds %struct.val_env, %struct.val_env* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %3
  %40 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %140

41:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %136, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %139

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strtol(i8* %47, i8** %8, i32 10)
  %49 = load %struct.val_env*, %struct.val_env** %5, align 8
  %50 = getelementptr inbounds %struct.val_env, %struct.val_env* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %48, i64* %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 0, i32* %4, align 4
  br label %140

61:                                               ; preds = %46
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strtol(i8* %63, i8** %8, i32 10)
  %65 = load %struct.val_env*, %struct.val_env** %5, align 8
  %66 = getelementptr inbounds %struct.val_env, %struct.val_env* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  store i32 0, i32* %4, align 4
  br label %140

77:                                               ; preds = %61
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %77
  %82 = load %struct.val_env*, %struct.val_env** %5, align 8
  %83 = getelementptr inbounds %struct.val_env, %struct.val_env* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.val_env*, %struct.val_env** %5, align 8
  %91 = getelementptr inbounds %struct.val_env, %struct.val_env* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %89, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %81
  %99 = load %struct.val_env*, %struct.val_env** %5, align 8
  %100 = getelementptr inbounds %struct.val_env, %struct.val_env* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.val_env*, %struct.val_env** %5, align 8
  %109 = getelementptr inbounds %struct.val_env, %struct.val_env* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %115)
  store i32 0, i32* %4, align 4
  br label %140

117:                                              ; preds = %81, %77
  %118 = load i32, i32* @VERB_ALGO, align 4
  %119 = load %struct.val_env*, %struct.val_env** %5, align 8
  %120 = getelementptr inbounds %struct.val_env, %struct.val_env* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.val_env*, %struct.val_env** %5, align 8
  %128 = getelementptr inbounds %struct.val_env, %struct.val_env* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @verbose(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %42

139:                                              ; preds = %42
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %98, %74, %58, %39
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @free(i64*) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
