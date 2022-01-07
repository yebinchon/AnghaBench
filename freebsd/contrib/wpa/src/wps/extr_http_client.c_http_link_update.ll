; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_link_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_link_update(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %121

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @os_strncmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %3, align 8
  br label %121

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @os_strncmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %3, align 8
  br label %121

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @os_strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @os_strlen(i8* %28)
  %30 = add nsw i32 %27, %29
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i8* @os_malloc(i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %3, align 8
  br label %121

39:                                               ; preds = %24
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 7
  %48 = call i8* @os_strchr(i8* %47, i8 signext 47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @os_snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55)
  br label %79

57:                                               ; preds = %45
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @os_memcpy(i8* %58, i8* %59, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @os_strlen(i8* %75)
  %77 = add nsw i32 %76, 1
  %78 = call i32 @os_memcpy(i8* %73, i8* %74, i32 %77)
  br label %79

79:                                               ; preds = %57, %51
  br label %117

80:                                               ; preds = %39
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 7
  %83 = call i8* @os_strrchr(i8* %82, i8 signext 47)
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @os_snprintf(i8* %87, i64 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %89, i8* %90)
  br label %116

92:                                               ; preds = %80
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = add nsw i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i32 @os_memcpy(i8* %93, i8* %94, i32 %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8*, i8** %4, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @os_strlen(i8* %112)
  %114 = add nsw i32 %113, 1
  %115 = call i32 @os_memcpy(i8* %110, i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %92, %86
  br label %117

117:                                              ; preds = %116, %79
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @os_free(i8* %118)
  %120 = load i8*, i8** %6, align 8
  store i8* %120, i8** %3, align 8
  br label %121

121:                                              ; preds = %117, %37, %22, %16, %11
  %122 = load i8*, i8** %3, align 8
  ret i8* %122
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
