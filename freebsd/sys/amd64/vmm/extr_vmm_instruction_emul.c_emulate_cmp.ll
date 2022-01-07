; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@gpr_map = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@RFLAGS_STATUS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, i32 (i8*, i32, i32, i32*, i32, i8*)*, i32, i8*)* @emulate_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_cmp(i8* %0, i32 %1, i32 %2, %struct.vie* %3, i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 %5, i8* %6) #0 {
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
  %24 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.vie* %3, %struct.vie** %12, align 8
  store i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %25 = load %struct.vie*, %struct.vie** %12, align 8
  %26 = getelementptr inbounds %struct.vie, %struct.vie* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load %struct.vie*, %struct.vie** %12, align 8
  %29 = getelementptr inbounds %struct.vie, %struct.vie* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %102 [
    i32 57, label %32
    i32 59, label %32
    i32 128, label %76
    i32 129, label %76
    i32 131, label %76
  ]

32:                                               ; preds = %7, %7
  %33 = load i32*, i32** @gpr_map, align 8
  %34 = load %struct.vie*, %struct.vie** %12, align 8
  %35 = getelementptr inbounds %struct.vie, %struct.vie* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %24, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %24, align 4
  %42 = call i32 @vie_read_register(i8* %39, i32 %40, i32 %41, i32* %18)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %129

47:                                               ; preds = %32
  %48 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 %48(i8* %49, i32 %50, i32 %51, i32* %19, i32 %52, i8* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %8, align 4
  br label %129

59:                                               ; preds = %47
  %60 = load %struct.vie*, %struct.vie** %12, align 8
  %61 = getelementptr inbounds %struct.vie, %struct.vie* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 59
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %19, align 4
  store i32 %67, i32* %21, align 4
  br label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %19, align 4
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %21, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @getcc(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %23, align 4
  br label %104

76:                                               ; preds = %7, %7, %7
  %77 = load %struct.vie*, %struct.vie** %12, align 8
  %78 = getelementptr inbounds %struct.vie, %struct.vie* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %17, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 %84(i8* %85, i32 %86, i32 %87, i32* %20, i32 %88, i8* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %8, align 4
  br label %129

95:                                               ; preds = %83
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load %struct.vie*, %struct.vie** %12, align 8
  %99 = getelementptr inbounds %struct.vie, %struct.vie* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @getcc(i32 %96, i32 %97, i32 %100)
  store i32 %101, i32* %23, align 4
  br label %104

102:                                              ; preds = %7
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %8, align 4
  br label %129

104:                                              ; preds = %95, %71
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %108 = call i32 @vie_read_register(i8* %105, i32 %106, i32 %107, i32* %22)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %8, align 4
  br label %129

113:                                              ; preds = %104
  %114 = load i32, i32* @RFLAGS_STATUS_BITS, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %22, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* @RFLAGS_STATUS_BITS, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %22, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %22, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %126 = load i32, i32* %22, align 4
  %127 = call i32 @vie_update_register(i8* %123, i32 %124, i32 %125, i32 %126, i32 8)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %113, %111, %102, %93, %57, %45
  %130 = load i32, i32* %8, align 4
  ret i32 %130
}

declare dso_local i32 @vie_read_register(i8*, i32, i32, i32*) #1

declare dso_local i32 @getcc(i32, i32, i32) #1

declare dso_local i32 @vie_update_register(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
