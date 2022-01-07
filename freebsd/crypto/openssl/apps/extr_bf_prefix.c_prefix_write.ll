; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_bf_prefix.c_prefix_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_bf_prefix.c_prefix_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64*)* @prefix_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_write(i32* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.TYPE_3__* @BIO_get_data(i32* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %139

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25, %20
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %35, %32
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @BIO_next(i32* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = call i32 @BIO_write_ex(i32 %48, i8* %49, i64 %50, i64* %51)
  store i32 %52, i32* %5, align 4
  br label %139

53:                                               ; preds = %25
  %54 = load i64*, i64** %9, align 8
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %137, %53
  %56 = load i64, i64* %8, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %138

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @BIO_next(i32* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = call i32 @BIO_write_ex(i32 %65, i8* %68, i64 %72, i64* %13)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %139

76:                                               ; preds = %63
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %58
  store i64 0, i64* %11, align 8
  store i8 0, i8* %12, align 1
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %12, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 10
  br label %91

91:                                               ; preds = %84, %80
  %92 = phi i1 [ false, %80 ], [ %90, %84 ]
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  br label %80

97:                                               ; preds = %91
  %98 = load i8, i8* %12, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i64, i64* %11, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  store i64 0, i64* %14, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @BIO_next(i32* %109)
  %111 = load i8*, i8** %7, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @BIO_write_ex(i32 %110, i8* %111, i64 %112, i64* %14)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %139

116:                                              ; preds = %108
  %117 = load i64, i64* %14, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %7, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %123
  store i64 %126, i64* %124, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %11, align 8
  br label %105

130:                                              ; preds = %105
  %131 = load i8, i8* %12, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %130
  br label %55

138:                                              ; preds = %55
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %115, %75, %46, %19
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_write_ex(i32, i8*, i64, i64*) #1

declare dso_local i32 @BIO_next(i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
