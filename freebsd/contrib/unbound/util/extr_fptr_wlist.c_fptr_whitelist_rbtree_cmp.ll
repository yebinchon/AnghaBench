; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_rbtree_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_rbtree_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fptr_whitelist_rbtree_cmp(i32 (i8*, i8*)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32 (i8*, i8*)*, align 8
  store i32 (i8*, i8*)* %0, i32 (i8*, i8*)** %3, align 8
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %5 = icmp eq i32 (i8*, i8*)* %4, @mesh_state_compare
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %123

7:                                                ; preds = %1
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %9 = icmp eq i32 (i8*, i8*)* %8, @mesh_state_ref_compare
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %123

11:                                               ; preds = %7
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %13 = icmp eq i32 (i8*, i8*)* %12, @addr_tree_compare
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %123

15:                                               ; preds = %11
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %17 = icmp eq i32 (i8*, i8*)* %16, @local_zone_cmp
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %123

19:                                               ; preds = %15
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %21 = icmp eq i32 (i8*, i8*)* %20, @local_data_cmp
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %123

23:                                               ; preds = %19
  %24 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %25 = icmp eq i32 (i8*, i8*)* %24, @fwd_cmp
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %123

27:                                               ; preds = %23
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %29 = icmp eq i32 (i8*, i8*)* %28, @pending_cmp
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %123

31:                                               ; preds = %27
  %32 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %33 = icmp eq i32 (i8*, i8*)* %32, @serviced_cmp
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %123

35:                                               ; preds = %31
  %36 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %37 = icmp eq i32 (i8*, i8*)* %36, @name_tree_compare
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %123

39:                                               ; preds = %35
  %40 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %41 = icmp eq i32 (i8*, i8*)* %40, @order_lock_cmp
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %123

43:                                               ; preds = %39
  %44 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %45 = icmp eq i32 (i8*, i8*)* %44, @codeline_cmp
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %123

47:                                               ; preds = %43
  %48 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %49 = icmp eq i32 (i8*, i8*)* %48, @nsec3_hash_cmp
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %123

51:                                               ; preds = %47
  %52 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %53 = icmp eq i32 (i8*, i8*)* %52, @mini_ev_cmp
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %123

55:                                               ; preds = %51
  %56 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %57 = icmp eq i32 (i8*, i8*)* %56, @anchor_cmp
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %123

59:                                               ; preds = %55
  %60 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %61 = icmp eq i32 (i8*, i8*)* %60, @canonical_tree_compare
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %123

63:                                               ; preds = %59
  %64 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %65 = icmp eq i32 (i8*, i8*)* %64, @context_query_cmp
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %123

67:                                               ; preds = %63
  %68 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %69 = icmp eq i32 (i8*, i8*)* %68, @val_neg_data_compare
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %123

71:                                               ; preds = %67
  %72 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %73 = icmp eq i32 (i8*, i8*)* %72, @val_neg_zone_compare
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %123

75:                                               ; preds = %71
  %76 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %77 = icmp eq i32 (i8*, i8*)* %76, @probetree_cmp
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %2, align 4
  br label %123

79:                                               ; preds = %75
  %80 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %81 = icmp eq i32 (i8*, i8*)* %80, @replay_var_compare
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %2, align 4
  br label %123

83:                                               ; preds = %79
  %84 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %85 = icmp eq i32 (i8*, i8*)* %84, @view_cmp
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %2, align 4
  br label %123

87:                                               ; preds = %83
  %88 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %89 = icmp eq i32 (i8*, i8*)* %88, @auth_zone_cmp
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %2, align 4
  br label %123

91:                                               ; preds = %87
  %92 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %93 = icmp eq i32 (i8*, i8*)* %92, @auth_data_cmp
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  br label %123

95:                                               ; preds = %91
  %96 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %97 = icmp eq i32 (i8*, i8*)* %96, @auth_xfer_cmp
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %2, align 4
  br label %123

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @mesh_state_compare(i8*, i8*) #1

declare dso_local i32 @mesh_state_ref_compare(i8*, i8*) #1

declare dso_local i32 @addr_tree_compare(i8*, i8*) #1

declare dso_local i32 @local_zone_cmp(i8*, i8*) #1

declare dso_local i32 @local_data_cmp(i8*, i8*) #1

declare dso_local i32 @fwd_cmp(i8*, i8*) #1

declare dso_local i32 @pending_cmp(i8*, i8*) #1

declare dso_local i32 @serviced_cmp(i8*, i8*) #1

declare dso_local i32 @name_tree_compare(i8*, i8*) #1

declare dso_local i32 @order_lock_cmp(i8*, i8*) #1

declare dso_local i32 @codeline_cmp(i8*, i8*) #1

declare dso_local i32 @nsec3_hash_cmp(i8*, i8*) #1

declare dso_local i32 @mini_ev_cmp(i8*, i8*) #1

declare dso_local i32 @anchor_cmp(i8*, i8*) #1

declare dso_local i32 @canonical_tree_compare(i8*, i8*) #1

declare dso_local i32 @context_query_cmp(i8*, i8*) #1

declare dso_local i32 @val_neg_data_compare(i8*, i8*) #1

declare dso_local i32 @val_neg_zone_compare(i8*, i8*) #1

declare dso_local i32 @probetree_cmp(i8*, i8*) #1

declare dso_local i32 @replay_var_compare(i8*, i8*) #1

declare dso_local i32 @view_cmp(i8*, i8*) #1

declare dso_local i32 @auth_zone_cmp(i8*, i8*) #1

declare dso_local i32 @auth_data_cmp(i8*, i8*) #1

declare dso_local i32 @auth_xfer_cmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
