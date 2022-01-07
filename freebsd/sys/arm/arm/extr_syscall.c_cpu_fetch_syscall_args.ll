; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_syscall.c_cpu_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_syscall.c_cpu_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_6__*, %struct.proc*, %struct.syscall_args }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.syscall_args = type { i64, i32, i32, i64, %struct.TYPE_5__* }

@SYS_syscall = common dso_local global i64 0, align 8
@SYS___syscall = common dso_local global i64 0, align 8
@_QUAD_LOWWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 3
  store %struct.syscall_args* %8, %struct.syscall_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %15 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i64* %19, i64** %4, align 8
  %20 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %21 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SYS_syscall, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %4, align 8
  %28 = load i64, i64* %26, align 8
  %29 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %30 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %32 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  br label %55

35:                                               ; preds = %1
  %36 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %37 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SYS___syscall, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* @_QUAD_LOWWORD, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %47 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %49 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %49, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64* %53, i64** %4, align 8
  br label %54

54:                                               ; preds = %41, %35
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.thread*, %struct.thread** %2, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 2
  %58 = load %struct.proc*, %struct.proc** %57, align 8
  store %struct.proc* %58, %struct.proc** %3, align 8
  %59 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %60 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.proc*, %struct.proc** %3, align 8
  %63 = getelementptr inbounds %struct.proc, %struct.proc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %61, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.proc*, %struct.proc** %3, align 8
  %70 = getelementptr inbounds %struct.proc, %struct.proc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %76 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %75, i32 0, i32 4
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %76, align 8
  br label %89

77:                                               ; preds = %55
  %78 = load %struct.proc*, %struct.proc** %3, align 8
  %79 = getelementptr inbounds %struct.proc, %struct.proc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %84 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %85
  %87 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %88 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %87, i32 0, i32 4
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  br label %89

89:                                               ; preds = %77, %68
  %90 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %91 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %96 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %6, align 4
  %97 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %98 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %4, align 8
  %101 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %102 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i64 %99, i64* %100, i32 %106)
  %108 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %109 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %112 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %89
  %116 = load %struct.thread*, %struct.thread** %2, align 8
  %117 = getelementptr inbounds %struct.thread, %struct.thread* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %123 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %126 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %131 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %134 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @copyin(i8* %121, i64 %129, i32 %139)
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %115, %89
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.thread*, %struct.thread** %2, align 8
  %146 = getelementptr inbounds %struct.thread, %struct.thread* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.thread*, %struct.thread** %2, align 8
  %150 = getelementptr inbounds %struct.thread, %struct.thread* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %144, %141
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @memcpy(i64, i64*, i32) #1

declare dso_local i32 @copyin(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
