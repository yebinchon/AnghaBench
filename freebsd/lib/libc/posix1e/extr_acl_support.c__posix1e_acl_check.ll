; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.acl }
%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i32, i32, i32 }

@ACL_PERM_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_posix1e_acl_check(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.acl*, align 8
  %5 = alloca %struct.acl_entry*, align 8
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 128, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.acl* %17, %struct.acl** %4, align 8
  br label %18

18:                                               ; preds = %122, %1
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.acl*, %struct.acl** %4, align 8
  %21 = getelementptr inbounds %struct.acl, %struct.acl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %125

24:                                               ; preds = %18
  %25 = load %struct.acl*, %struct.acl** %4, align 8
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 1
  %27 = load %struct.acl_entry*, %struct.acl_entry** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %27, i64 %29
  store %struct.acl_entry* %30, %struct.acl_entry** %5, align 8
  %31 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %32 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ACL_PERM_BITS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ACL_PERM_BITS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %2, align 4
  br label %149

40:                                               ; preds = %24
  %41 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %42 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %120 [
    i32 128, label %44
    i32 129, label %52
    i32 132, label %74
    i32 133, label %82
    i32 131, label %104
    i32 130, label %112
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 128
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %2, align 4
  br label %149

49:                                               ; preds = %44
  store i32 129, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %122

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 129
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %2, align 4
  br label %149

57:                                               ; preds = %52
  store i32 129, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %62 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %2, align 4
  br label %149

68:                                               ; preds = %60, %57
  %69 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %70 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %122

74:                                               ; preds = %40
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 132
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %2, align 4
  br label %149

79:                                               ; preds = %74
  store i32 133, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %122

82:                                               ; preds = %40
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 133
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %2, align 4
  br label %149

87:                                               ; preds = %82
  store i32 133, i32* %8, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %92 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %2, align 4
  br label %149

98:                                               ; preds = %90, %87
  %99 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %100 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %122

104:                                              ; preds = %40
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %105, 131
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %2, align 4
  br label %149

109:                                              ; preds = %104
  store i32 131, i32* %8, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %122

112:                                              ; preds = %40
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 130
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %2, align 4
  br label %149

117:                                              ; preds = %112
  store i32 130, i32* %8, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %122

120:                                              ; preds = %40
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %2, align 4
  br label %149

122:                                              ; preds = %117, %109, %98, %79, %68, %49
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %18

125:                                              ; preds = %18
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %2, align 4
  br label %149

130:                                              ; preds = %125
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %2, align 4
  br label %149

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @EINVAL, align 4
  store i32 %142, i32* %2, align 4
  br label %149

143:                                              ; preds = %138, %135
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %2, align 4
  br label %149

148:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %146, %141, %133, %128, %120, %115, %107, %96, %85, %77, %66, %55, %47, %38
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
