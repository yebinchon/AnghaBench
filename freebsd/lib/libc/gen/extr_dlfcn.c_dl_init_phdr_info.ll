; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_dlfcn.c_dl_init_phdr_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_dlfcn.c_dl_init_phdr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, %struct.TYPE_7__*, i8*, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@__elf_aux_vector = common dso_local global %struct.TYPE_8__* null, align 8
@AT_NULL = common dso_local global i32 0, align 4
@phdr_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PT_TLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dl_init_phdr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dl_init_phdr_info() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @__elf_aux_vector, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %1, align 8
  br label %4

4:                                                ; preds = %38, %0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AT_NULL, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %37 [
    i32 131, label %14
    i32 130, label %20
    i32 129, label %26
    i32 128, label %32
  ]

14:                                               ; preds = %10
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 6), align 8
  br label %37

20:                                               ; preds = %10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 0), align 8
  br label %37

26:                                               ; preds = %10
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 4), align 8
  br label %37

32:                                               ; preds = %10
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 1), align 8
  br label %37

37:                                               ; preds = %10, %32, %26, %20, %14
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 1
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %1, align 8
  br label %4

41:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 1), align 8
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 4), align 8
  %48 = load i32, i32* %2, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PT_TLS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 2), align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 4), align 8
  %57 = load i32, i32* %2, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 5), align 8
  br label %63

63:                                               ; preds = %55, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %2, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %42

67:                                               ; preds = %42
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @phdr_info, i32 0, i32 3), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
