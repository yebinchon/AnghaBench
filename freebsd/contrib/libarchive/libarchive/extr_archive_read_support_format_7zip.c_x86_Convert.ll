; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_x86_Convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_x86_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._7zip = type { i64, i32, i32 }

@x86_Convert.kMaskToAllowedStatus = internal constant [8 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0], align 16
@x86_Convert.kMaskToBitNumber = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._7zip*, i32*, i64)* @x86_Convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @x86_Convert(%struct._7zip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._7zip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct._7zip* %0, %struct._7zip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %212

22:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %23 = load %struct._7zip*, %struct._7zip** %5, align 8
  %24 = getelementptr inbounds %struct._7zip, %struct._7zip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct._7zip*, %struct._7zip** %5, align 8
  %27 = getelementptr inbounds %struct._7zip, %struct._7zip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct._7zip*, %struct._7zip** %5, align 8
  %30 = getelementptr inbounds %struct._7zip, %struct._7zip* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %197, %102, %22
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 -4
  store i32* %39, i32** %13, align 8
  br label %40

40:                                               ; preds = %51, %32
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 254
  %48 = icmp eq i32 %47, 232
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %12, align 8
  br label %40

54:                                               ; preds = %49, %40
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  store i64 %60, i64* %8, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = icmp uge i32* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %198

65:                                               ; preds = %54
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %66, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ugt i64 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %112

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 %73, %76
  %78 = and i32 %77, 7
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %72
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_Convert.kMaskToBitNumber, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 4, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %82, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %14, align 1
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_Convert.kMaskToAllowedStatus, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %81
  %98 = load i8, i8* %14, align 1
  %99 = zext i8 %98 to i32
  %100 = call i64 @Test86MSByte(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97, %81
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, 1
  %106 = and i32 %105, 7
  %107 = or i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %8, align 8
  br label %32

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %72
  br label %112

112:                                              ; preds = %111, %71
  %113 = load i64, i64* %8, align 8
  store i64 %113, i64* %9, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @Test86MSByte(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %190

119:                                              ; preds = %112
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 24
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 16
  %128 = or i32 %123, %127
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 8
  %133 = or i32 %128, %132
  %134 = load i32*, i32** %12, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %133, %136
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %162, %119
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i64, i64* %8, align 8
  %142 = trunc i64 %141 to i32
  %143 = add nsw i32 %140, %142
  %144 = sub nsw i32 %139, %143
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %169

148:                                              ; preds = %138
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_Convert.kMaskToBitNumber, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 8
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %18, align 4
  %156 = sub nsw i32 24, %155
  %157 = ashr i32 %154, %156
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = call i64 @Test86MSByte(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %148
  br label %169

162:                                              ; preds = %148
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %18, align 4
  %165 = sub nsw i32 32, %164
  %166 = shl i32 1, %165
  %167 = sub nsw i32 %166, 1
  %168 = xor i32 %163, %167
  store i32 %168, i32* %15, align 4
  br label %138

169:                                              ; preds = %161, %147
  %170 = load i32, i32* %16, align 4
  %171 = ashr i32 %170, 24
  %172 = and i32 %171, 1
  %173 = sub nsw i32 %172, 1
  %174 = xor i32 %173, -1
  %175 = load i32*, i32** %12, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = ashr i32 %177, 16
  %179 = load i32*, i32** %12, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %16, align 4
  %182 = ashr i32 %181, 8
  %183 = load i32*, i32** %12, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %185, i32* %187, align 4
  %188 = load i64, i64* %8, align 8
  %189 = add i64 %188, 5
  store i64 %189, i64* %8, align 8
  br label %197

190:                                              ; preds = %112
  %191 = load i32, i32* %11, align 4
  %192 = shl i32 %191, 1
  %193 = and i32 %192, 7
  %194 = or i32 %193, 1
  store i32 %194, i32* %11, align 4
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  br label %197

197:                                              ; preds = %190, %169
  br label %32

198:                                              ; preds = %64
  %199 = load i64, i64* %9, align 8
  %200 = load %struct._7zip*, %struct._7zip** %5, align 8
  %201 = getelementptr inbounds %struct._7zip, %struct._7zip* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load %struct._7zip*, %struct._7zip** %5, align 8
  %204 = getelementptr inbounds %struct._7zip, %struct._7zip* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load i64, i64* %8, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct._7zip*, %struct._7zip** %5, align 8
  %208 = getelementptr inbounds %struct._7zip, %struct._7zip* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i64, i64* %8, align 8
  store i64 %211, i64* %4, align 8
  br label %212

212:                                              ; preds = %198, %21
  %213 = load i64, i64* %4, align 8
  ret i64 %213
}

declare dso_local i64 @Test86MSByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
