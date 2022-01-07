; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_format.c_der_parse_heim_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_format.c_der_parse_heim_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_parse_heim_oid(i8* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strtok_r(i8* %24, i8* %25, i8** %10)
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %85, %21
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32* @realloc(i32* %33, i32 %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = call i32 @der_free_oid(%struct.TYPE_4__* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %4, align 4
  br label %91

50:                                               ; preds = %30
  %51 = load i32*, i32** %12, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @strtol(i8* %54, i8** %11, i32 10)
  store i64 %55, i64* %13, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %13, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @INT_MAX, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63, %60, %50
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = call i32 @der_free_oid(%struct.TYPE_4__* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %4, align 4
  br label %91

73:                                               ; preds = %63
  %74 = load i64, i64* %13, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %75, i32* %84, align 4
  br label %85

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = call i8* @strtok_r(i8* null, i8* %86, i8** %10)
  store i8* %87, i8** %9, align 8
  br label %27

88:                                               ; preds = %27
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @free(i8* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %67, %44
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @der_free_oid(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
