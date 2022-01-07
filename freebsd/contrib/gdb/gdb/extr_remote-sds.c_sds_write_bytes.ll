; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_write_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @sds_write_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sds_write_bytes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @PBUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 150, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %65, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 13, i8* %25, align 16
  %26 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %30, i8* %31, align 2
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds i8, i8* %16, i64 3
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, i8* %16, i64 4
  store i8 %40, i8* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, i8* %16, i64 5
  store i8 %44, i8* %45, align 1
  %46 = getelementptr inbounds i8, i8* %16, i64 6
  store i8 1, i8* %46, align 2
  %47 = getelementptr inbounds i8, i8* %16, i64 7
  store i8 0, i8* %47, align 1
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %62, %21
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %16, i64 %60
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 8, %66
  %68 = call i32 @sds_send(i8* %16, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %18

79:                                               ; preds = %18
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %81)
  ret i32 %80
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
