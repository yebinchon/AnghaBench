; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_atexit.c___cxa_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_atexit.c___cxa_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atexit = type { i32, %struct.atexit_fn*, %struct.atexit* }
%struct.atexit_fn = type { i64, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (...)*, i32 (i32)* }
%struct.dl_phdr_info = type { i32 }

@global_exit = common dso_local global i32 0, align 4
@atexit_mutex = common dso_local global i32 0, align 4
@__atexit = common dso_local global %struct.atexit* null, align 8
@ATEXIT_FN_EMPTY = common dso_local global i64 0, align 8
@ATEXIT_FN_CXA = common dso_local global i64 0, align 8
@ATEXIT_FN_STD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cxa_finalize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dl_phdr_info, align 4
  %4 = alloca %struct.atexit*, align 8
  %5 = alloca %struct.atexit_fn, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @_rtld_addr_phdr(i8* %11, %struct.dl_phdr_info* %3)
  store i32 %12, i32* %7, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 1, i32* @global_exit, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = call i32 @_MUTEX_LOCK(i32* @atexit_mutex)
  %16 = load %struct.atexit*, %struct.atexit** @__atexit, align 8
  store %struct.atexit* %16, %struct.atexit** %4, align 8
  br label %17

17:                                               ; preds = %105, %14
  %18 = load %struct.atexit*, %struct.atexit** %4, align 8
  %19 = icmp ne %struct.atexit* %18, null
  br i1 %19, label %20, label %109

20:                                               ; preds = %17
  %21 = load %struct.atexit*, %struct.atexit** %4, align 8
  %22 = getelementptr inbounds %struct.atexit, %struct.atexit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %102, %68, %39, %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load %struct.atexit*, %struct.atexit** %4, align 8
  %30 = getelementptr inbounds %struct.atexit, %struct.atexit* %29, i32 0, i32 1
  %31 = load %struct.atexit_fn*, %struct.atexit_fn** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %31, i64 %33
  %35 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATEXIT_FN_EMPTY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %24

40:                                               ; preds = %28
  %41 = load %struct.atexit*, %struct.atexit** %4, align 8
  %42 = getelementptr inbounds %struct.atexit, %struct.atexit* %41, i32 0, i32 1
  %43 = load %struct.atexit_fn*, %struct.atexit_fn** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %43, i64 %45
  %47 = bitcast %struct.atexit_fn* %5 to i8*
  %48 = bitcast %struct.atexit_fn* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 40, i1 false)
  %49 = load i8*, i8** %2, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %40
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* @global_exit, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = call i32 @__elf_phdr_match_addr(%struct.dl_phdr_info* %3, i32 (i32)* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %59, %56
  br label %24

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %51, %40
  %71 = load i64, i64* @ATEXIT_FN_EMPTY, align 8
  %72 = load %struct.atexit*, %struct.atexit** %4, align 8
  %73 = getelementptr inbounds %struct.atexit, %struct.atexit* %72, i32 0, i32 1
  %74 = load %struct.atexit_fn*, %struct.atexit_fn** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %74, i64 %76
  %78 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %77, i32 0, i32 0
  store i64 %71, i64* %78, align 8
  %79 = call i32 @_MUTEX_UNLOCK(i32* @atexit_mutex)
  %80 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATEXIT_FN_CXA, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (i32)*, i32 (i32)** %86, align 8
  %88 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 %87(i32 %89)
  br label %102

91:                                               ; preds = %70
  %92 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ATEXIT_FN_STD, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.atexit_fn, %struct.atexit_fn* %5, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (...)*, i32 (...)** %98, align 8
  %100 = call i32 (...) %99()
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %84
  %103 = call i32 @_MUTEX_LOCK(i32* @atexit_mutex)
  br label %24

104:                                              ; preds = %24
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.atexit*, %struct.atexit** %4, align 8
  %107 = getelementptr inbounds %struct.atexit, %struct.atexit* %106, i32 0, i32 2
  %108 = load %struct.atexit*, %struct.atexit** %107, align 8
  store %struct.atexit* %108, %struct.atexit** %4, align 8
  br label %17

109:                                              ; preds = %17
  %110 = call i32 @_MUTEX_UNLOCK(i32* @atexit_mutex)
  %111 = load i8*, i8** %2, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 @_MUTEX_DESTROY(i32* @atexit_mutex)
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* @global_exit, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call i32 @__pthread_cxa_finalize(%struct.dl_phdr_info* %3)
  br label %123

123:                                              ; preds = %121, %118, %115
  ret void
}

declare dso_local i32 @_rtld_addr_phdr(i8*, %struct.dl_phdr_info*) #1

declare dso_local i32 @_MUTEX_LOCK(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__elf_phdr_match_addr(%struct.dl_phdr_info*, i32 (i32)*) #1

declare dso_local i32 @_MUTEX_UNLOCK(i32*) #1

declare dso_local i32 @_MUTEX_DESTROY(i32*) #1

declare dso_local i32 @__pthread_cxa_finalize(%struct.dl_phdr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
