; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i64, i32, i32, i32 }
%struct.ub_result = type opaque
%struct.ub_result.0 = type { i32 }

@UB_PIPE = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_wait(%struct.ub_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ub_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*, i32, %struct.ub_result*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ub_result.0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %3, align 8
  br label %11

11:                                               ; preds = %1, %54, %88
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %12, i32 0, i32 1
  %14 = call i32 @lock_basic_lock(i32* %13)
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 3
  %17 = call i32 @lock_basic_lock(i32* %16)
  %18 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %23, i32 0, i32 3
  %25 = call i32 @lock_basic_unlock(i32* %24)
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %26, i32 0, i32 1
  %28 = call i32 @lock_basic_unlock(i32* %27)
  br label %89

29:                                               ; preds = %11
  %30 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %30, i32 0, i32 3
  %32 = call i32 @lock_basic_unlock(i32* %31)
  %33 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tube_wait(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %29
  %40 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tube_read_msg(i32 %42, i32** %9, i32* %10, i32 1)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %47, i32 0, i32 1
  %49 = call i32 @lock_basic_unlock(i32* %48)
  %50 = load i32, i32* @UB_PIPE, align 4
  store i32 %50, i32* %2, align 4
  br label %91

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %55, i32 0, i32 1
  %57 = call i32 @lock_basic_unlock(i32* %56)
  br label %11

58:                                               ; preds = %51
  %59 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = bitcast i32 (i8*, i32, %struct.ub_result*)** %5 to i32 (i8*, i32, %struct.ub_result.0*)*
  %63 = call i32 @process_answer_detail(%struct.ub_ctx* %59, i32* %60, i32 %61, i32 (i8*, i32, %struct.ub_result.0*)* %62, i8** %6, i32* %4, %struct.ub_result.0** %7)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %64, i32 0, i32 1
  %66 = call i32 @lock_basic_unlock(i32* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @UB_PIPE, align 4
  store i32 %72, i32* %2, align 4
  br label %91

73:                                               ; preds = %58
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32 (i8*, i32, %struct.ub_result*)*, i32 (i8*, i32, %struct.ub_result*)** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.ub_result.0*, %struct.ub_result.0** %7, align 8
  %81 = bitcast %struct.ub_result.0* %80 to %struct.ub_result*
  %82 = call i32 %77(i8* %78, i32 %79, %struct.ub_result* %81)
  br label %83

83:                                               ; preds = %76, %73
  br label %88

84:                                               ; preds = %29
  %85 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %85, i32 0, i32 1
  %87 = call i32 @lock_basic_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %83
  br label %11

89:                                               ; preds = %22
  %90 = load i32, i32* @UB_NOERROR, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %71, %46
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @tube_wait(i32) #1

declare dso_local i32 @tube_read_msg(i32, i32**, i32*, i32) #1

declare dso_local i32 @process_answer_detail(%struct.ub_ctx*, i32*, i32, i32 (i8*, i32, %struct.ub_result.0*)*, i8**, i32*, %struct.ub_result.0**) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
