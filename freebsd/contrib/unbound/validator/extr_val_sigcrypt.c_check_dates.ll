; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_check_dates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_check_dates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_env = type { i32, i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"date override: ignore date\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"date override option %d\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"verify: inception after expiration, signature bad\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"signature inception after expiration\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"verify: signature bad, current time is before inception date\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"signature before inception date\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"verify warning suspicious signature inception  or bad local clock\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"verify: signature expired\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"signature expired\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"verify warning suspicious signature expiration  or bad local clock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_env*, i32, i32*, i32*, i8**)* @check_dates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dates(%struct.val_env* %0, i32 %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.val_env* %0, %struct.val_env** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @memmove(i32* %12, i32* %17, i32 4)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @memmove(i32* %13, i32* %19, i32 4)
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @ntohl(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.val_env*, %struct.val_env** %7, align 8
  %26 = getelementptr inbounds %struct.val_env, %struct.val_env* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %5
  %30 = load %struct.val_env*, %struct.val_env** %7, align 8
  %31 = getelementptr inbounds %struct.val_env, %struct.val_env* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @VERB_ALGO, align 4
  %36 = call i32 (i32, i8*, ...) @verbose(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %150

37:                                               ; preds = %29
  %38 = load %struct.val_env*, %struct.val_env** %7, align 8
  %39 = getelementptr inbounds %struct.val_env, %struct.val_env* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 (i32, i8*, ...) @verbose(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @compare_1918(i32 %47, i32 %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @sigdate_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  store i32 0, i32* %6, align 4
  br label %150

57:                                               ; preds = %46
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @compare_1918(i32 %58, i32 %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @subtract_1918(i32 %63, i32 %64)
  %66 = sdiv i32 %65, 10
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.val_env*, %struct.val_env** %7, align 8
  %69 = getelementptr inbounds %struct.val_env, %struct.val_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.val_env*, %struct.val_env** %7, align 8
  %74 = getelementptr inbounds %struct.val_env, %struct.val_env* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %72, %62
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.val_env*, %struct.val_env** %7, align 8
  %79 = getelementptr inbounds %struct.val_env, %struct.val_env* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.val_env*, %struct.val_env** %7, align 8
  %84 = getelementptr inbounds %struct.val_env, %struct.val_env* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @subtract_1918(i32 %87, i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @sigdate_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %97, align 8
  store i32 0, i32* %6, align 4
  br label %150

98:                                               ; preds = %86
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @sigdate_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %57
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i64 @compare_1918(i32 %104, i32 %105)
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %149

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @subtract_1918(i32 %109, i32 %110)
  %112 = sdiv i32 %111, 10
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.val_env*, %struct.val_env** %7, align 8
  %115 = getelementptr inbounds %struct.val_env, %struct.val_env* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.val_env*, %struct.val_env** %7, align 8
  %120 = getelementptr inbounds %struct.val_env, %struct.val_env* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %118, %108
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.val_env*, %struct.val_env** %7, align 8
  %125 = getelementptr inbounds %struct.val_env, %struct.val_env* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.val_env*, %struct.val_env** %7, align 8
  %130 = getelementptr inbounds %struct.val_env, %struct.val_env* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %128, %122
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @subtract_1918(i32 %133, i32 %134)
  %136 = load i32, i32* %16, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @sigdate_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %143, align 8
  store i32 0, i32* %6, align 4
  br label %150

144:                                              ; preds = %132
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @sigdate_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %103
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %149, %138, %92, %51, %34
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i64 @compare_1918(i32, i32) #1

declare dso_local i32 @sigdate_error(i8*, i32, i32, i32) #1

declare dso_local i32 @subtract_1918(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
