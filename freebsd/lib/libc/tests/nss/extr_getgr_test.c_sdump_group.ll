; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_sdump_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_sdump_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i32, i8** }

@.str = private unnamed_addr constant [10 x i8] c"%s:%s:%d:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nomem\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.group*, i8*, i64)* @sdump_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdump_group(%struct.group* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.group*, %struct.group** %4, align 8
  %12 = getelementptr inbounds %struct.group, %struct.group* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.group*, %struct.group** %4, align 8
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.group*, %struct.group** %4, align 8
  %18 = getelementptr inbounds %struct.group, %struct.group* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %97

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load %struct.group*, %struct.group** %4, align 8
  %36 = getelementptr inbounds %struct.group, %struct.group* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %93

39:                                               ; preds = %30
  %40 = load %struct.group*, %struct.group** %4, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 3
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %88

45:                                               ; preds = %39
  %46 = load %struct.group*, %struct.group** %4, align 8
  %47 = getelementptr inbounds %struct.group, %struct.group* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  store i8** %48, i8*** %7, align 8
  br label %49

49:                                               ; preds = %84, %45
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = load %struct.group*, %struct.group** %4, align 8
  %58 = getelementptr inbounds %struct.group, %struct.group* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = icmp eq i8** %56, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i64, i64* %6, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  br label %97

75:                                               ; preds = %53
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %97

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i8**, i8*** %7, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %7, align 8
  br label %49

87:                                               ; preds = %49
  br label %92

88:                                               ; preds = %39
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %89, i64 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %87
  br label %97

93:                                               ; preds = %30
  %94 = load i8*, i8** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %94, i64 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %29, %74, %82, %93, %92
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
