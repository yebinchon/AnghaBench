; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_rawputchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_rawputchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32)*, %struct.TYPE_5__*, i32 (%struct.TYPE_6__*, i32, i32*, i32*)* }
%struct.TYPE_5__ = type { i32, i32 }

@conout = common dso_local global %struct.TYPE_6__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@curx = common dso_local global i32 0, align 4
@cury = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @efi_cons_rawputchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_cons_rawputchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conout, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32 (%struct.TYPE_6__*, i32, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*, i32*)** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conout, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conout, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 %9(%struct.TYPE_6__* %10, i32 %15, i32* %4, i32* %5)
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conout, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 8
  %26 = srem i32 %25, 8
  %27 = sub nsw i32 8, %26
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %33, %19
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  call void @efi_cons_rawputchar(i32 32)
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %28

36:                                               ; preds = %28
  br label %45

37:                                               ; preds = %1
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @efi_cons_efiputchar(i32 13)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @efi_cons_efiputchar(i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conout, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conout, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 %48(%struct.TYPE_6__* %49, i32 %50)
  ret void
}

declare dso_local i32 @efi_cons_efiputchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
