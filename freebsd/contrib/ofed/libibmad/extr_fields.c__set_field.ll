; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_fields.c__set_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_fields.c__set_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*, i32)* @_set_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_set_field(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 7
  %18 = sub nsw i32 8, %17
  %19 = and i32 %18, 7
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = and i32 %26, 7
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 8
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %93, label %41

41:                                               ; preds = %4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 7
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %93

51:                                               ; preds = %41
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 7
  %61 = shl i32 %56, %60
  %62 = xor i32 %61, -1
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %12, align 4
  %65 = xor i32 3, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %69, %62
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %72, %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 7
  %83 = shl i32 %78, %82
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %12, align 4
  %86 = xor i32 3, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = or i32 %90, %83
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  br label %176

93:                                               ; preds = %41, %4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 8, %97
  %99 = shl i32 1, %98
  %100 = sub nsw i32 %99, 1
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %12, align 4
  %103 = xor i32 3, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, %100
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 1
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = shl i32 1, %111
  %113 = sub nsw i32 %112, 1
  %114 = and i32 %110, %113
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 8, %115
  %117 = shl i32 %114, %116
  %118 = load i8*, i8** %13, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  %121 = xor i32 3, %119
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = or i32 %125, %117
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %123, align 1
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %96, %93
  br label %132

132:                                              ; preds = %146, %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %11, align 4
  %135 = icmp ne i32 %133, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %12, align 4
  %143 = xor i32 3, %141
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  store i8 %139, i8* %145, align 1
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %8, align 4
  %148 = ashr i32 %147, 8
  store i32 %148, i32* %8, align 4
  br label %132

149:                                              ; preds = %132
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %176

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = shl i32 1, %153
  %155 = sub nsw i32 %154, 1
  %156 = xor i32 %155, -1
  %157 = load i8*, i8** %13, align 8
  %158 = load i32, i32* %12, align 4
  %159 = xor i32 3, %158
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = and i32 %163, %156
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %161, align 1
  %166 = load i32, i32* %8, align 4
  %167 = load i8*, i8** %13, align 8
  %168 = load i32, i32* %12, align 4
  %169 = xor i32 3, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = or i32 %173, %166
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %171, align 1
  br label %176

176:                                              ; preds = %51, %152, %149
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
