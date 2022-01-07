; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBUFSIZ = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i8** null, align 8
@sprs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sds_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sds_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @PBUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  store i8 19, i8* %11, align 1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  store i8 1, i8* %13, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  store i8 0, i8* %15, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  store i8 0, i8* %17, align 1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i8**, i8*** @deprecated_registers, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 128
  %26 = add nsw i32 %25, 256
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %23, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i8
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  store i8 %30, i8* %31, align 1
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  store i8 0, i8* %41, align 1
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %37

46:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** @sprs, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load i8*, i8** %3, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = ptrtoint i8* %10 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @sds_send(i8* %10, i32 %67)
  store i8* %10, i8** %3, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  store i8 19, i8* %69, align 1
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  store i8 2, i8* %71, align 1
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %3, align 8
  store i8 0, i8* %73, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  store i8 0, i8* %75, align 1
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %89, %62
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 128
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i8**, i8*** @deprecated_registers, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %3, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load i8*, i8** %3, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = ptrtoint i8* %10 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @sds_send(i8* %10, i32 %97)
  %99 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sds_send(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
