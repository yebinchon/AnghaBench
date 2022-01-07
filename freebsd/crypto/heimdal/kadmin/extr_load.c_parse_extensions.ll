; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_parse_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_parse_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__**)* @parse_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_extensions(i8* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  store i32 0, i32* %3, align 4
  br label %93

21:                                               ; preds = %14
  %22 = call %struct.TYPE_4__* @calloc(i32 1, i32 16)
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %23, align 8
  %24 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %69, %21
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %92

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @hex_decode(i8* %33, i8* %34, i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @free(i8* %40)
  store i32 -1, i32* %3, align 4
  br label %93

42:                                               ; preds = %28
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @decode_HDB_extension(i8* %43, i64 %44, i32* %8, i32* null)
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %93

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i8* @realloc(i32* %55, i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = call i32 (...) @abort() #3
  unreachable

69:                                               ; preds = %51
  %70 = load i8*, i8** %10, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32* %71, i32** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 %75, i32* %85, align 4
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %91, i8** %6, align 8
  br label %25

92:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %50, %39, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @hex_decode(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @decode_HDB_extension(i8*, i64, i32*, i32*) #1

declare dso_local i8* @realloc(i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
