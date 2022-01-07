; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_objname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_objname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proc_objname(%struct.proc_handle* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proc_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %13 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %18 = call i32* @proc_rdagent(%struct.proc_handle* %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* null, i8** %5, align 8
  br label %64

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %4
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %26 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %31 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = icmp ult i64 %42, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @strlcpy(i8* %52, i32 %55, i64 %56)
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %5, align 8
  br label %64

59:                                               ; preds = %41, %29
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %23

63:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %64

64:                                               ; preds = %63, %51, %20
  %65 = load i8*, i8** %5, align 8
  ret i8* %65
}

declare dso_local i32* @proc_rdagent(%struct.proc_handle*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
