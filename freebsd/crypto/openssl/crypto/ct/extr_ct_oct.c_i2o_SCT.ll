; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_oct.c_i2o_SCT.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_oct.c_i2o_SCT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@CT_F_I2O_SCT = common dso_local global i32 0, align 4
@CT_R_SCT_NOT_SET = common dso_local global i32 0, align 4
@SCT_VERSION_V1 = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CT_V1_HASHLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_SCT(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @SCT_is_complete(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @CT_F_I2O_SCT, align 4
  %14 = load i32, i32* @CT_R_SCT_NOT_SET, align 4
  %15 = call i32 @CTerr(i32 %13, i32 %14)
  br label %134

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SCT_VERSION_V1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 43, %25
  %27 = add nsw i32 %26, 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  br label %37

33:                                               ; preds = %16
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i8**, i8*** %5, align 8
  %39 = icmp eq i8** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %137

43:                                               ; preds = %37
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %50
  store i8* %53, i8** %51, align 8
  br label %66

54:                                               ; preds = %43
  %55 = load i64, i64* %6, align 8
  %56 = call i8* @OPENSSL_malloc(i64 %55)
  store i8* %56, i8** %7, align 8
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @CT_F_I2O_SCT, align 4
  %61 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %62 = call i32 @CTerr(i32 %60, i32 %61)
  br label %134

63:                                               ; preds = %54
  %64 = load i8*, i8** %7, align 8
  %65 = load i8**, i8*** %5, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SCT_VERSION_V1, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* @CT_V1_HASHLEN, align 8
  %84 = call i32 @memcpy(i8* %79, i32 %82, i64 %83)
  %85 = load i64, i64* @CT_V1_HASHLEN, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @l2n8(i32 %90, i8* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @s2n(i32 %95, i8* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %72
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = call i32 @memcpy(i8* %103, i32 %106, i64 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %7, align 8
  br label %118

118:                                              ; preds = %102, %72
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = call i64 @i2o_SCT_signature(%struct.TYPE_5__* %119, i8** %7)
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %134

123:                                              ; preds = %118
  br label %131

124:                                              ; preds = %66
  %125 = load i8*, i8** %7, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @memcpy(i8* %125, i32 %128, i64 %129)
  br label %131

131:                                              ; preds = %124, %123
  %132 = load i64, i64* %6, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %3, align 4
  br label %137

134:                                              ; preds = %122, %59, %12
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @OPENSSL_free(i8* %135)
  store i32 -1, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %131, %40
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @SCT_is_complete(%struct.TYPE_5__*) #1

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @l2n8(i32, i8*) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i64 @i2o_SCT_signature(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
