; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_fn_tilde_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_fn_tilde_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fn_tilde_expand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 126
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %2, align 8
  br label %100

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i8* @strchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  br label %100

28:                                               ; preds = %21
  br label %52

29:                                               ; preds = %15
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i8* @el_calloc(i64 %36, i32 1)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %100

41:                                               ; preds = %29
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, 2
  %47 = call i32 @strncpy(i8* %42, i8* %44, i64 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 2
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %41, %28
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 (...) @getuid()
  %60 = call %struct.passwd* @getpwuid(i32 %59)
  store %struct.passwd* %60, %struct.passwd** %4, align 8
  br label %64

61:                                               ; preds = %52
  %62 = load i8*, i8** %5, align 8
  %63 = call %struct.passwd* @getpwnam(i8* %62)
  store %struct.passwd* %63, %struct.passwd** %4, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @el_free(i8* %65)
  %67 = load %struct.passwd*, %struct.passwd** %4, align 8
  %68 = icmp eq %struct.passwd* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @strdup(i8* %70)
  store i8* %71, i8** %2, align 8
  br label %100

72:                                               ; preds = %64
  %73 = load i64, i64* %6, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %3, align 8
  %76 = load %struct.passwd*, %struct.passwd** %4, align 8
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = add nsw i32 %79, 1
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = add nsw i32 %80, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @el_calloc(i64 %86, i32 1)
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  store i8* null, i8** %2, align 8
  br label %100

91:                                               ; preds = %72
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.passwd*, %struct.passwd** %4, align 8
  %95 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @snprintf(i8* %92, i64 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %96, i8* %97)
  %99 = load i8*, i8** %5, align 8
  store i8* %99, i8** %2, align 8
  br label %100

100:                                              ; preds = %91, %90, %69, %40, %27, %12
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
