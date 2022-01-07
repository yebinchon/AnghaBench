; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@RFLAGS_STATUS_BITS = common dso_local global i32 0, align 4
@PSL_PF = common dso_local global i32 0, align 4
@PSL_Z = common dso_local global i32 0, align 4
@PSL_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, i32 (i8*, i32, i32, i32*, i32, i8*)*, i32, i8*)* @emulate_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_test(i8* %0, i32 %1, i32 %2, %struct.vie* %3, i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 %5, i8* %6) #0 {
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
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.vie* %3, %struct.vie** %12, align 8
  store i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %21 = load %struct.vie*, %struct.vie** %12, align 8
  %22 = getelementptr inbounds %struct.vie, %struct.vie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.vie*, %struct.vie** %12, align 8
  %26 = getelementptr inbounds %struct.vie, %struct.vie* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %56 [
    i32 247, label %29
  ]

29:                                               ; preds = %7
  %30 = load %struct.vie*, %struct.vie** %12, align 8
  %31 = getelementptr inbounds %struct.vie, %struct.vie* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 7
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %8, align 4
  br label %87

37:                                               ; preds = %29
  %38 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 %38(i8* %39, i32 %40, i32 %41, i32* %18, i32 %42, i8* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %8, align 4
  br label %87

49:                                               ; preds = %37
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load %struct.vie*, %struct.vie** %12, align 8
  %53 = getelementptr inbounds %struct.vie, %struct.vie* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @getandflags(i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %20, align 4
  br label %58

56:                                               ; preds = %7
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %8, align 4
  br label %87

58:                                               ; preds = %49
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %62 = call i32 @vie_read_register(i8* %59, i32 %60, i32 %61, i32* %19)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %8, align 4
  br label %87

67:                                               ; preds = %58
  %68 = load i32, i32* @RFLAGS_STATUS_BITS, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %19, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* @PSL_PF, align 4
  %74 = load i32, i32* @PSL_Z, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PSL_N, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %72, %77
  %79 = load i32, i32* %19, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %19, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @vie_update_register(i8* %81, i32 %82, i32 %83, i32 %84, i32 8)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %67, %65, %56, %47, %35
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @getandflags(i32, i32, i32) #1

declare dso_local i32 @vie_read_register(i8*, i32, i32, i32*) #1

declare dso_local i32 @vie_update_register(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
