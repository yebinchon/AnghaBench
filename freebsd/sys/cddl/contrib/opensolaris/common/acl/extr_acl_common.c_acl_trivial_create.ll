; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_acl_trivial_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_acl_trivial_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }

@ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@ACE_ACCESS_DENIED_ACE_TYPE = common dso_local global i32 0, align 4
@ACE_GROUP = common dso_local global i32 0, align 4
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_trivial_create(i32 %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 3, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @acl_trivial_access_masks(i32 %14, i32 %15, %struct.TYPE_3__* %12)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32**, i32*** %8, align 8
  %42 = bitcast i32** %41 to i8**
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @cacl_malloc(i8** %42, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %114

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %62 = load i32, i32* @ACE_OWNER, align 4
  %63 = call i32 @SET_ACE(i32** %57, i32 %58, i32 -1, i64 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %52
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @ACE_ACCESS_DENIED_ACE_TYPE, align 4
  %74 = load i32, i32* @ACE_OWNER, align 4
  %75 = call i32 @SET_ACE(i32** %69, i32 %70, i32 -1, i64 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32**, i32*** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @ACE_ACCESS_DENIED_ACE_TYPE, align 4
  %86 = load i32, i32* @ACE_GROUP, align 4
  %87 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @SET_ACE(i32** %81, i32 %82, i32 -1, i64 %84, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %80, %76
  %91 = load i32**, i32*** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %96 = load i32, i32* @ACE_OWNER, align 4
  %97 = call i32 @SET_ACE(i32** %91, i32 %92, i32 -1, i64 %94, i32 %95, i32 %96)
  %98 = load i32**, i32*** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %103 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %104 = load i32, i32* @ACE_GROUP, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @SET_ACE(i32** %98, i32 %99, i32 -1, i64 %101, i32 %102, i32 %105)
  %107 = load i32**, i32*** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %112 = load i32, i32* @ACE_EVERYONE, align 4
  %113 = call i32 @SET_ACE(i32** %107, i32 %108, i32 -1, i64 %110, i32 %111, i32 %112)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %90, %50
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @acl_trivial_access_masks(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cacl_malloc(i8**, i32) #1

declare dso_local i32 @SET_ACE(i32**, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
