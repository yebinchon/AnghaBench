; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64, i64, i64, i32*, i32*, %struct.proc_handle*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32*, %struct.proc_handle* }
%struct.TYPE_4__ = type { i64, %struct.proc_handle* }
%struct.TYPE_3__ = type { i64, %struct.proc_handle* }
%struct.file_info = type { i64, i64, i64, i32*, i32*, %struct.file_info*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32*, %struct.file_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_free(%struct.proc_handle* %0) #0 {
  %2 = alloca %struct.proc_handle*, align 8
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca i64, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %71, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %8 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %5
  %12 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %13 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %12, i32 0, i32 5
  %14 = load %struct.proc_handle*, %struct.proc_handle** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %14, i64 %15
  %17 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %16, i32 0, i32 10
  %18 = load %struct.proc_handle*, %struct.proc_handle** %17, align 8
  %19 = bitcast %struct.proc_handle* %18 to %struct.file_info*
  store %struct.file_info* %19, %struct.file_info** %3, align 8
  %20 = load %struct.file_info*, %struct.file_info** %3, align 8
  %21 = icmp ne %struct.file_info* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %11
  %23 = load %struct.file_info*, %struct.file_info** %3, align 8
  %24 = getelementptr inbounds %struct.file_info, %struct.file_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = load %struct.file_info*, %struct.file_info** %3, align 8
  %30 = getelementptr inbounds %struct.file_info, %struct.file_info* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = load %struct.file_info*, %struct.file_info** %3, align 8
  %35 = getelementptr inbounds %struct.file_info, %struct.file_info* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @elf_end(i32* %36)
  %38 = load %struct.file_info*, %struct.file_info** %3, align 8
  %39 = getelementptr inbounds %struct.file_info, %struct.file_info* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @close(i32 %40)
  %42 = load %struct.file_info*, %struct.file_info** %3, align 8
  %43 = getelementptr inbounds %struct.file_info, %struct.file_info* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.file_info*, %struct.file_info** %3, align 8
  %49 = getelementptr inbounds %struct.file_info, %struct.file_info* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.proc_handle*, %struct.proc_handle** %50, align 8
  %52 = call i32 @free(%struct.proc_handle* %51)
  br label %53

53:                                               ; preds = %47, %33
  %54 = load %struct.file_info*, %struct.file_info** %3, align 8
  %55 = getelementptr inbounds %struct.file_info, %struct.file_info* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.file_info*, %struct.file_info** %3, align 8
  %61 = getelementptr inbounds %struct.file_info, %struct.file_info* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.proc_handle*, %struct.proc_handle** %62, align 8
  %64 = call i32 @free(%struct.proc_handle* %63)
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.file_info*, %struct.file_info** %3, align 8
  %68 = bitcast %struct.file_info* %67 to %struct.proc_handle*
  %69 = call i32 @free(%struct.proc_handle* %68)
  br label %70

70:                                               ; preds = %66, %22, %11
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %5

74:                                               ; preds = %5
  %75 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %76 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %81 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %80, i32 0, i32 5
  %82 = load %struct.proc_handle*, %struct.proc_handle** %81, align 8
  %83 = call i32 @free(%struct.proc_handle* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %86 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %91 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @procstat_close(i32* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %96 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %101 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @rd_delete(i32* %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.proc_handle*, %struct.proc_handle** %2, align 8
  %106 = call i32 @free(%struct.proc_handle* %105)
  ret void
}

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.proc_handle*) #1

declare dso_local i32 @procstat_close(i32*) #1

declare dso_local i32 @rd_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
