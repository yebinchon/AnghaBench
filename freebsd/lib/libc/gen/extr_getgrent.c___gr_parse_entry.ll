; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c___gr_parse_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c___gr_parse_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8**, i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@NS_NOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@NS_SUCCESS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NS_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gr_parse_entry(i8* %0, i64 %1, %struct.group* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.group* %2, %struct.group** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.group*, %struct.group** %10, align 8
  %21 = call i32 @memset(%struct.group* %20, i32 0, i32 32)
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @_ALIGN(i8* %22)
  %24 = inttoptr i64 %23 to i8**
  store i8** %24, i8*** %17, align 8
  %25 = load i8**, i8*** %17, align 8
  %26 = bitcast i8** %25 to i8*
  %27 = load i8*, i8** %11, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = load i64, i64* %12, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = udiv i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %6
  %39 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.group*, %struct.group** %10, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = icmp eq i8* %39, null
  br i1 %42, label %66, label %43

43:                                               ; preds = %38
  %44 = load %struct.group*, %struct.group** %10, align 8
  %45 = getelementptr inbounds %struct.group, %struct.group* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %43
  %52 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.group*, %struct.group** %10, align 8
  %55 = getelementptr inbounds %struct.group, %struct.group* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = icmp eq i32* %53, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %58, i8** %14, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %57, %51, %43, %38, %6
  %67 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %67, i32* %7, align 4
  br label %120

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = call i64 @strtoul(i8* %70, i8** %14, i32 10)
  store i64 %71, i64* %18, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %78, i32* %7, align 4
  br label %120

79:                                               ; preds = %68
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.group*, %struct.group** %10, align 8
  %82 = getelementptr inbounds %struct.group, %struct.group* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i8**, i8*** %17, align 8
  %84 = load %struct.group*, %struct.group** %10, align 8
  %85 = getelementptr inbounds %struct.group, %struct.group* %84, i32 0, i32 1
  store i8** %83, i8*** %85, align 8
  br label %86

86:                                               ; preds = %109, %79
  %87 = load i32, i32* %19, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  br i1 %93, label %94, label %110

94:                                               ; preds = %92
  %95 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %95, i8** %16, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i8*, i8** %16, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i8*, i8** %16, align 8
  %105 = load i8**, i8*** %17, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %17, align 8
  store i8* %104, i8** %105, align 8
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %103, %98, %94
  br label %86

110:                                              ; preds = %92
  %111 = load i8**, i8*** %17, align 8
  store i8* null, i8** %111, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %115, i32* %7, align 4
  br label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @ERANGE, align 4
  %118 = load i32*, i32** %13, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @NS_RETURN, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %116, %114, %77, %66
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.group*, i32, i32) #1

declare dso_local i64 @_ALIGN(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
