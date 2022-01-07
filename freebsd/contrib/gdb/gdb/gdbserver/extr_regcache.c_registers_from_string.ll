; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_regcache.c_registers_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_regcache.c_registers_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@current_inferior = common dso_local global i32 0, align 4
@register_bytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Wrong sized register packet (expected %d bytes, got %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registers_from_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @current_inferior, align 4
  %8 = call %struct.TYPE_2__* @get_regcache(i32 %7, i32 1)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @register_bytes, align 4
  %13 = mul nsw i32 %12, 2
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @register_bytes, align 4
  %17 = mul nsw i32 2, %16
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @register_bytes, align 4
  %22 = mul nsw i32 %21, 2
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @register_bytes, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i8*, i8** %2, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %31, 2
  %33 = call i32 @convert_ascii_to_int(i8* %29, i8* %30, i32 %32)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_2__* @get_regcache(i32, i32) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @convert_ascii_to_int(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
