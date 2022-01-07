; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_iter_objs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_iter_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_iter_objs(%struct.proc_handle* %0, i32 (i8*, %struct.TYPE_7__*, i8*)** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_handle*, align 8
  %6 = alloca i32 (i8*, %struct.TYPE_7__*, i8*)**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %5, align 8
  store i32 (i8*, %struct.TYPE_7__*, i8*)** %1, i32 (i8*, %struct.TYPE_7__*, i8*)*** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %24 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %29 = call i32* @proc_rdagent(%struct.proc_handle* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %76

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %3
  store i32 0, i32* %14, align 4
  %34 = trunc i64 %17 to i32
  %35 = call i32 @memset(i8* %19, i32 0, i32 %34)
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %71, %33
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %39 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %44 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %12, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = trunc i64 %21 to i32
  %53 = call i32 @strlcpy(i8* %22, i8* %51, i32 %52)
  %54 = call i8* @basename(i8* %22)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @strcmp(i8* %55, i8* %19)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %71

59:                                               ; preds = %42
  %60 = load i32 (i8*, %struct.TYPE_7__*, i8*)**, i32 (i8*, %struct.TYPE_7__*, i8*)*** %6, align 8
  %61 = load i32 (i8*, %struct.TYPE_7__*, i8*)*, i32 (i8*, %struct.TYPE_7__*, i8*)** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 %61(i8* %62, %struct.TYPE_7__* %63, i8* %64)
  store i32 %65, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %74

68:                                               ; preds = %59
  %69 = trunc i64 %17 to i32
  %70 = call i32 @strlcpy(i8* %19, i8* %22, i32 %69)
  br label %71

71:                                               ; preds = %68, %58
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %36

74:                                               ; preds = %67, %36
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %76

76:                                               ; preds = %74, %31
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @proc_rdagent(%struct.proc_handle*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @basename(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
