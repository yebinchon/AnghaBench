; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_keybuf_inschar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_keybuf_inschar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8 }

@keybuf = common dso_local global i8* null, align 8
@CHAR_BACKSPACE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @keybuf_inschar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keybuf_inschar(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %41 [
    i32 128, label %6
    i32 132, label %13
    i32 129, label %20
    i32 130, label %27
    i32 133, label %34
    i32 131, label %38
  ]

6:                                                ; preds = %1
  %7 = load i8*, i8** @keybuf, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 27, i8* %8, align 1
  %9 = load i8*, i8** @keybuf, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 91, i8* %10, align 1
  %11 = load i8*, i8** @keybuf, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 65, i8* %12, align 1
  br label %47

13:                                               ; preds = %1
  %14 = load i8*, i8** @keybuf, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 27, i8* %15, align 1
  %16 = load i8*, i8** @keybuf, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 91, i8* %17, align 1
  %18 = load i8*, i8** @keybuf, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 66, i8* %19, align 1
  br label %47

20:                                               ; preds = %1
  %21 = load i8*, i8** @keybuf, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 27, i8* %22, align 1
  %23 = load i8*, i8** @keybuf, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 91, i8* %24, align 1
  %25 = load i8*, i8** @keybuf, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 67, i8* %26, align 1
  br label %47

27:                                               ; preds = %1
  %28 = load i8*, i8** @keybuf, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 27, i8* %29, align 1
  %30 = load i8*, i8** @keybuf, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 91, i8* %31, align 1
  %32 = load i8*, i8** @keybuf, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 68, i8* %33, align 1
  br label %47

34:                                               ; preds = %1
  %35 = load i8, i8* @CHAR_BACKSPACE, align 1
  %36 = load i8*, i8** @keybuf, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  br label %47

38:                                               ; preds = %1
  %39 = load i8*, i8** @keybuf, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 27, i8* %40, align 1
  br label %47

41:                                               ; preds = %1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 4
  %45 = load i8*, i8** @keybuf, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %44, i8* %46, align 1
  br label %47

47:                                               ; preds = %41, %38, %34, %27, %20, %13, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
