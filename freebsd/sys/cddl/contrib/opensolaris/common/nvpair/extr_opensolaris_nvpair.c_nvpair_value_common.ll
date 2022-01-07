; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvpair_value_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvpair_value_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i8*)* @nvpair_value_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvpair_value_common(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @nvpair_type(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %87

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %84 [
    i32 154, label %21
    i32 152, label %27
    i32 151, label %27
    i32 141, label %27
    i32 129, label %27
    i32 147, label %27
    i32 135, label %27
    i32 145, label %27
    i32 133, label %27
    i32 143, label %27
    i32 131, label %27
    i32 148, label %27
    i32 149, label %27
    i32 139, label %45
    i32 137, label %45
    i32 153, label %61
    i32 150, label %61
    i32 140, label %61
    i32 128, label %61
    i32 146, label %61
    i32 134, label %61
    i32 144, label %61
    i32 132, label %61
    i32 142, label %61
    i32 130, label %61
    i32 136, label %61
    i32 138, label %61
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %21
  br label %86

27:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %5, align 4
  br label %87

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @NVP_VALUE(i32* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @i_get_value_size(i32 %36, i32* null, i32 1)
  %38 = sext i32 %37 to i64
  %39 = call i32 @bcopy(i64 %34, i8* %35, i64 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32*, i32** %8, align 8
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %32
  br label %86

45:                                               ; preds = %19, %19
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %87

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @NVP_VALUE(i32* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %9, align 8
  %55 = bitcast i8* %54 to i8**
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32*, i32** %8, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %50
  br label %86

61:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %62 = load i32*, i32** %8, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %5, align 4
  br label %87

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @NVP_NELEM(i32* %70)
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @NVP_VALUE(i32* %75)
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8*, i8** %9, align 8
  %79 = bitcast i8* %78 to i8**
  store i8* %77, i8** %79, align 8
  br label %83

80:                                               ; preds = %69
  %81 = load i8*, i8** %9, align 8
  %82 = bitcast i8* %81 to i8**
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  br label %86

84:                                               ; preds = %19
  %85 = load i32, i32* @ENOTSUP, align 4
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %83, %60, %44, %26
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %84, %67, %48, %30, %17
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @bcopy(i64, i8*, i64) #1

declare dso_local i64 @NVP_VALUE(i32*) #1

declare dso_local i32 @i_get_value_size(i32, i32*, i32) #1

declare dso_local i32 @NVP_NELEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
