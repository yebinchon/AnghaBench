; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_kari.c_CMS_RecipientEncryptedKey_get0_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_kari.c_CMS_RecipientEncryptedKey_get0_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32*, i32* }

@CMS_REK_ISSUER_SERIAL = common dso_local global i64 0, align 8
@CMS_REK_KEYIDENTIFIER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_RecipientEncryptedKey_get0_id(%struct.TYPE_10__* %0, i32** %1, i32** %2, i32** %3, i32** %4, i32** %5) #0 {
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
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %14, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CMS_REK_ISSUER_SERIAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %6
  %24 = load i32**, i32*** %12, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32**, i32*** %12, align 8
  store i32* %32, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32**, i32*** %13, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32**, i32*** %13, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32**, i32*** %9, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32**, i32*** %9, align 8
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32**, i32*** %10, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32**, i32*** %10, align 8
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32**, i32*** %11, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32**, i32*** %11, align 8
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %58, %55
  br label %113

61:                                               ; preds = %6
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CMS_REK_KEYIDENTIFIER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %61
  %68 = load i32**, i32*** %9, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32**, i32*** %9, align 8
  store i32* %76, i32** %77, align 8
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32**, i32*** %10, align 8
  %80 = icmp ne i32** %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32**, i32*** %10, align 8
  store i32* %87, i32** %88, align 8
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32**, i32*** %11, align 8
  %91 = icmp ne i32** %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32**, i32*** %11, align 8
  store i32* %98, i32** %99, align 8
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32**, i32*** %12, align 8
  %102 = icmp ne i32** %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32**, i32*** %12, align 8
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32**, i32*** %13, align 8
  %107 = icmp ne i32** %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32**, i32*** %13, align 8
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %108, %105
  br label %112

111:                                              ; preds = %61
  store i32 0, i32* %7, align 4
  br label %114

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %60
  store i32 1, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %111
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
