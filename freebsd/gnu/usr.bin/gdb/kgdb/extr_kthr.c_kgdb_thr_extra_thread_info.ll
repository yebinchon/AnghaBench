; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kthr.c_kgdb_thr_extra_thread_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kthr.c_kgdb_thr_extra_thread_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthr = type { i32, i64, i64 }
%struct.proc = type { i32* }
%struct.thread = type { i32* }

@MAXCOMLEN = common dso_local global i32 0, align 4
@kgdb_thr_extra_thread_info.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"PID=%d\00", align 1
@kvm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kgdb_thr_extra_thread_info(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kthr*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @MAXCOMLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @MAXCOMLEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.kthr* @kgdb_thr_lookup_tid(i32 %20)
  store %struct.kthr* %21, %struct.kthr** %7, align 8
  %22 = load %struct.kthr*, %struct.kthr** %7, align 8
  %23 = icmp eq %struct.kthr* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.kthr*, %struct.kthr** %7, align 8
  %27 = getelementptr inbounds %struct.kthr, %struct.kthr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.kthr*, %struct.kthr** %7, align 8
  %31 = getelementptr inbounds %struct.kthr, %struct.kthr* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.proc*
  store %struct.proc* %33, %struct.proc** %8, align 8
  %34 = load i32, i32* @kvm, align 4
  %35 = load %struct.proc*, %struct.proc** %8, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = ptrtoint i32* %38 to i64
  %40 = bitcast i8* %15 to i8**
  %41 = trunc i64 %13 to i32
  %42 = call i32 @kvm_read(i32 %34, i64 %39, i8** %40, i32 %41)
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, %13
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %71

46:                                               ; preds = %25
  %47 = call i32 @strlcat(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 64)
  %48 = call i32 @strlcat(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i8* %15, i32 64)
  %49 = load %struct.kthr*, %struct.kthr** %7, align 8
  %50 = getelementptr inbounds %struct.kthr, %struct.kthr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.thread*
  store %struct.thread* %52, %struct.thread** %9, align 8
  %53 = load i32, i32* @kvm, align 4
  %54 = load %struct.thread*, %struct.thread** %9, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = ptrtoint i32* %57 to i64
  %59 = bitcast i8* %19 to i8**
  %60 = trunc i64 %18 to i32
  %61 = call i32 @kvm_read(i32 %53, i64 %58, i8** %59, i32 %60)
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, %18
  br i1 %63, label %64, label %70

64:                                               ; preds = %46
  %65 = call i64 @strcmp(i8* %15, i8* %19)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @strlcat(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 64)
  %69 = call i32 @strlcat(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i8* %19, i32 64)
  br label %70

70:                                               ; preds = %67, %64, %46
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @kgdb_thr_extra_thread_info.buf, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %45, %24
  %72 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.kthr* @kgdb_thr_lookup_tid(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @kvm_read(i32, i64, i8**, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

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
