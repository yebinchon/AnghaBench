; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_descriptor_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_descriptor_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@NV_TYPE_DESCRIPTOR_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_create_descriptor_array(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = call i32 @ERRNO_SET(i32 %14)
  store i32* null, i32** %4, align 8
  br label %111

16:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32* @nv_malloc(i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32* null, i32** %4, align 8
  br label %111

24:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 -1, i32* %41, align 4
  br label %62

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %49 = call i32 @fcntl(i32 %47, i32 %48, i32 0)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %77

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @NV_TYPE_DESCRIPTOR_ARRAY, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = ptrtoint i32* %69 to i64
  %71 = trunc i64 %70 to i32
  %72 = load i64, i64* %7, align 8
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %7, align 8
  %76 = call i32* @nvpair_allocv(i8* %67, i32 %68, i32 %71, i32 %74, i64 %75)
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %66, %60
  %78 = load i32*, i32** %9, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = call i32 (...) @ERRNO_SAVE()
  br label %82

82:                                               ; preds = %102, %80
  %83 = load i32, i32* %8, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %93, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, -1
  store i32 %104, i32* %8, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @nv_free(i32* %106)
  %108 = call i32 (...) @ERRNO_RESTORE()
  br label %109

109:                                              ; preds = %105, %77
  %110 = load i32*, i32** %9, align 8
  store i32* %110, i32** %4, align 8
  br label %111

111:                                              ; preds = %109, %23, %13
  %112 = load i32*, i32** %4, align 8
  ret i32* %112
}

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i32* @nv_malloc(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

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
