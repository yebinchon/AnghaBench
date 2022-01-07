; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_exec_imgact_try.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_exec_imgact_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i8*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8* }

@SHELLMAGIC = common dso_local global i16 0, align 2
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_exec_imgact_try(%struct.image_params* %0) #0 {
  %2 = alloca %struct.image_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %2, align 8
  %6 = load %struct.image_params*, %struct.image_params** %2, align 8
  %7 = getelementptr inbounds %struct.image_params, %struct.image_params* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %3, align 8
  store i32 -1, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i16*
  %12 = getelementptr inbounds i16, i16* %11, i64 0
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @SHELLMAGIC, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load %struct.image_params*, %struct.image_params** %2, align 8
  %20 = call i32 @exec_shell_imgact(%struct.image_params* %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load %struct.image_params*, %struct.image_params** %2, align 8
  %24 = getelementptr inbounds %struct.image_params, %struct.image_params* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @FIRST_THREAD_IN_PROC(i32 %25)
  %27 = load %struct.image_params*, %struct.image_params** %2, align 8
  %28 = getelementptr inbounds %struct.image_params, %struct.image_params* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @UIO_SYSSPACE, align 4
  %31 = load i32, i32* @AT_FDCWD, align 4
  %32 = call i32 @linux_emul_convpath(i32 %26, i8* %29, i32 %30, i8** %4, i32 0, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.image_params*, %struct.image_params** %2, align 8
  %38 = getelementptr inbounds %struct.image_params, %struct.image_params* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.image_params*, %struct.image_params** %2, align 8
  %40 = getelementptr inbounds %struct.image_params, %struct.image_params* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* %36, i8** %42, align 8
  br label %43

43:                                               ; preds = %35, %22
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @exec_shell_imgact(%struct.image_params*) #1

declare dso_local i32 @linux_emul_convpath(i32, i8*, i32, i8**, i32, i32) #1

declare dso_local i32 @FIRST_THREAD_IN_PROC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
