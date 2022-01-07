; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_register_changed_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_register_changed_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global i32 0, align 4
@old_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @register_changed_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_changed_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @deprecated_selected_frame, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @frame_register_read(i32 %11, i32 %12, i8* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32*, i32** @old_regs, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %21)
  %23 = call i64 @memcmp(i32* %20, i8* %10, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %34

26:                                               ; preds = %16
  %27 = load i32*, i32** @old_regs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %31)
  %33 = call i32 @memcpy(i32* %30, i8* %10, i32 %32)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %25, %15
  %35 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @frame_register_read(i32, i32, i8*) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
