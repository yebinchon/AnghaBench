; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@gpr_map = common dso_local global i32* null, align 8
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@RFLAGS_STATUS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, i32 (i8*, i32, i32, i32*, i32, i8*)*, i32, i8*)* @emulate_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_add(i8* %0, i32 %1, i32 %2, %struct.vie* %3, i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vie*, align 8
  %13 = alloca i32 (i8*, i32, i32, i32*, i32, i8*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.vie* %3, %struct.vie** %12, align 8
  store i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %24 = load %struct.vie*, %struct.vie** %12, align 8
  %25 = getelementptr inbounds %struct.vie, %struct.vie* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.vie*, %struct.vie** %12, align 8
  %29 = getelementptr inbounds %struct.vie, %struct.vie* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %67 [
    i32 3, label %32
  ]

32:                                               ; preds = %7
  %33 = load i32*, i32** @gpr_map, align 8
  %34 = load %struct.vie*, %struct.vie** %12, align 8
  %35 = getelementptr inbounds %struct.vie, %struct.vie* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %23, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %23, align 4
  %42 = call i32 @vie_read_register(i8* %39, i32 %40, i32 %41, i32* %21)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %68

46:                                               ; preds = %32
  %47 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 %47(i8* %48, i32 %49, i32 %50, i32* %22, i32 %51, i8* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %68

57:                                               ; preds = %46
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %22, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %18, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @vie_update_register(i8* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  br label %68

67:                                               ; preds = %7
  br label %68

68:                                               ; preds = %67, %57, %56, %45
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %22, align 4
  %75 = call i32 @getaddflags(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %79 = call i32 @vie_read_register(i8* %76, i32 %77, i32 %78, i32* %19)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %8, align 4
  br label %101

84:                                               ; preds = %71
  %85 = load i32, i32* @RFLAGS_STATUS_BITS, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* @RFLAGS_STATUS_BITS, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %19, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %19, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @vie_update_register(i8* %94, i32 %95, i32 %96, i32 %97, i32 8)
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %84, %68
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %82
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @vie_read_register(i8*, i32, i32, i32*) #1

declare dso_local i32 @vie_update_register(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @getaddflags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
