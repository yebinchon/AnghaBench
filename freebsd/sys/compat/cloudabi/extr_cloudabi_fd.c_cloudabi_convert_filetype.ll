; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_convert_filetype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_convert_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.vnode*, %struct.socket* }
%struct.vnode = type { i32 }
%struct.socket = type { i32 }

@CLOUDABI_FILETYPE_SOCKET_STREAM = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_PROCESS = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_SHARED_MEMORY = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_SOCKET_DGRAM = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_UNKNOWN = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_BLOCK_DEVICE = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_CHARACTER_DEVICE = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_DIRECTORY = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_SYMBOLIC_LINK = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_REGULAR_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_convert_filetype(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %53 [
    i32 142, label %9
    i32 141, label %11
    i32 140, label %13
    i32 139, label %15
    i32 138, label %17
    i32 137, label %30
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @CLOUDABI_FILETYPE_SOCKET_STREAM, align 4
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load i32, i32* @CLOUDABI_FILETYPE_SOCKET_STREAM, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load i32, i32* @CLOUDABI_FILETYPE_PROCESS, align 4
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* @CLOUDABI_FILETYPE_SHARED_MEMORY, align 4
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 2
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  store %struct.socket* %20, %struct.socket** %4, align 8
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %28 [
    i32 136, label %24
    i32 135, label %26
  ]

24:                                               ; preds = %17
  %25 = load i32, i32* @CLOUDABI_FILETYPE_SOCKET_DGRAM, align 4
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %17
  %27 = load i32, i32* @CLOUDABI_FILETYPE_SOCKET_STREAM, align 4
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %17
  %29 = load i32, i32* @CLOUDABI_FILETYPE_UNKNOWN, align 4
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %1
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %5, align 8
  %34 = load %struct.vnode*, %struct.vnode** %5, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %51 [
    i32 134, label %37
    i32 133, label %39
    i32 132, label %41
    i32 131, label %43
    i32 130, label %45
    i32 129, label %47
    i32 128, label %49
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* @CLOUDABI_FILETYPE_BLOCK_DEVICE, align 4
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %30
  %40 = load i32, i32* @CLOUDABI_FILETYPE_CHARACTER_DEVICE, align 4
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %30
  %42 = load i32, i32* @CLOUDABI_FILETYPE_DIRECTORY, align 4
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %30
  %44 = load i32, i32* @CLOUDABI_FILETYPE_SOCKET_STREAM, align 4
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %30
  %46 = load i32, i32* @CLOUDABI_FILETYPE_SYMBOLIC_LINK, align 4
  store i32 %46, i32* %2, align 4
  br label %55

47:                                               ; preds = %30
  %48 = load i32, i32* @CLOUDABI_FILETYPE_REGULAR_FILE, align 4
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %30
  %50 = load i32, i32* @CLOUDABI_FILETYPE_SOCKET_STREAM, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %30
  %52 = load i32, i32* @CLOUDABI_FILETYPE_UNKNOWN, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @CLOUDABI_FILETYPE_UNKNOWN, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %49, %47, %45, %43, %41, %39, %37, %28, %26, %24, %15, %13, %11, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
