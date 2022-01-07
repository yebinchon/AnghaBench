; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_heim_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_heim_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_heim_integer(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i64*, i64** %9, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %9, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  store i32 0, i32* %5, align 4
  br label %177

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %117

33:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %44, %33
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @malloc(i64 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64*, i64** %9, align 8
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %5, align 4
  br label %177

72:                                               ; preds = %51
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %10, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %6, align 8
  br label %88

88:                                               ; preds = %111, %72
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = icmp uge i8* %89, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = xor i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %10, align 8
  store i8 %100, i8* %101, align 1
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = add i8 %106, 1
  store i8 %107, i8* %105, align 1
  %108 = icmp ne i8 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %104, %95
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %113, i8** %6, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %10, align 8
  br label %88

116:                                              ; preds = %88
  br label %170

117:                                              ; preds = %26
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %128, %117
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @malloc(i64 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %161

147:                                              ; preds = %135
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load i64*, i64** %9, align 8
  %156 = icmp ne i64* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i64*, i64** %9, align 8
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %157, %152
  %160 = load i32, i32* @ENOMEM, align 4
  store i32 %160, i32* %5, align 4
  br label %177

161:                                              ; preds = %147, %135
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @memcpy(i32* %164, i8* %165, i64 %168)
  br label %170

170:                                              ; preds = %161, %116
  %171 = load i64*, i64** %9, align 8
  %172 = icmp ne i64* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i64, i64* %7, align 8
  %175 = load i64*, i64** %9, align 8
  store i64 %174, i64* %175, align 8
  br label %176

176:                                              ; preds = %173, %170
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %176, %159, %70, %25
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
