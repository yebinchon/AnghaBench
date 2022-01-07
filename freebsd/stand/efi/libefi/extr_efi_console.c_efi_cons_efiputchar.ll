; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_efiputchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_efiputchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)* }

@conout = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_cons_efiputchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %6, i8* %7, align 1
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %8, align 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @conout, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @conout, align 8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %14 = call i32 %11(%struct.TYPE_4__* %12, i8* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @EFI_ERROR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 63, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @conout, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @conout, align 8
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %26 = call i32 %23(%struct.TYPE_4__* %24, i8* %25)
  ret void
}

declare dso_local i64 @EFI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
