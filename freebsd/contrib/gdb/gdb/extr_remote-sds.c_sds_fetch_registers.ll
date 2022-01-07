; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBUFSIZ = common dso_local global i32 0, align 4
@DEPRECATED_REGISTER_BYTES = common dso_local global i32 0, align 4
@sprs = common dso_local global i8* null, align 8
@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sds_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sds_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @PBUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @DEPRECATED_REGISTER_BYTES, align 4
  %13 = call i8* @alloca(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @DEPRECATED_REGISTER_BYTES, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 18, i8* %17, align 16
  %18 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 1, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 0, i8* %19, align 2
  %20 = call i32 @sds_send(i8* %11, i32 3)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 24
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %11, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 128
  %32 = add nsw i32 %31, 256
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8 %28, i8* %34, align 1
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 28
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %11, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** @sprs, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %47, i8* %51, align 1
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %39

55:                                               ; preds = %39
  %56 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 18, i8* %56, align 16
  %57 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 2, i8* %57, align 1
  %58 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 0, i8* %58, align 2
  %59 = call i32 @sds_send(i8* %11, i32 3)
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %73, %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %11, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %72, align 1
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %60

76:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %88, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @NUM_REGS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %84)
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i32 @supply_register(i32 %82, i8* %86)
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %77

91:                                               ; preds = %77
  %92 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @alloca(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sds_send(i8*, i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
