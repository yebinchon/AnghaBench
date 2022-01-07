; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_rtld.c_map_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_rtld.c_map_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.file_info = type { i32, i32, i32* }
%struct.map_info = type { %struct.file_info*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.proc_handle = type { i32, i32, i8*, i64, %struct.map_info* }

@RD_RDL_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @map_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_iter(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file_info*, align 8
  %7 = alloca %struct.map_info*, align 8
  %8 = alloca %struct.map_info*, align 8
  %9 = alloca %struct.proc_handle*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.proc_handle*
  store %struct.proc_handle* %12, %struct.proc_handle** %9, align 8
  %13 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %14 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %17 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %22 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %22, align 4
  %25 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %26 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %25, i32 0, i32 4
  %27 = load %struct.map_info*, %struct.map_info** %26, align 8
  %28 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %29 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.map_info* @reallocarray(%struct.map_info* %27, i32 %30, i32 16)
  store %struct.map_info* %31, %struct.map_info** %8, align 8
  %32 = load %struct.map_info*, %struct.map_info** %8, align 8
  %33 = icmp eq %struct.map_info* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %146

35:                                               ; preds = %20
  %36 = load %struct.map_info*, %struct.map_info** %8, align 8
  %37 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %38 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %37, i32 0, i32 4
  store %struct.map_info* %36, %struct.map_info** %38, align 8
  br label %39

39:                                               ; preds = %35, %2
  %40 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %41 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %40, i32 0, i32 4
  %42 = load %struct.map_info*, %struct.map_info** %41, align 8
  %43 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %44 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.map_info, %struct.map_info* %42, i64 %46
  store %struct.map_info* %47, %struct.map_info** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load %struct.map_info*, %struct.map_info** %7, align 8
  %50 = getelementptr inbounds %struct.map_info, %struct.map_info* %49, i32 0, i32 1
  %51 = call i32 @rdl2prmap(%struct.TYPE_5__* %48, %struct.TYPE_6__* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %56 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %54, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %39
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RD_RDL_X, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %69 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %73 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %60, %39
  store %struct.file_info* null, %struct.file_info** %6, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %138

82:                                               ; preds = %74
  store i64 0, i64* %10, align 8
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %86 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %83
  %91 = load %struct.map_info*, %struct.map_info** %7, align 8
  %92 = getelementptr inbounds %struct.map_info, %struct.map_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %96 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %95, i32 0, i32 4
  %97 = load %struct.map_info*, %struct.map_info** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.map_info, %struct.map_info* %97, i64 %98
  %100 = getelementptr inbounds %struct.map_info, %struct.map_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcmp(i8* %94, i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %90
  %106 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %107 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %106, i32 0, i32 4
  %108 = load %struct.map_info*, %struct.map_info** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.map_info, %struct.map_info* %108, i64 %109
  %111 = getelementptr inbounds %struct.map_info, %struct.map_info* %110, i32 0, i32 0
  %112 = load %struct.file_info*, %struct.file_info** %111, align 8
  store %struct.file_info* %112, %struct.file_info** %6, align 8
  br label %117

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  br label %83

117:                                              ; preds = %105, %83
  %118 = load %struct.file_info*, %struct.file_info** %6, align 8
  %119 = icmp eq %struct.file_info* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = call %struct.file_info* @malloc(i32 16)
  store %struct.file_info* %121, %struct.file_info** %6, align 8
  %122 = load %struct.file_info*, %struct.file_info** %6, align 8
  %123 = icmp eq %struct.file_info* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %146

125:                                              ; preds = %120
  %126 = load %struct.file_info*, %struct.file_info** %6, align 8
  %127 = getelementptr inbounds %struct.file_info, %struct.file_info* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.file_info*, %struct.file_info** %6, align 8
  %129 = getelementptr inbounds %struct.file_info, %struct.file_info* %128, i32 0, i32 0
  store i32 -1, i32* %129, align 8
  %130 = load %struct.file_info*, %struct.file_info** %6, align 8
  %131 = getelementptr inbounds %struct.file_info, %struct.file_info* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %137

132:                                              ; preds = %117
  %133 = load %struct.file_info*, %struct.file_info** %6, align 8
  %134 = getelementptr inbounds %struct.file_info, %struct.file_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %132, %125
  br label %138

138:                                              ; preds = %137, %74
  %139 = load %struct.file_info*, %struct.file_info** %6, align 8
  %140 = load %struct.map_info*, %struct.map_info** %7, align 8
  %141 = getelementptr inbounds %struct.map_info, %struct.map_info* %140, i32 0, i32 0
  store %struct.file_info* %139, %struct.file_info** %141, align 8
  %142 = load %struct.proc_handle*, %struct.proc_handle** %9, align 8
  %143 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %138, %124, %34
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.map_info* @reallocarray(%struct.map_info*, i32, i32) #1

declare dso_local i32 @rdl2prmap(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.file_info* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
