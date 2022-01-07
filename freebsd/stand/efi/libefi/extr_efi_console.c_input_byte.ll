; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_input_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_input_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_left = common dso_local global i32 0, align 4
@utf8_partial = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @input_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 (...) @input_partial()
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @efi_term_emu(i32 %11)
  br label %134

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 224
  %16 = icmp eq i32 %15, 192
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 (...) @input_partial()
  store i32 1, i32* @utf8_left, align 4
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* @utf8_partial, align 4
  br label %134

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 240
  %23 = icmp eq i32 %22, 224
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 (...) @input_partial()
  store i32 2, i32* @utf8_left, align 4
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* @utf8_partial, align 4
  br label %134

27:                                               ; preds = %20
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, 248
  %30 = icmp eq i32 %29, 240
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 (...) @input_partial()
  store i32 3, i32* @utf8_left, align 4
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* @utf8_partial, align 4
  br label %134

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 192
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %130

38:                                               ; preds = %34
  %39 = load i32, i32* @utf8_left, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @efi_term_emu(i32 %42)
  br label %134

44:                                               ; preds = %38
  %45 = load i32, i32* @utf8_left, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @utf8_left, align 4
  %47 = load i32, i32* @utf8_partial, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %2, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* @utf8_partial, align 4
  %51 = load i32, i32* @utf8_left, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %129

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  %54 = load i32, i32* @utf8_partial, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 255
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 7
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 255
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %3, align 4
  %67 = shl i32 %66, 6
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 63
  %70 = or i32 %67, %69
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 255
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = shl i32 %74, 6
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 63
  %78 = or i32 %75, %77
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, 255
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %3, align 4
  %82 = shl i32 %81, 6
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 63
  %85 = or i32 %82, %84
  store i32 %85, i32* %3, align 4
  br label %126

86:                                               ; preds = %53
  %87 = load i32, i32* %4, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 255
  store i32 %89, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 15
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %3, align 4
  %98 = shl i32 %97, 6
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 63
  %101 = or i32 %98, %100
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 255
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %3, align 4
  %105 = shl i32 %104, 6
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 63
  %108 = or i32 %105, %107
  store i32 %108, i32* %3, align 4
  br label %125

109:                                              ; preds = %86
  %110 = load i32, i32* %4, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  store i32 %112, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, 31
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = and i32 %117, 255
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %3, align 4
  %120 = shl i32 %119, 6
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 63
  %123 = or i32 %120, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %114, %109
  br label %125

125:                                              ; preds = %124, %91
  br label %126

126:                                              ; preds = %125, %60
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @efi_cons_efiputchar(i32 %127)
  store i32 0, i32* @utf8_partial, align 4
  br label %129

129:                                              ; preds = %126, %44
  br label %134

130:                                              ; preds = %34
  %131 = call i32 (...) @input_partial()
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @efi_term_emu(i32 %132)
  br label %134

134:                                              ; preds = %130, %129, %41, %31, %24, %17, %9
  ret void
}

declare dso_local i32 @input_partial(...) #1

declare dso_local i32 @efi_term_emu(i32) #1

declare dso_local i32 @efi_cons_efiputchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
