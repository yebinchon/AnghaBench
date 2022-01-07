; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i64 (i32*)* }
%struct.TYPE_5__ = type { i32* }

@key_pending = common dso_local global i32 0, align 4
@coninex = common dso_local global %struct.TYPE_4__* null, align 8
@BS = common dso_local global %struct.TYPE_6__* null, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@conin = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_cons_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @keybuf_ischar()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @key_pending, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  store i32 1, i32* %1, align 4
  br label %54

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coninex, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coninex, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @efi_readkey_ex()
  store i32 %18, i32* @key_pending, align 4
  br label %31

19:                                               ; preds = %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64 (i32*)*, i64 (i32*)** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coninex, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 %22(i32* %25)
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @EFI_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @key_pending, align 4
  br label %31

31:                                               ; preds = %19, %17
  br label %52

32:                                               ; preds = %9
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @conin, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @efi_readkey()
  store i32 %38, i32* @key_pending, align 4
  br label %51

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64 (i32*)*, i64 (i32*)** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @conin, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 %42(i32* %45)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @EFI_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* @key_pending, align 4
  br label %51

51:                                               ; preds = %39, %37
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* @key_pending, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %8
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i64 @keybuf_ischar(...) #1

declare dso_local i32 @efi_readkey_ex(...) #1

declare dso_local i32 @efi_readkey(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
