; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_readkey_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_readkey_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8 }
%struct.TYPE_8__ = type { i32 }

@coninex = common dso_local global %struct.TYPE_11__* null, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_SHIFT_STATE_VALID = common dso_local global i32 0, align 4
@EFI_RIGHT_CONTROL_PRESSED = common dso_local global i32 0, align 4
@EFI_LEFT_CONTROL_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @efi_readkey_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_readkey_ex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** @coninex, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64 (%struct.TYPE_11__*, %struct.TYPE_9__*)*, i64 (%struct.TYPE_11__*, %struct.TYPE_9__*)** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @coninex, align 8
  %10 = call i64 %8(%struct.TYPE_11__* %9, %struct.TYPE_9__* %4)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @EFI_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EFI_SHIFT_STATE_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EFI_RIGHT_CONTROL_PRESSED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EFI_LEFT_CONTROL_PRESSED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 122
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 97
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = add i8 %54, 1
  store i8 %55, i8* %53, align 1
  br label %56

56:                                               ; preds = %45, %39, %33
  br label %57

57:                                               ; preds = %56, %28
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = call i32 @keybuf_inschar(%struct.TYPE_10__* %59)
  store i32 1, i32* %1, align 4
  br label %62

61:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @keybuf_inschar(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
