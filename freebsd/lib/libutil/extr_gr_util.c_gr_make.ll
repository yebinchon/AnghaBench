; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_make.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8**, i64, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s:%s:%ju:\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gr_make(%struct.group* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %3, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.group*, %struct.group** %3, align 8
  %12 = getelementptr inbounds %struct.group, %struct.group* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.group*, %struct.group** %3, align 8
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.group*, %struct.group** %3, align 8
  %18 = getelementptr inbounds %struct.group, %struct.group* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @snprintf(i32* null, i32 0, i8* %10, i32 %13, i32 %16, i32 %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load %struct.group*, %struct.group** %3, align 8
  %25 = getelementptr inbounds %struct.group, %struct.group* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load %struct.group*, %struct.group** %3, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load %struct.group*, %struct.group** %3, align 8
  %40 = getelementptr inbounds %struct.group, %struct.group* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %46, 1
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i64, i64* %8, align 8
  %62 = call i8* @malloc(i64 %61)
  store i8* %62, i8** %7, align 8
  store i8* %62, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8* null, i8** %2, align 8
  br label %115

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.group*, %struct.group** %3, align 8
  %69 = getelementptr inbounds %struct.group, %struct.group* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.group*, %struct.group** %3, align 8
  %72 = getelementptr inbounds %struct.group, %struct.group* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.group*, %struct.group** %3, align 8
  %75 = getelementptr inbounds %struct.group, %struct.group* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @sprintf(i8* %66, i8* %67, i32 %70, i32 %73, i32 %77)
  %79 = load i8*, i8** %7, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %7, align 8
  %82 = load %struct.group*, %struct.group** %3, align 8
  %83 = getelementptr inbounds %struct.group, %struct.group* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %113

86:                                               ; preds = %65
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %109, %86
  %88 = load %struct.group*, %struct.group** %3, align 8
  %89 = getelementptr inbounds %struct.group, %struct.group* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %87
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i8* @stpcpy(i8* %97, i8* %98)
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.group*, %struct.group** %3, align 8
  %102 = getelementptr inbounds %struct.group, %struct.group* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @stpcpy(i8* %100, i8* %107)
  store i8* %108, i8** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %87

112:                                              ; preds = %87
  br label %113

113:                                              ; preds = %112, %65
  %114 = load i8*, i8** %6, align 8
  store i8* %114, i8** %2, align 8
  br label %115

115:                                              ; preds = %113, %64
  %116 = load i8*, i8** %2, align 8
  ret i8* %116
}

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
