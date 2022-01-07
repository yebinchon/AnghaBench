; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_auth2_methods_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_auth2_methods_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"empty authentication method list\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@authmethods = common dso_local global %struct.TYPE_2__** null, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Disabled method \22%s\22 in AuthenticationMethods list \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Unknown authentication method \22%s\22 in list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth2_methods_valid(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @xstrdup(i8* %20)
  store i8* %21, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %89, %19
  %23 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %90

25:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %80, %25
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @authmethods, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  br i1 %36, label %37, label %83

37:                                               ; preds = %35
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 58)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @authmethods, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strcmp(i8* %44, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %80

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @authmethods, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = icmp eq i64* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @authmethods, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65, %57
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76)
  br label %91

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %54
  store i64 1, i64* %11, align 8
  br label %83

80:                                               ; preds = %53
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %26

83:                                               ; preds = %79, %35
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %91

89:                                               ; preds = %83
  br label %22

90:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %86, %74
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
