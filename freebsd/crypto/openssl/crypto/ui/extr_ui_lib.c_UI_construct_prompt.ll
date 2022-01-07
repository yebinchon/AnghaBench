; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_construct_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_construct_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@__const.UI_construct_prompt.prompt1 = private unnamed_addr constant [7 x i8] c"Enter \00", align 1
@__const.UI_construct_prompt.prompt2 = private unnamed_addr constant [6 x i8] c" for \00", align 1
@__const.UI_construct_prompt.prompt3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@UI_F_UI_CONSTRUCT_PROMPT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @UI_construct_prompt(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [7 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i8* (%struct.TYPE_6__*, i8*, i8*)**
  %18 = load i8* (%struct.TYPE_6__*, i8*, i8*)*, i8* (%struct.TYPE_6__*, i8*, i8*)** %17, align 8
  %19 = icmp ne i8* (%struct.TYPE_6__*, i8*, i8*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i8* (%struct.TYPE_6__*, i8*, i8*)**
  %26 = load i8* (%struct.TYPE_6__*, i8*, i8*)*, i8* (%struct.TYPE_6__*, i8*, i8*)** %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* %26(%struct.TYPE_6__* %27, i8* %28, i8* %29)
  store i8* %30, i8** %8, align 8
  br label %98

31:                                               ; preds = %3
  %32 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.UI_construct_prompt.prompt1, i32 0, i32 0), i64 7, i1 false)
  %33 = bitcast [6 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.UI_construct_prompt.prompt2, i32 0, i32 0), i64 6, i1 false)
  %34 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.UI_construct_prompt.prompt3, i32 0, i32 0), i64 2, i1 false)
  store i32 0, i32* %12, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %100

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = add i64 6, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = add i64 5, %49
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %46, %38
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i8* @OPENSSL_malloc(i32 %61)
  store i8* %62, i8** %8, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @UI_F_UI_CONSTRUCT_PROMPT, align 4
  %66 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %67 = call i32 @UIerr(i32 %65, i32 %66)
  store i8* null, i8** %4, align 8
  br label %100

68:                                               ; preds = %55
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @OPENSSL_strlcpy(i8* %69, i8* %70, i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @OPENSSL_strlcat(i8* %74, i8* %75, i32 %77)
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @OPENSSL_strlcat(i8* %82, i8* %83, i32 %85)
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @OPENSSL_strlcat(i8* %87, i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %81, %68
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @OPENSSL_strlcat(i8* %93, i8* %94, i32 %96)
  br label %98

98:                                               ; preds = %92, %20
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %98, %64, %37
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @UIerr(i32, i32) #2

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_strlcat(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
