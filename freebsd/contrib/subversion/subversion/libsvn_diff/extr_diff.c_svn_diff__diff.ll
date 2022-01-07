; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff.c_svn_diff__diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff.c_svn_diff__diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }

@svn_diff__type_diff_modified = common dso_local global i32 0, align 4
@svn_diff__type_common = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_diff__diff(%struct.TYPE_9__* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_8__** %11, %struct.TYPE_8__*** %12, align 8
  br label %13

13:                                               ; preds = %5, %146
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %17, i64 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %14, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %24, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %23, %13
  %34 = load i32*, i32** %10, align 8
  %35 = call %struct.TYPE_8__* @apr_palloc(i32* %34, i32 64)
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %36, align 8
  %37 = load i32, i32* @svn_diff__type_diff_modified, align 4
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 7
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  store i64 %42, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub nsw i64 %58, 1
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i64 %59, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store %struct.TYPE_8__** %83, %struct.TYPE_8__*** %12, align 8
  br label %84

84:                                               ; preds = %33, %23
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %160

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %7, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %100, i64 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %146

107:                                              ; preds = %90
  %108 = load i32*, i32** %10, align 8
  %109 = call %struct.TYPE_8__* @apr_palloc(i32* %108, i32 64)
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %110, align 8
  %111 = load i32, i32* @svn_diff__type_common, align 4
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 7
  store i32 %111, i32* %114, align 8
  %115 = load i64, i64* %7, align 8
  %116 = sub nsw i64 %115, 1
  %117 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %8, align 8
  %127 = sub nsw i64 %126, 1
  %128 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  store i64 %127, i64* %130, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  store %struct.TYPE_8__** %145, %struct.TYPE_8__*** %12, align 8
  br label %146

146:                                              ; preds = %107, %90
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %7, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  store %struct.TYPE_9__* %159, %struct.TYPE_9__** %6, align 8
  br label %13

160:                                              ; preds = %89
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %161, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %162
}

declare dso_local %struct.TYPE_8__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
