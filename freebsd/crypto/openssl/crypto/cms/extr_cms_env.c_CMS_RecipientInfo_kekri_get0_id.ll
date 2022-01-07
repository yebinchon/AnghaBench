; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_env.c_CMS_RecipientInfo_kekri_get0_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_env.c_CMS_RecipientInfo_kekri_get0_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32* }

@CMS_RECIPINFO_KEK = common dso_local global i64 0, align 8
@CMS_F_CMS_RECIPIENTINFO_KEKRI_GET0_ID = common dso_local global i32 0, align 4
@CMS_R_NOT_KEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_RecipientInfo_kekri_get0_id(%struct.TYPE_10__* %0, i32** %1, i32** %2, i32** %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CMS_RECIPINFO_KEK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KEKRI_GET0_ID, align 4
  %22 = load i32, i32* @CMS_R_NOT_KEK, align 4
  %23 = call i32 @CMSerr(i32 %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %94

24:                                               ; preds = %6
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %14, align 8
  %31 = load i32**, i32*** %9, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32**, i32*** %9, align 8
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %33, %24
  %42 = load i32**, i32*** %10, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32**, i32*** %10, align 8
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32**, i32*** %11, align 8
  %51 = icmp ne i32** %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %11, align 8
  store i32* %55, i32** %56, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32**, i32*** %12, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %12, align 8
  store i32* %70, i32** %71, align 8
  br label %74

72:                                               ; preds = %60
  %73 = load i32**, i32*** %12, align 8
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %72, %65
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32**, i32*** %13, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32**, i32*** %13, align 8
  store i32* %88, i32** %89, align 8
  br label %92

90:                                               ; preds = %78
  %91 = load i32**, i32*** %13, align 8
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %90, %83
  br label %93

93:                                               ; preds = %92, %75
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %20
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
