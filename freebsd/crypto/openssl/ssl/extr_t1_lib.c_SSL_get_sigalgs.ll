; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_SSL_get_sigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_SSL_get_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_get_sigalgs(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %17, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %7
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* @INT_MAX, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %7
  store i32 0, i32* %8, align 4
  br label %122

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %119

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %17, align 8
  %44 = trunc i64 %43 to i32
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %122

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %16, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %15, align 8
  store i8 %59, i8* %60, align 1
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %14, align 8
  store i8 %68, i8* %69, align 1
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_10__* @tls1_lookup_sigalg(i32 %72)
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %18, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @NID_undef, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i32 [ %82, %79 ], [ %84, %83 ]
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %70
  %89 = load i32*, i32** %12, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %93 = icmp ne %struct.TYPE_10__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @NID_undef, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %97, %94 ], [ %99, %98 ]
  %102 = load i32*, i32** %12, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %88
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %108 = icmp ne %struct.TYPE_10__* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @NID_undef, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ %112, %109 ], [ %114, %113 ]
  %117 = load i32*, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %103
  br label %119

119:                                              ; preds = %118, %38
  %120 = load i64, i64* %17, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %119, %46, %37
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_10__* @tls1_lookup_sigalg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
