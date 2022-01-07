; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_memory_read_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_memory_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.fileblocks = type { i64, i64, i8*, i64, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.TYPE_2__*, i64 }

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"\0A\0A\0AInternal failure: negative seek\0A\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\0A\0A\0AInternal failure: over-sized seek\0A\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64, i32)* @memory_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_read_seek(%struct.archive* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileblocks*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.fileblocks*
  store %struct.fileblocks* %12, %struct.fileblocks** %10, align 8
  %13 = load %struct.archive*, %struct.archive** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SEEK_END, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %19 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %8, align 8
  br label %34

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SEEK_CUR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %29 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %44 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  store i64 0, i64* %8, align 8
  %45 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %46 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %49 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %48, i32 0, i32 4
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %49, align 8
  br label %50

50:                                               ; preds = %131, %41
  %51 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %52 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %146

55:                                               ; preds = %50
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %58 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %64 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %55
  %68 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %69 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %75 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %82 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %84 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %89 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %91 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %5, align 8
  br label %162

93:                                               ; preds = %55
  %94 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %95 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %103 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %101, %106
  %108 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %109 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %93
  %113 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %114 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %113, i32 0, i32 2
  store i8* null, i8** %114, align 8
  %115 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %116 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %121 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = sub nsw i64 %122, %123
  %125 = sub nsw i64 %119, %124
  %126 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %127 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %129 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %5, align 8
  br label %162

131:                                              ; preds = %93
  %132 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %133 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %132, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %8, align 8
  %139 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %140 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %145 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %144, i32 0, i32 4
  store %struct.TYPE_2__* %143, %struct.TYPE_2__** %145, align 8
  br label %50

146:                                              ; preds = %50
  %147 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %148 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %151 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load %struct.fileblocks*, %struct.fileblocks** %10, align 8
  %156 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %5, align 8
  br label %162

158:                                              ; preds = %146
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 @fprintf(i32 %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %154, %112, %67
  %163 = load i64, i64* %5, align 8
  ret i64 %163
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
