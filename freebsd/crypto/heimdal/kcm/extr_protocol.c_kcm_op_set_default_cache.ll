; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_set_default_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_set_default_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_default_cache = type { i8*, %struct.kcm_default_cache*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@default_caches = common dso_local global %struct.kcm_default_cache* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_5__*, i32, i32*, i32*)* @kcm_op_set_default_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_set_default_cache(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kcm_default_cache*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i64 @krb5_ret_stringz(i32* %15, i8** %14)
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* %13, align 8
  store i64 %20, i64* %6, align 8
  br label %85

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @KCM_LOG_REQUEST_NAME(i32 %22, %struct.TYPE_5__* %23, i32 %24, i8* %25)
  %27 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** @default_caches, align 8
  store %struct.kcm_default_cache* %27, %struct.kcm_default_cache** %12, align 8
  br label %28

28:                                               ; preds = %43, %21
  %29 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %30 = icmp ne %struct.kcm_default_cache* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %34 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %37 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @kcm_is_same_session(%struct.TYPE_5__* %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %47

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %45 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %44, i32 0, i32 1
  %46 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %45, align 8
  store %struct.kcm_default_cache* %46, %struct.kcm_default_cache** %12, align 8
  br label %28

47:                                               ; preds = %41, %28
  %48 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %49 = icmp eq %struct.kcm_default_cache* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = call %struct.kcm_default_cache* @malloc(i32 24)
  store %struct.kcm_default_cache* %51, %struct.kcm_default_cache** %12, align 8
  %52 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %53 = icmp eq %struct.kcm_default_cache* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @ENOMEM, align 8
  store i64 %55, i64* %6, align 8
  br label %85

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %61 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %66 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @strdup(i8* %67)
  %69 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %70 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** @default_caches, align 8
  %72 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %73 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %72, i32 0, i32 1
  store %struct.kcm_default_cache* %71, %struct.kcm_default_cache** %73, align 8
  %74 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  store %struct.kcm_default_cache* %74, %struct.kcm_default_cache** @default_caches, align 8
  br label %84

75:                                               ; preds = %47
  %76 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %77 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %14, align 8
  %81 = call i8* @strdup(i8* %80)
  %82 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %12, align 8
  %83 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %75, %56
  store i64 0, i64* %6, align 8
  br label %85

85:                                               ; preds = %84, %54, %19
  %86 = load i64, i64* %6, align 8
  ret i64 %86
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @kcm_is_same_session(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.kcm_default_cache* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
