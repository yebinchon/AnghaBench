; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @sds_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sds_read_bytes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @PBUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 150, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %83, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 12, i8* %28, align 16
  %29 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %33, i8* %34, align 2
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 %43, i8* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, i8* %19, i64 5
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %13, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, i8* %19, i64 6
  store i8 %52, i8* %53, align 2
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 %56, i8* %57, align 1
  %58 = getelementptr inbounds i8, i8* %19, i64 8
  store i8 1, i8* %58, align 8
  %59 = call i32 @sds_send(i8* %19, i32 9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 2
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

65:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %19, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 %75, i8* %79, align 1
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load i32, i32* %13, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %21

94:                                               ; preds = %21
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

96:                                               ; preds = %94, %64
  %97 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i32, i32) #2

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
