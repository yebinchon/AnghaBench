; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_IO2IOCpy32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_IO2IOCpy32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @IO2IOCpy32(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %13, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %14, align 8
  br label %19

19:                                               ; preds = %29, %3
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @PTR_TO_UINT(i32* %20)
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GET_UINT8(i32 %33)
  %35 = call i32 @WRITE_UINT8(i32 %31, i32 %34)
  %36 = load i32*, i32** %14, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %13, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  br label %19

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %53, %42
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @PTR_TO_UINT(i32* %44)
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i1 [ false, %43 ], [ %50, %48 ]
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @GET_UINT8(i32 %57)
  %59 = call i32 @WRITE_UINT8(i32 %55, i32 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  br label %43

66:                                               ; preds = %51
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @PTR_TO_UINT(i32* %67)
  %69 = and i32 %68, 3
  %70 = shl i32 %69, 3
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 32, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = load i32*, i32** %13, align 8
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %14, align 8
  store i32* %77, i32** %12, align 8
  br label %78

78:                                               ; preds = %82, %75
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @GET_UINT32(i32 %86)
  %88 = call i32 @WRITE_UINT32(i32 %84, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 4
  store i32 %94, i32* %6, align 4
  br label %78

95:                                               ; preds = %78
  %96 = load i32*, i32** %11, align 8
  store i32* %96, i32** %13, align 8
  %97 = load i32*, i32** %12, align 8
  store i32* %97, i32** %14, align 8
  br label %144

98:                                               ; preds = %66
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %14, align 8
  store i32* %105, i32** %12, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GET_UINT32(i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %11, align 8
  br label %111

111:                                              ; preds = %115, %98
  %112 = load i32, i32* %6, align 4
  %113 = ashr i32 %112, 3
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @GET_UINT32(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %8, align 4
  %126 = ashr i32 %124, %125
  %127 = or i32 %123, %126
  %128 = call i32 @WRITE_UINT32(i32 %120, i32 %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %9, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %11, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %12, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sub nsw i32 %134, 4
  store i32 %135, i32* %6, align 4
  br label %111

136:                                              ; preds = %111
  %137 = load i32*, i32** %12, align 8
  store i32* %137, i32** %14, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 -4
  %140 = load i32, i32* %7, align 4
  %141 = ashr i32 %140, 3
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32* %143, i32** %13, align 8
  br label %144

144:                                              ; preds = %136, %95
  br label %145

145:                                              ; preds = %149, %144
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %6, align 4
  %148 = icmp ne i32 %146, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @GET_UINT8(i32 %153)
  %155 = call i32 @WRITE_UINT8(i32 %151, i32 %154)
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %14, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %13, align 8
  br label %145

160:                                              ; preds = %145
  %161 = load i8*, i8** %4, align 8
  ret i8* %161
}

declare dso_local i32 @PTR_TO_UINT(i32*) #1

declare dso_local i32 @WRITE_UINT8(i32, i32) #1

declare dso_local i32 @GET_UINT8(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
