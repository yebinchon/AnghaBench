; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_warn.c__warnerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_warn.c__warnerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"<unknown error>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i64, i32, i8*, i32)* @_warnerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_warnerr(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [7 x i8], align 1
  %15 = alloca [2 x i8*], align 16
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = bitcast [7 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 7, i1 false)
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 1
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  store i8* null, i8** %22, align 16
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  store i8** %23, i8*** %16, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %6
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %28 = call i32 @strlcat(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 7)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %33 = call i32 @strlcat(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 7)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @vasprintf(i8** %17, i8* %35, i32 %36)
  store i64 %37, i64* %19, align 8
  %38 = load i64, i64* %19, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %17, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %34
  %44 = load i64, i64* @ENOMEM, align 8
  store i64 %44, i64* %7, align 8
  br label %102

45:                                               ; preds = %40
  %46 = load i8*, i8** %17, align 8
  %47 = load i8**, i8*** %16, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %16, align 8
  store i8* %46, i8** %47, align 8
  br label %49

49:                                               ; preds = %45, %6
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %57 = call i32 @strlcat(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 7)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i8* @krb5_get_error_message(%struct.TYPE_6__* %58, i64 %59)
  store i8* %60, i8** %18, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i8*, i8** %18, align 8
  %65 = load i8**, i8*** %16, align 8
  store i8* %64, i8** %65, align 8
  br label %68

66:                                               ; preds = %55
  %67 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %67, align 8
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %52, %49
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %84 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %85 = load i8*, i8** %84, align 16
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @krb5_log(%struct.TYPE_6__* %78, i64 %81, i32 %82, i8* %83, i8* %85, i8* %87)
  br label %96

89:                                               ; preds = %72, %69
  %90 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %91 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %92 = load i8*, i8** %91, align 16
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @warnx(i8* %90, i8* %92, i8* %94)
  br label %96

96:                                               ; preds = %89, %77
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = load i8*, i8** %18, align 8
  %101 = call i32 @krb5_free_error_message(%struct.TYPE_6__* %99, i8* %100)
  store i64 0, i64* %7, align 8
  br label %102

102:                                              ; preds = %96, %43
  %103 = load i64, i64* %7, align 8
  ret i64 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @vasprintf(i8**, i8*, i32) #2

declare dso_local i8* @krb5_get_error_message(%struct.TYPE_6__*, i64) #2

declare dso_local i32 @krb5_log(%struct.TYPE_6__*, i64, i32, i8*, i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @krb5_free_error_message(%struct.TYPE_6__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
