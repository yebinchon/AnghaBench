; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_set_ctlreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_set_ctlreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@MSR_VMX_BASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"invalid zero/one setting for bit %d of ctl 0x%0x, truectl 0x%0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"vmx_set_ctlreg: unable to determine correct value of ctl bit %d for msr 0x%0x and true msr 0x%0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmx_set_ctlreg(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = xor i32 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %181

27:                                               ; preds = %5
  %28 = load i32, i32* @MSR_VMX_BASIC, align 4
  %29 = call i64 @rdmsr(i32 %28)
  %30 = and i64 %29, 36028797018963968
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @rdmsr(i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @rdmsr(i32 %38)
  store i64 %39, i64* %14, align 8
  br label %42

40:                                               ; preds = %27
  %41 = load i64, i64* %13, align 8
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %40, %37
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %177, %42
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %180

46:                                               ; preds = %43
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @vmx_ctl_allows_one_setting(i64 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @vmx_ctl_allows_zero_setting(i64 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %46
  %59 = phi i1 [ true, %46 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %60, i8* %65)
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %58
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %6, align 4
  br label %181

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %176

87:                                               ; preds = %69, %58
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %6, align 4
  br label %181

101:                                              ; preds = %93
  %102 = load i32, i32* %12, align 4
  %103 = shl i32 1, %102
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %175

107:                                              ; preds = %90, %87
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = shl i32 1, %114
  %116 = xor i32 %115, -1
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %174

120:                                              ; preds = %107
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = shl i32 1, %122
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 1, %127
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %173

132:                                              ; preds = %120
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = shl i32 1, %136
  %138 = xor i32 %137, -1
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %138
  store i32 %141, i32* %139, align 4
  br label %172

142:                                              ; preds = %132
  %143 = load i64, i64* %13, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @vmx_ctl_allows_zero_setting(i64 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i32, i32* %12, align 4
  %149 = shl i32 1, %148
  %150 = xor i32 %149, -1
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %171

154:                                              ; preds = %142
  %155 = load i64, i64* %13, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @vmx_ctl_allows_one_setting(i64 %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* %12, align 4
  %161 = shl i32 1, %160
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %170

165:                                              ; preds = %154
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @panic(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %159
  br label %171

171:                                              ; preds = %170, %147
  br label %172

172:                                              ; preds = %171, %135
  br label %173

173:                                              ; preds = %172, %126
  br label %174

174:                                              ; preds = %173, %113
  br label %175

175:                                              ; preds = %174, %101
  br label %176

176:                                              ; preds = %175, %80
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %43

180:                                              ; preds = %43
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %99, %78, %25
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i64 @rdmsr(i32) #1

declare dso_local i32 @vmx_ctl_allows_one_setting(i64, i32) #1

declare dso_local i32 @vmx_ctl_allows_zero_setting(i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
