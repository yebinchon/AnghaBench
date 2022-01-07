; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_convert_ace_to_aent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_convert_ace_to_aent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32**, i32*)* @convert_ace_to_aent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_ace_to_aent(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ln_ace_to_aent(i32* %23, i32 %24, i32 %25, i32 %26, i32** %17, i32* %19, i32** %18, i32* %20, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %8, align 4
  br label %83

33:                                               ; preds = %7
  %34 = load i32, i32* %20, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %22, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %22, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32* @cacl_realloc(i32* %45, i32 %46, i32 %49)
  store i32* %50, i32** %17, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %36
  %54 = load i32*, i32** %17, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32*, i32** %18, align 8
  %59 = load i32, i32* %22, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  br label %63

61:                                               ; preds = %36
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %61, %53
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32*, i32** %17, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %17, align 8
  %69 = load i32**, i32*** %14, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32*, i32** %15, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32*, i32** %18, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %22, align 4
  %80 = call i32 @cacl_free(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %31
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @ln_ace_to_aent(i32*, i32, i32, i32, i32**, i32*, i32**, i32*, i32) #1

declare dso_local i32* @cacl_realloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cacl_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
