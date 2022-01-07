; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getstyle.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getstyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@login_getstyle.defauthtypes = internal global [2 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"auth-%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @login_getstyle(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8** null, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @snprintf(i8* %19, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %26 = call i8** @login_getcaplist(%struct.TYPE_4__* %24, i8* %25, i32* null)
  store i8** %26, i8*** %8, align 8
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %13, %3
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = call i8** @login_getcaplist(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8** %33, i8*** %8, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8**, i8*** %8, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @login_getstyle.defauthtypes, i64 0, i64 0), i8*** %8, align 8
  br label %38

38:                                               ; preds = %37, %34
  store i32 0, i32* %7, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i8**, i8*** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %55, i8* %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %54, %47
  %64 = phi i1 [ false, %47 ], [ %62, %54 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %47

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %41, %38
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* null, i8** %71, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = load i8**, i8*** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @strdup(i8* %83)
  store i8* %84, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %78, %69
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  ret i8* %105
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8** @login_getcaplist(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
