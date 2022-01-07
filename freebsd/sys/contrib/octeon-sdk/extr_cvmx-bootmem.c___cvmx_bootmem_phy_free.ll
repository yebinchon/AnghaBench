; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c___cvmx_bootmem_phy_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c___cvmx_bootmem_phy_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@head_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_bootmem_phy_free(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = call i64 @__cvmx_bootmem_check_version(i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %180

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %180

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @__cvmx_bootmem_lock(i32 %19)
  %21 = load i32, i32* @head_addr, align 4
  %22 = call i64 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25, %18
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %176

39:                                               ; preds = %32, %29
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @cvmx_bootmem_phy_get_next(i64 %47)
  %49 = call i32 @cvmx_bootmem_phy_set_next(i64 %46, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @cvmx_bootmem_phy_get_size(i64 %51)
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @cvmx_bootmem_phy_set_size(i64 %50, i64 %54)
  %56 = load i32, i32* @head_addr, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %56, i64 %57)
  br label %69

59:                                               ; preds = %39
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @cvmx_bootmem_phy_set_next(i64 %60, i64 %61)
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @cvmx_bootmem_phy_set_size(i64 %63, i64 %64)
  %66 = load i32, i32* @head_addr, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %59, %45
  br label %70

70:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %176

71:                                               ; preds = %25
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp sgt i64 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @cvmx_bootmem_phy_get_next(i64 %83)
  store i64 %84, i64* %8, align 8
  br label %72

85:                                               ; preds = %79
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @cvmx_bootmem_phy_get_size(i64 %90)
  %92 = add nsw i64 %89, %91
  %93 = load i64, i64* %5, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @cvmx_bootmem_phy_get_size(i64 %97)
  %99 = load i64, i64* %6, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @cvmx_bootmem_phy_set_size(i64 %96, i64 %100)
  br label %111

102:                                              ; preds = %88
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @cvmx_bootmem_phy_set_next(i64 %103, i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @cvmx_bootmem_phy_set_size(i64 %106, i64 %107)
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @cvmx_bootmem_phy_set_next(i64 %109, i64 0)
  br label %111

111:                                              ; preds = %102, %95
  store i32 1, i32* %10, align 4
  br label %176

112:                                              ; preds = %85
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @cvmx_bootmem_phy_get_size(i64 %114)
  %116 = add nsw i64 %113, %115
  %117 = load i64, i64* %5, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %112
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @cvmx_bootmem_phy_get_size(i64 %121)
  %123 = load i64, i64* %6, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @cvmx_bootmem_phy_set_size(i64 %120, i64 %124)
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = add nsw i64 %126, %127
  %129 = load i64, i64* %8, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %119
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i64 @cvmx_bootmem_phy_get_size(i64 %133)
  %135 = load i64, i64* %9, align 8
  %136 = call i64 @cvmx_bootmem_phy_get_size(i64 %135)
  %137 = add nsw i64 %134, %136
  %138 = call i32 @cvmx_bootmem_phy_set_size(i64 %132, i64 %137)
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i64 @cvmx_bootmem_phy_get_next(i64 %140)
  %142 = call i32 @cvmx_bootmem_phy_set_next(i64 %139, i64 %141)
  br label %143

143:                                              ; preds = %131, %119
  store i32 1, i32* %10, align 4
  br label %176

144:                                              ; preds = %112
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* %6, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i64, i64* %8, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %144
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* %8, align 8
  %153 = call i64 @cvmx_bootmem_phy_get_size(i64 %152)
  %154 = load i64, i64* %6, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @cvmx_bootmem_phy_set_size(i64 %151, i64 %155)
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i64 @cvmx_bootmem_phy_get_next(i64 %158)
  %160 = call i32 @cvmx_bootmem_phy_set_next(i64 %157, i64 %159)
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @cvmx_bootmem_phy_set_next(i64 %161, i64 %162)
  store i32 1, i32* %10, align 4
  br label %176

164:                                              ; preds = %144
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @cvmx_bootmem_phy_set_size(i64 %166, i64 %167)
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @cvmx_bootmem_phy_set_next(i64 %169, i64 %170)
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %5, align 8
  %174 = call i32 @cvmx_bootmem_phy_set_next(i64 %172, i64 %173)
  br label %175

175:                                              ; preds = %165
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %150, %143, %111, %70, %38
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @__cvmx_bootmem_unlock(i32 %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %17, %13
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @__cvmx_bootmem_check_version(i32) #1

declare dso_local i32 @__cvmx_bootmem_lock(i32) #1

declare dso_local i64 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_next(i64, i64) #1

declare dso_local i64 @cvmx_bootmem_phy_get_next(i64) #1

declare dso_local i32 @cvmx_bootmem_phy_set_size(i64, i64) #1

declare dso_local i64 @cvmx_bootmem_phy_get_size(i64) #1

declare dso_local i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32, i64) #1

declare dso_local i32 @__cvmx_bootmem_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
