; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_strip.c__posix1e_acl_strip_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_strip.c__posix1e_acl_strip_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_BRAND_POSIX = common dso_local global i64 0, align 8
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@ACL_UNDEFINED_TAG = common dso_local global i32 0, align 4
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @_posix1e_acl_strip_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_posix1e_acl_strip_np(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @_acl_brand(i32* %13)
  %15 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @acl_dup(i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %104

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @_acl_brand(i32* %25)
  %27 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %32 = call i32* @acl_init(i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @acl_free(i32* %36)
  store i32* null, i32** %3, align 8
  br label %104

38:                                               ; preds = %24
  %39 = load i32, i32* @ACL_UNDEFINED_TAG, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %79, %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @acl_get_entry(i32* %42, i32 %43, i32* %8)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %80

46:                                               ; preds = %41
  %47 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @_entry_brand(i32 %48)
  %50 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @acl_get_tag_type(i32 %54, i32* %10)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %99

58:                                               ; preds = %46
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %78 [
    i32 128, label %60
    i32 131, label %60
    i32 129, label %60
    i32 130, label %77
  ]

60:                                               ; preds = %58, %58, %58
  %61 = call i32 @acl_create_entry(i32** %6, i32* %9)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %99

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @acl_copy_entry(i32 %65, i32 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %99

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @_entry_brand(i32 %71)
  %73 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %79

77:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %79

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %77, %70
  br label %41

80:                                               ; preds = %41
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @_acl_brand(i32* %81)
  %83 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = call i32 @acl_calc_mask(i32** %6)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %99

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %89, %80
  %98 = load i32*, i32** %6, align 8
  store i32* %98, i32** %3, align 8
  br label %104

99:                                               ; preds = %95, %69, %63, %57
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @acl_free(i32* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @acl_free(i32* %102)
  store i32* null, i32** %3, align 8
  br label %104

104:                                              ; preds = %99, %97, %35, %23
  %105 = load i32*, i32** %3, align 8
  ret i32* %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_acl_brand(i32*) #1

declare dso_local i32* @acl_dup(i32*) #1

declare dso_local i32* @acl_init(i32) #1

declare dso_local i32 @acl_free(i32*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32*) #1

declare dso_local i64 @_entry_brand(i32) #1

declare dso_local i32 @acl_get_tag_type(i32, i32*) #1

declare dso_local i32 @acl_create_entry(i32**, i32*) #1

declare dso_local i32 @acl_copy_entry(i32, i32) #1

declare dso_local i32 @acl_calc_mask(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
