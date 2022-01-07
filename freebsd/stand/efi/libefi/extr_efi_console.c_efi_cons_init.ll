; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_7__ = type { i64 (i32, i32*, i8**, i32, i32*, i32)* }

@conin = common dso_local global i32* null, align 8
@ST = common dso_local global %struct.TYPE_6__* null, align 8
@conout = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@BS = common dso_local global %struct.TYPE_7__* null, align 8
@simple_input_ex_guid = common dso_local global i32 0, align 4
@coninex = common dso_local global i32* null, align 8
@IH = common dso_local global i32 0, align 4
@EFI_OPEN_PROTOCOL_GET_PROTOCOL = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @efi_cons_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_cons_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** @conin, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ST, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @conout, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ST, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** @conin, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @conout, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @conout, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 %17(%struct.TYPE_5__* %18, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BS, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64 (i32, i32*, i8**, i32, i32*, i32)*, i64 (i32, i32*, i8**, i32, i32*, i32)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ST, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IH, align 4
  %28 = load i32, i32* @EFI_OPEN_PROTOCOL_GET_PROTOCOL, align 4
  %29 = call i64 %23(i32 %26, i32* @simple_input_ex_guid, i8** bitcast (i32** @coninex to i8**), i32 %27, i32* null, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  store i32* null, i32** @coninex, align 8
  br label %34

34:                                               ; preds = %33, %8
  %35 = call i64 (...) @efi_cons_update_mode()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %39

38:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @efi_cons_update_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
