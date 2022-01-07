; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_mode_to_ace_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_mode_to_ace_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IWOTH = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@ACE_READ_ACL = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32)* @mode_to_ace_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_to_ace_access(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @S_IWOTH, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @S_IROTH, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @S_IWOTH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @S_IROTH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %21, %14
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @access_mask_set(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load i32, i32* @ACE_READ_ACL, align 4
  %44 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @ACE_WRITE_ACL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %42
  br label %63

55:                                               ; preds = %34
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @ACE_WRITE_ACL, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @S_IROTH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @ACE_READ_DATA, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @S_IWOTH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32, i32* @ACE_WRITE_DATA, align 4
  %79 = load i32, i32* @ACE_APPEND_DATA, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %77
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @S_IXOTH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @ACE_EXECUTE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @access_mask_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
