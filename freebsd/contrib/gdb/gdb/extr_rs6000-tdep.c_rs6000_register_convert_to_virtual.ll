; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_register_convert_to_virtual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_register_convert_to_virtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.type*, i8*, i8*)* @rs6000_register_convert_to_virtual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_register_convert_to_virtual(i32 %0, %struct.type* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.type*, %struct.type** %6, align 8
  %11 = call i64 @TYPE_LENGTH(%struct.type* %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @DEPRECATED_REGISTER_RAW_SIZE(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @DEPRECATED_REGISTER_RAW_SIZE(i32 %17)
  %19 = call double @deprecated_extract_floating(i8* %16, i64 %18)
  store double %19, double* %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.type*, %struct.type** %6, align 8
  %22 = call i64 @TYPE_LENGTH(%struct.type* %21)
  %23 = load double, double* %9, align 8
  %24 = call i32 @deprecated_store_floating(i8* %20, i64 %22, double %23)
  br label %31

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @DEPRECATED_REGISTER_RAW_SIZE(i32 %28)
  %30 = call i32 @memcpy(i8* %26, i8* %27, i64 %29)
  br label %31

31:                                               ; preds = %25, %15
  ret void
}

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local double @deprecated_extract_floating(i8*, i64) #1

declare dso_local i32 @deprecated_store_floating(i8*, i64, double) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
