; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_convert_aent_to_ace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_convert_aent_to_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@cmp2acls = common dso_local global i32 0, align 4
@ACL_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32**, i32*)* @convert_aent_to_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_aent_to_ace(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = ptrtoint %struct.TYPE_4__* %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @cmp2acls, align 4
  %27 = call i32 @ksort(i32 %24, i32 %25, i32 4, i32 %26)
  store i32 0, i32* %19, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %18, align 8
  br label %29

29:                                               ; preds = %42, %5
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ACL_DEFAULT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %47

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %18, align 8
  %45 = load i32, i32* %19, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %19, align 4
  br label %29

47:                                               ; preds = %40, %29
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %19, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %6, align 4
  br label %150

64:                                               ; preds = %59, %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ln_aent_to_ace(%struct.TYPE_4__* %65, i32 %66, i32** %12, i32* %14, i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %20, align 4
  store i32 %72, i32* %6, align 4
  br label %150

73:                                               ; preds = %64
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ln_aent_to_ace(%struct.TYPE_4__* %80, i32 %81, i32** %13, i32* %15, i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %76
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @cacl_free(i32* %90, i32 %94)
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %20, align 4
  store i32 %97, i32* %6, align 4
  br label %150

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %21, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 4, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %22, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %22, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32* @cacl_realloc(i32* %111, i32 %112, i32 %115)
  store i32* %116, i32** %12, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %102
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %6, align 4
  br label %150

121:                                              ; preds = %102
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @memcpy(i32* %128, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %121
  br label %133

133:                                              ; preds = %132, %99
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i32 @cacl_free(i32* %137, i32 %141)
  br label %143

143:                                              ; preds = %136, %133
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32*, i32** %11, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %12, align 8
  %149 = load i32**, i32*** %10, align 8
  store i32* %148, i32** %149, align 8
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %143, %119, %96, %71, %62
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @ksort(i32, i32, i32, i32) #1

declare dso_local i32 @ln_aent_to_ace(%struct.TYPE_4__*, i32, i32**, i32*, i32) #1

declare dso_local i32 @cacl_free(i32*, i32) #1

declare dso_local i32* @cacl_realloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
