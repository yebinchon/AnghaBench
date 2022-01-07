; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8*, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*)*, i32* (%struct.TYPE_7__*, i8*, i32*, i8*)* }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@OSSL_STORE_F_OSSL_STORE_OPEN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @OSSL_STORE_open(i8* %0, i32* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca [2 x i8*], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i64 0, i64* %18, align 8
  %20 = load i64, i64* %18, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %18, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %20
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @OPENSSL_strlcpy(i8* %23, i8* %24, i32 256)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %27 = call i8* @strchr(i8* %26, i8 signext 58)
  store i8* %27, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %5
  %30 = load i8*, i8** %16, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %16, align 8
  store i8 0, i8* %30, align 1
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8*, i8** %16, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* %18, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %18, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %44 = load i64, i64* %18, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %18, align 8
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %44
  store i8* %43, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %29
  br label %48

48:                                               ; preds = %47, %5
  %49 = call i32 (...) @ERR_set_mark()
  store i64 0, i64* %19, align 8
  br label %50

50:                                               ; preds = %75, %48
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp ult i64 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %78

59:                                               ; preds = %57
  %60 = load i64, i64* %19, align 8
  %61 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call %struct.TYPE_7__* @ossl_store_get0_loader_int(i8* %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %12, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32* (%struct.TYPE_7__*, i8*, i32*, i8*)*, i32* (%struct.TYPE_7__*, i8*, i32*, i8*)** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32* %68(%struct.TYPE_7__* %69, i8* %70, i32* %71, i8* %72)
  store i32* %73, i32** %13, align 8
  br label %74

74:                                               ; preds = %65, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %19, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %19, align 8
  br label %50

78:                                               ; preds = %57
  %79 = load i32*, i32** %13, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %110

82:                                               ; preds = %78
  %83 = call %struct.TYPE_8__* @OPENSSL_zalloc(i32 48)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %14, align 8
  %84 = icmp eq %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_OPEN, align 4
  %87 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %88 = call i32 @OSSL_STOREerr(i32 %86, i32 %87)
  br label %110

89:                                               ; preds = %82
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = call i32 (...) @ERR_pop_to_mark()
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %6, align 8
  br label %121

110:                                              ; preds = %85, %81
  %111 = call i32 (...) @ERR_clear_last_mark()
  %112 = load i32*, i32** %13, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32 (i32*)*, i32 (i32*)** %116, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 %117(i32* %118)
  br label %120

120:                                              ; preds = %114, %110
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %121

121:                                              ; preds = %120, %89
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %122
}

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ERR_set_mark(...) #1

declare dso_local %struct.TYPE_7__* @ossl_store_get0_loader_int(i8*) #1

declare dso_local %struct.TYPE_8__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @ERR_pop_to_mark(...) #1

declare dso_local i32 @ERR_clear_last_mark(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
