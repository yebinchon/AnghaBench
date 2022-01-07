; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_snprintf.c_print_num_llp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_snprintf.c_print_num_llp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRINT_DEC_BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i32*, i8*, i32, i32, i32, i32, i32, i32, i32)* @print_num_llp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_num_llp(i8** %0, i64* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i8** %0, i8*** %12, align 8
  store i64* %1, i64** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %29 = load i32, i32* @PRINT_DEC_BUFSZ, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = icmp eq i8* %33, null
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %26, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %27, align 8
  %38 = trunc i64 %30 to i32
  %39 = load i64, i64* %27, align 8
  %40 = call i32 @print_hex_ll(i8* %32, i32 %38, i64 %39)
  store i32 %40, i32* %28, align 4
  %41 = load i32, i32* %26, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %11
  %44 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 41, i8* %44, align 16
  %45 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 108, i8* %45, align 1
  %46 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 105, i8* %46, align 2
  %47 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 110, i8* %47, align 1
  %48 = getelementptr inbounds i8, i8* %32, i64 4
  store i8 40, i8* %48, align 4
  store i32 5, i32* %28, align 4
  br label %68

49:                                               ; preds = %11
  %50 = load i32, i32* %28, align 4
  %51 = load i32, i32* @PRINT_DEC_BUFSZ, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %28, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %28, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %32, i64 %56
  store i8 120, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %28, align 4
  %60 = load i32, i32* @PRINT_DEC_BUFSZ, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %28, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %28, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %32, i64 %65
  store i8 48, i8* %66, align 1
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i8**, i8*** %12, align 8
  %70 = load i64*, i64** %13, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %26, align 4
  %80 = load i32, i32* %25, align 4
  %81 = load i32, i32* %28, align 4
  %82 = call i32 @print_num(i8** %69, i64* %70, i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i8* %32, i32 %81)
  %83 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_hex_ll(i8*, i32, i64) #2

declare dso_local i32 @print_num(i8**, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
