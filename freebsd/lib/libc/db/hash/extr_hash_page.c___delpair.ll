; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___delpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___delpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@REAL_KEY = common dso_local global i64 0, align 8
@OVFLPAGE = common dso_local global i64 0, align 8
@BUF_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__delpair(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REAL_KEY, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = call i32 @__big_delete(%struct.TYPE_7__* %32, %struct.TYPE_8__* %33)
  store i32 %34, i32* %4, align 4
  br label %204

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i64, i64* %9, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %50, %56
  store i64 %57, i64* %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %167

62:                                               ; preds = %49
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = call i64 @OFFSET(i64* %66)
  %68 = trunc i64 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %10, align 8
  %73 = trunc i64 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = call i64 @OFFSET(i64* %84)
  %86 = sub nsw i64 %83, %85
  %87 = call i32 @memmove(i8* %76, i8* %77, i64 %86)
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %152, %62
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %155

94:                                               ; preds = %90
  %95 = load i64*, i64** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @OVFLPAGE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %94
  %104 = load i64*, i64** %8, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  store i64 %108, i64* %113, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %8, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  store i64 %119, i64* %124, align 8
  br label %151

125:                                              ; preds = %94
  %126 = load i64*, i64** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i64*, i64** %8, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  store i64 %132, i64* %137, align 8
  %138 = load i64*, i64** %8, align 8
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i64*, i64** %8, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %146, i64 %149
  store i64 %145, i64* %150, align 8
  br label %151

151:                                              ; preds = %125, %103
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %12, align 4
  br label %90

155:                                              ; preds = %90
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %156, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 2
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %161, %155
  br label %167

167:                                              ; preds = %166, %49
  %168 = load i64*, i64** %8, align 8
  %169 = call i64 @OFFSET(i64* %168)
  %170 = load i64, i64* %10, align 8
  %171 = add nsw i64 %169, %170
  %172 = load i64*, i64** %8, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %171, i64* %175, align 8
  %176 = load i64*, i64** %8, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = add nsw i64 %181, %182
  %184 = add i64 %183, 16
  %185 = load i64*, i64** %8, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %185, i64 %188
  store i64 %184, i64* %189, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sub nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = load i64*, i64** %8, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @BUF_MOD, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %167, %31
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @__big_delete(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i64 @OFFSET(i64*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
