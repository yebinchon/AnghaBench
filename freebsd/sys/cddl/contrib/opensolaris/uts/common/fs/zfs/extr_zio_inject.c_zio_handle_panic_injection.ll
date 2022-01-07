; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio_inject.c_zio_handle_panic_injection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio_inject.c_zio_handle_panic_injection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32 }

@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Panic requested in function %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_handle_panic_injection(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @RW_READER, align 4
  %9 = call i32 @rw_enter(i32* @inject_lock, i32 %8)
  %10 = call %struct.TYPE_7__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  br label %11

11:                                               ; preds = %40, %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %40

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i8* %29, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %28, %21
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = call %struct.TYPE_7__* @list_next(i32* @inject_handlers, %struct.TYPE_7__* %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %7, align 8
  br label %11

43:                                               ; preds = %11
  %44 = call i32 @rw_exit(i32* @inject_lock)
  ret void
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @list_head(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @list_next(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
