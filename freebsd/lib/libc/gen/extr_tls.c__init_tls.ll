; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_tls.c__init_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_tls.c__init_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }

@environ = common dso_local global i64 0, align 8
@AT_NULL = common dso_local global i32 0, align 4
@PT_TLS = common dso_local global i64 0, align 8
@tls_static_space = common dso_local global i32 0, align 4
@tls_init_size = common dso_local global i32 0, align 4
@tls_init_align = common dso_local global i32 0, align 4
@tls_init = common dso_local global i8* null, align 8
@TLS_TCB_SIZE = common dso_local global i32 0, align 4
@TLS_TCB_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_init_tls() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = load i64, i64* @environ, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %1, align 8
  br label %11

11:                                               ; preds = %16, %0
  %12 = load i32*, i32** %1, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %1, align 8
  %14 = load i32, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %11

17:                                               ; preds = %11
  %18 = load i32*, i32** %1, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  br label %21

21:                                               ; preds = %47, %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AT_NULL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %46 [
    i32 130, label %31
    i32 129, label %36
    i32 128, label %41
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %4, align 8
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  br label %46

41:                                               ; preds = %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %27, %41, %36, %31
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 1
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %3, align 8
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = icmp eq %struct.TYPE_5__* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 32
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53, %50
  br label %118

60:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %109, %60
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PT_TLS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %66
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @roundup2(i32 %81, i32 %87)
  store i32 %88, i32* @tls_static_space, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* @tls_init_size, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* @tls_init_align, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** @tls_init, align 8
  br label %112

108:                                              ; preds = %66
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %61

112:                                              ; preds = %75, %61
  %113 = load i32, i32* @TLS_TCB_SIZE, align 4
  %114 = load i32, i32* @TLS_TCB_ALIGN, align 4
  %115 = call i8* @_rtld_allocate_tls(i32* null, i32 %113, i32 %114)
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @_set_tp(i8* %116)
  br label %118

118:                                              ; preds = %112, %59
  ret void
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i8* @_rtld_allocate_tls(i32*, i32, i32) #1

declare dso_local i32 @_set_tp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
