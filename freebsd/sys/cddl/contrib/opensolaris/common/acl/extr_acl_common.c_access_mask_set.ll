; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_access_mask_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_access_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_SYNCHRONIZE_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_OWNER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_WRITER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_DELETE_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_READ_NAMED_READER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_WRITER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_WRITER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER_SET_DENY = common dso_local global i32 0, align 4
@ACL_DELETE_SET_DENY = common dso_local global i32 0, align 4
@ACL_READ_NAMED_READER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_WRITER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_OWNER_SET_DENY = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@ACE_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @access_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_mask_set(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @ACL_SYNCHRONIZE_SET_ALLOW, align 4
  %18 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_SET_ALLOW, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_SET_DENY, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %4
  %25 = load i32, i32* @ACL_SYNCHRONIZE_SET_ALLOW, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @ACL_WRITE_OWNER_SET_ALLOW, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @ACL_DELETE_SET_ALLOW, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ACL_READ_NAMED_READER_SET_ALLOW, align 4
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ACL_WRITE_NAMED_WRITER_SET_ALLOW, align 4
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_SET_ALLOW, align 4
  store i32 %41, i32* %14, align 4
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_SET_ALLOW, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %47, %40
  br label %78

49:                                               ; preds = %4
  %50 = load i32, i32* @ACL_SYNCHRONIZE_SET_DENY, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @ACL_WRITE_OWNER_SET_DENY, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* @ACL_DELETE_SET_DENY, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @ACL_READ_NAMED_READER_SET_DENY, align 4
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ACL_WRITE_NAMED_WRITER_SET_DENY, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_SET_DENY, align 4
  store i32 %66, i32* %14, align 4
  br label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_SET_DENY, align 4
  store i32 %71, i32* %14, align 4
  br label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %70
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @ACE_DELETE, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %15, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
