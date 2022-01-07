; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_to_text_nfs4.c_format_who.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_to_text_nfs4.c_format_who.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }
%struct.group = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"owner@\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"user:%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"user:%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"group@\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"group:%d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"group:%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"everyone@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @format_who to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_who(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca %struct.group*, align 8
  %14 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @acl_get_tag_type(i32 %15, i32* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %101 [
    i32 128, label %23
    i32 129, label %27
    i32 130, label %60
    i32 131, label %64
    i32 132, label %97
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %102

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @acl_get_qualifier(i32 %28)
  %30 = inttoptr i64 %29 to i64*
  store i64* %30, i64** %14, align 8
  %31 = load i64*, i64** %14, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %103

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64*, i64** %14, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.passwd* @getpwuid(i64 %39)
  store %struct.passwd* %40, %struct.passwd** %12, align 8
  br label %42

41:                                               ; preds = %34
  store %struct.passwd* null, %struct.passwd** %12, align 8
  br label %42

42:                                               ; preds = %41, %37
  %43 = load %struct.passwd*, %struct.passwd** %12, align 8
  %44 = icmp eq %struct.passwd* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %59

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.passwd*, %struct.passwd** %12, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %102

60:                                               ; preds = %21
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %102

64:                                               ; preds = %21
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @acl_get_qualifier(i32 %65)
  %67 = inttoptr i64 %66 to i64*
  store i64* %67, i64** %14, align 8
  %68 = load i64*, i64** %14, align 8
  %69 = icmp eq i64* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %103

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i64*, i64** %14, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.group* @getgrgid(i64 %76)
  store %struct.group* %77, %struct.group** %13, align 8
  br label %79

78:                                               ; preds = %71
  store %struct.group* null, %struct.group** %13, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load %struct.group*, %struct.group** %13, align 8
  %81 = icmp eq %struct.group* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %83, i64 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %96

89:                                               ; preds = %79
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.group*, %struct.group** %13, align 8
  %93 = getelementptr inbounds %struct.group, %struct.group* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %90, i64 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %89, %82
  br label %102

97:                                               ; preds = %21
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %98, i64 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %102

101:                                              ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %103

102:                                              ; preds = %97, %96, %60, %59, %23
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %101, %70, %33, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @acl_get_tag_type(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @acl_get_qualifier(i32) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local %struct.group* @getgrgid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
