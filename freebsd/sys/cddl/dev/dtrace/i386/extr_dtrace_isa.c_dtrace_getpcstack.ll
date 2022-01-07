; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_isa.c_dtrace_getpcstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_isa.c_dtrace_getpcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.i386_frame = type { i64, %struct.i386_frame* }

@solaris_cpu = common dso_local global %struct.TYPE_3__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getpcstack(i64* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.i386_frame*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @solaris_cpu, align 8
  %15 = load i64, i64* @curcpu, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i64*, i64** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64 %23, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = call i64 asm sideeffect "movl %ebp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = inttoptr i64 %33 to %struct.i386_frame*
  store %struct.i386_frame* %34, %struct.i386_frame** %11, align 8
  br label %35

35:                                               ; preds = %102, %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %106

39:                                               ; preds = %35
  %40 = load %struct.i386_frame*, %struct.i386_frame** %11, align 8
  %41 = ptrtoint %struct.i386_frame* %40 to i64
  %42 = call i32 @INKERNEL(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %106

45:                                               ; preds = %39
  %46 = load %struct.i386_frame*, %struct.i386_frame** %11, align 8
  %47 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @INKERNEL(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %106

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i64, i64* %13, align 8
  %66 = load i64*, i64** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  store i64 %65, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %61, %56
  br label %79

72:                                               ; preds = %53
  %73 = load i64, i64* %12, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 %73, i64* %78, align 8
  br label %79

79:                                               ; preds = %72, %71
  %80 = load %struct.i386_frame*, %struct.i386_frame** %11, align 8
  %81 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %80, i32 0, i32 1
  %82 = load %struct.i386_frame*, %struct.i386_frame** %81, align 8
  %83 = load %struct.i386_frame*, %struct.i386_frame** %11, align 8
  %84 = icmp ule %struct.i386_frame* %82, %83
  br i1 %84, label %101, label %85

85:                                               ; preds = %79
  %86 = load %struct.i386_frame*, %struct.i386_frame** %11, align 8
  %87 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %86, i32 0, i32 1
  %88 = load %struct.i386_frame*, %struct.i386_frame** %87, align 8
  %89 = ptrtoint %struct.i386_frame* %88 to i64
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %92, %98
  %100 = icmp sge i64 %89, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %85, %79
  br label %106

102:                                              ; preds = %85
  %103 = load %struct.i386_frame*, %struct.i386_frame** %11, align 8
  %104 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %103, i32 0, i32 1
  %105 = load %struct.i386_frame*, %struct.i386_frame** %104, align 8
  store %struct.i386_frame* %105, %struct.i386_frame** %11, align 8
  br label %35

106:                                              ; preds = %101, %52, %44, %35
  br label %107

107:                                              ; preds = %116, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i64*, i64** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %107

119:                                              ; preds = %107
  ret void
}

declare dso_local i32 @INKERNEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 948}
