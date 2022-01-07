; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-blowfish.c_encode_base64.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-blowfish.c_encode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Base64Code = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @encode_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_base64(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %8, align 8
  br label %13

13:                                               ; preds = %86, %3
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = icmp ult i32* %14, %18
  br i1 %19, label %20, label %112

20:                                               ; preds = %13
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i8**, i8*** @Base64Code, align 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 4
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = icmp uge i32* %36, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %20
  %43 = load i8**, i8*** @Base64Code, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %112

51:                                               ; preds = %20
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %52, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 15
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i8**, i8*** @Base64Code, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 15
  %70 = shl i32 %69, 2
  store i32 %70, i32* %9, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = icmp uge i32* %71, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %51
  %78 = load i8**, i8*** @Base64Code, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %112

86:                                               ; preds = %51
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %8, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = ashr i32 %90, 6
  %92 = and i32 %91, 3
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i8**, i8*** @Base64Code, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i8**, i8*** @Base64Code, align 8
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 63
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %13

112:                                              ; preds = %77, %42, %13
  %113 = load i32*, i32** %7, align 8
  store i32 0, i32* %113, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
