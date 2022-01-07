; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_move_descriptor_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_move_descriptor_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@NV_TYPE_DESCRIPTOR_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_move_descriptor_array(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = call i32 @ERRNO_SET(i32 %16)
  store i32* null, i32** %4, align 8
  br label %86

18:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @fd_is_valid(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EBADF, align 4
  %38 = call i32 @ERRNO_SET(i32 %37)
  br label %59

39:                                               ; preds = %29, %23
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @NV_TYPE_DESCRIPTOR_ARRAY, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = ptrtoint i32* %46 to i64
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %7, align 8
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %7, align 8
  %53 = call i32* @nvpair_allocv(i8* %44, i32 %45, i32 %48, i32 %51, i64 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %59

57:                                               ; preds = %43
  %58 = load i32*, i32** %8, align 8
  store i32* %58, i32** %4, align 8
  br label %86

59:                                               ; preds = %56, %36
  %60 = call i32 (...) @ERRNO_SAVE()
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %79, %59
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @fd_is_valid(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %72, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %61

82:                                               ; preds = %61
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @nv_free(i32* %83)
  %85 = call i32 (...) @ERRNO_RESTORE()
  store i32* null, i32** %4, align 8
  br label %86

86:                                               ; preds = %82, %57, %15
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i64 @fd_is_valid(i32) #1

declare dso_local i32* @nvpair_allocv(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ERRNO_SAVE(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @nv_free(i32*) #1

declare dso_local i32 @ERRNO_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
