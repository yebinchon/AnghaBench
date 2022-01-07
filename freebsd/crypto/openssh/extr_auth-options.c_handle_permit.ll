; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_handle_permit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_handle_permit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"too many permission directives\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"*:%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@NI_MAXHOST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid permission hostname\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid permission port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8***, i64*, i8**)* @handle_permit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_permit(i8** %0, i32 %1, i8*** %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8*** %2, i8**** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %19 = load i8***, i8**** %9, align 8
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %16, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %17, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %23 = load i64, i64* %17, align 8
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  store i32 -1, i32* %6, align 4
  br label %114

28:                                               ; preds = %5
  %29 = load i8**, i8*** %7, align 8
  %30 = call i8* @opt_dequote(i8** %29, i8** %18)
  store i8* %30, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %114

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i8*, i8** %12, align 8
  %38 = call i32* @strchr(i8* %37, i8 signext 58)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 8
  store i32 -1, i32* %6, align 4
  br label %114

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %13, align 8
  store i8* %49, i8** %12, align 8
  br label %50

50:                                               ; preds = %46, %36, %33
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @strdup(i8* %51)
  store i8* %52, i8** %13, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %57, align 8
  store i32 -1, i32* %6, align 4
  br label %114

58:                                               ; preds = %50
  %59 = load i8*, i8** %13, align 8
  store i8* %59, i8** %14, align 8
  %60 = call i8* @hpdelim(i8** %14)
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %15, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = load i64, i64* @NI_MAXHOST, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %73, align 8
  store i32 -1, i32* %6, align 4
  br label %114

74:                                               ; preds = %63
  %75 = load i8*, i8** %14, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %14, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  %83 = call i64 @a2port(i8* %82)
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81, %74
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %90, align 8
  store i32 -1, i32* %6, align 4
  br label %114

91:                                               ; preds = %81, %77
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8**, i8*** %16, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %17, align 8
  %97 = add i64 %96, 1
  %98 = call i8** @recallocarray(i8** %94, i64 %95, i64 %97, i32 8)
  store i8** %98, i8*** %16, align 8
  %99 = icmp eq i8** %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %103, align 8
  store i32 -1, i32* %6, align 4
  br label %114

104:                                              ; preds = %91
  %105 = load i8*, i8** %12, align 8
  %106 = load i8**, i8*** %16, align 8
  %107 = load i64, i64* %17, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %17, align 8
  %109 = getelementptr inbounds i8*, i8** %106, i64 %107
  store i8* %105, i8** %109, align 8
  %110 = load i8**, i8*** %16, align 8
  %111 = load i8***, i8**** %9, align 8
  store i8** %110, i8*** %111, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64*, i64** %10, align 8
  store i64 %112, i64* %113, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %104, %100, %85, %68, %54, %44, %32, %26
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i8* @opt_dequote(i8**, i8**) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @hpdelim(i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @a2port(i8*) #1

declare dso_local i8** @recallocarray(i8**, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
