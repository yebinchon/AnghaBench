; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_memory_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.fileblocks = type { i8*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i32, %struct.TYPE_2__* }

@nullsize = common dso_local global i32 0, align 4
@nulldata = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0A\0A\0AInternal failure\0A\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i8**)* @memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_read(%struct.archive* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.fileblocks*, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fileblocks*
  store %struct.fileblocks* %11, %struct.fileblocks** %8, align 8
  %12 = load %struct.archive*, %struct.archive** %5, align 8
  br label %13

13:                                               ; preds = %57, %3
  %14 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %15 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %20 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %25 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18, %13
  %29 = phi i1 [ false, %18 ], [ false, %13 ], [ %27, %23 ]
  br i1 %29, label %30, label %58

30:                                               ; preds = %28
  %31 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %32 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %37 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %36, i32 0, i32 3
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %39 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %44 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %49 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %51 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %56 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %42, %30
  br label %13

58:                                               ; preds = %28
  %59 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %60 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp eq %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %174

64:                                               ; preds = %58
  %65 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %66 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  %70 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %71 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  %74 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %75 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %80 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %78, i64 %84
  %86 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %87 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %85 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %94 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %93, i32 0, i32 0
  store i8* null, i8** %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %97 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %174

101:                                              ; preds = %64
  %102 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %103 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @nullsize, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp sgt i64 %104, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %101
  %109 = load i32, i32* @nullsize, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %112 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i8*, i8** @nulldata, align 8
  %116 = load i8**, i8*** %7, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i32, i32* @nullsize, align 4
  %118 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %119 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* @nullsize, align 4
  store i32 %122, i32* %4, align 4
  br label %174

123:                                              ; preds = %101
  %124 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %125 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %170

128:                                              ; preds = %123
  %129 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %130 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %9, align 4
  %133 = load i8*, i8** @nulldata, align 8
  %134 = load i8**, i8*** %7, align 8
  store i8* %133, i8** %134, align 8
  %135 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %136 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %139 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %143 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %148 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %147, i32 0, i32 3
  store %struct.TYPE_2__* %146, %struct.TYPE_2__** %148, align 8
  %149 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %150 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %149, i32 0, i32 3
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = icmp ne %struct.TYPE_2__* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %128
  %154 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %155 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %160 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %162 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %161, i32 0, i32 3
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.fileblocks*, %struct.fileblocks** %8, align 8
  %167 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %153, %128
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %4, align 4
  br label %174

170:                                              ; preds = %123
  %171 = load i32, i32* @stderr, align 4
  %172 = call i32 @fprintf(i32 %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %173 = call i32 @exit(i32 1) #3
  unreachable

174:                                              ; preds = %168, %108, %69, %63
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
