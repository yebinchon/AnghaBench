; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_array = type { i32, %struct._ck_array*, %struct.TYPE_2__*, %struct._ck_array* }
%struct.TYPE_2__ = type { %struct._ck_array* (%struct._ck_array*, i32, i32, i32)* }
%struct._ck_array = type { i32, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_array_put(%struct.ck_array* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._ck_array*, align 8
  %7 = alloca i32, align 4
  store %struct.ck_array* %0, %struct.ck_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %9 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %8, i32 0, i32 1
  %10 = load %struct._ck_array*, %struct._ck_array** %9, align 8
  %11 = icmp eq %struct._ck_array* %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %2
  %13 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %14 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %13, i32 0, i32 3
  %15 = load %struct._ck_array*, %struct._ck_array** %14, align 8
  store %struct._ck_array* %15, %struct._ck_array** %6, align 8
  %16 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %17 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %20 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %12
  %24 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %25 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %29 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct._ck_array* (%struct._ck_array*, i32, i32, i32)*, %struct._ck_array* (%struct._ck_array*, i32, i32, i32)** %31, align 8
  %33 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %34 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %35 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = add i64 16, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = add i64 16, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct._ck_array* %32(%struct._ck_array* %33, i32 %40, i32 %45, i32 1)
  store %struct._ck_array* %46, %struct._ck_array** %6, align 8
  %47 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %48 = icmp eq %struct._ck_array* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %127

50:                                               ; preds = %23
  %51 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %52 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ck_pr_store_uint(i32* %52, i32 %53)
  %55 = call i32 (...) @ck_pr_fence_store()
  %56 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %57 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %56, i32 0, i32 3
  %58 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %59 = call i32 @ck_pr_store_ptr(%struct._ck_array** %57, %struct._ck_array* %58)
  br label %60

60:                                               ; preds = %50, %12
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %63 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %66 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %64, i64 %69
  store i8* %61, i8** %70, align 8
  store i32 1, i32* %3, align 4
  br label %127

71:                                               ; preds = %2
  %72 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %73 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %72, i32 0, i32 1
  %74 = load %struct._ck_array*, %struct._ck_array** %73, align 8
  store %struct._ck_array* %74, %struct._ck_array** %6, align 8
  %75 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %76 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %79 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %71
  %83 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %84 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %88 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct._ck_array* (%struct._ck_array*, i32, i32, i32)*, %struct._ck_array* (%struct._ck_array*, i32, i32, i32)** %90, align 8
  %92 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %93 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %94 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 8, %96
  %98 = add i64 16, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = mul i64 8, %101
  %103 = add i64 16, %102
  %104 = trunc i64 %103 to i32
  %105 = call %struct._ck_array* %91(%struct._ck_array* %92, i32 %99, i32 %104, i32 1)
  store %struct._ck_array* %105, %struct._ck_array** %6, align 8
  %106 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %107 = icmp eq %struct._ck_array* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %127

109:                                              ; preds = %82
  %110 = load i32, i32* %7, align 4
  %111 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %112 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %114 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %115 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %114, i32 0, i32 1
  store %struct._ck_array* %113, %struct._ck_array** %115, align 8
  br label %116

116:                                              ; preds = %109, %71
  %117 = load i8*, i8** %5, align 8
  %118 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %119 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %122 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8*, i8** %120, i64 %125
  store i8* %117, i8** %126, align 8
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %116, %108, %60, %49
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr(%struct._ck_array**, %struct._ck_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
