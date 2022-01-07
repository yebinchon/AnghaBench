; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_kadm5_c_init_with_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_kadm5_c_init_with_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i8*, i32, i8*, i32, i8*, i32*, i64, i64, i8**)* @kadm5_c_init_with_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kadm5_c_init_with_context(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7, i64 %8, i64 %9, i8** %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_3__*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i8** %10, i8*** %23, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @_kadm5_c_init_context(%struct.TYPE_3__** %25, i32* %27, i32 %28)
  store i64 %29, i64* %24, align 8
  %30 = load i64, i64* %24, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %11
  %33 = load i64, i64* %24, align 8
  store i64 %33, i64* %12, align 8
  br label %96

34:                                               ; preds = %11
  %35 = load i8*, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i8*, i8** %15, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i8*, i8** %17, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i64 @_kadm5_c_get_cred_cache(i32 %43, i8* %44, i8* %45, i8* %46, i32 %47, i8* %48, i32 %49, i32* %26)
  store i64 %50, i64* %24, align 8
  %51 = load i64, i64* %24, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i64, i64* %24, align 8
  store i64 %54, i64* %12, align 8
  br label %96

55:                                               ; preds = %42
  %56 = load i32, i32* %26, align 4
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %55, %37, %34
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %14, align 8
  %62 = call i8* @strdup(i8* %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i8*, i8** %19, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %19, align 8
  %74 = call i8* @strdup(i8* %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  br label %81

78:                                               ; preds = %69
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %94 = bitcast %struct.TYPE_3__* %93 to i8*
  %95 = load i8**, i8*** %23, align 8
  store i8* %94, i8** %95, align 8
  store i64 0, i64* %12, align 8
  br label %96

96:                                               ; preds = %81, %53, %32
  %97 = load i64, i64* %12, align 8
  ret i64 %97
}

declare dso_local i64 @_kadm5_c_init_context(%struct.TYPE_3__**, i32*, i32) #1

declare dso_local i64 @_kadm5_c_get_cred_cache(i32, i8*, i8*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
