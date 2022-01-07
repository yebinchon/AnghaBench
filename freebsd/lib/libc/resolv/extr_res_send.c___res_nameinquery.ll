; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c___res_nameinquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c___res_nameinquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HFIXEDSZ = common dso_local global i32 0, align 4
@MAXDNAME = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_nameinquery(i8* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @HFIXEDSZ, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %89, %5
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %13, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load i32, i32* @MAXDNAME, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %14, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = trunc i64 %36 to i32
  %43 = call i32 @dn_expand(i32* %39, i32* %40, i32* %41, i8* %38, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %86

47:                                               ; preds = %33
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @INT16SZ, align 4
  %54 = mul nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ugt i32* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %86

60:                                               ; preds = %47
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @ns_get16(i32* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* @INT16SZ, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @ns_get16(i32* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* @INT16SZ, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %60
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @ns_samename(i8* %38, i8* %81)
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %86

85:                                               ; preds = %80, %76, %60
  store i32 0, i32* %19, align 4
  br label %86

86:                                               ; preds = %85, %84, %59, %46
  %87 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %19, align 4
  switch i32 %88, label %93 [
    i32 0, label %89
    i32 1, label %91
  ]

89:                                               ; preds = %86
  br label %29

90:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* %6, align 4
  ret i32 %92

93:                                               ; preds = %86
  unreachable
}

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @ns_get16(i32*) #1

declare dso_local i32 @ns_samename(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
