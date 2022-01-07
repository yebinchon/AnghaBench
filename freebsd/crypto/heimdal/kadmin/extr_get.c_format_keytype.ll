; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_format_keytype.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_format_keytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32*, i32* }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unknown(%d)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(%.*s)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i8*, i64)* @format_keytype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_keytype(%struct.TYPE_4__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @context, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @krb5_enctype_to_string(i32 %11, i32 %16, i8** %10)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @strlcpy(i8* %28, i8* %29, i64 %30)
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @strlcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @context, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @krb5_salttype_to_string(i32 %37, i32 %42, i32 %47, i8** %10)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %27
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %27
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @strlcat(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = call i64 @cmp_salt(i32* %65, %struct.TYPE_4__* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %70, i8** %10, align 8
  br label %94

71:                                               ; preds = %58
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %79, i8** %10, align 8
  br label %93

80:                                               ; preds = %71
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %85, i8* %91)
  br label %93

93:                                               ; preds = %80, %78
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @strlcat(i8* %95, i8* %96, i64 %97)
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @strlcat(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  ret void
}

declare dso_local i64 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @krb5_salttype_to_string(i32, i32, i32, i8**) #1

declare dso_local i64 @cmp_salt(i32*, %struct.TYPE_4__*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
