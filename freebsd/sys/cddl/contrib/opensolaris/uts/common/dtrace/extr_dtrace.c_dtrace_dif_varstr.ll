; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dif_varstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dif_varstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }

@DTRACEOPT_STRSIZE = common dso_local global i64 0, align 8
@DTRACE_ACCESS_KERNEL = common dso_local global i32 0, align 4
@CPU_DTRACE_NOSCRATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtrace_dif_varstr(i64 %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DTRACE_ACCESS_KERNEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %4, align 8
  br label %66

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dtrace_strlen(i8* %27, i32 %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = icmp ugt i64 %36, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @CPU_DTRACE_NOSCRATCH, align 4
  %47 = call i32 @DTRACE_CPUFLAG_SET(i32 %46)
  store i64 0, i64* %4, align 8
  br label %66

48:                                               ; preds = %25
  %49 = load i64, i64* %5, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @dtrace_strcpy(i8* %50, i8* %54, i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %48, %45, %23
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32 @dtrace_strlen(i8*, i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_strcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
