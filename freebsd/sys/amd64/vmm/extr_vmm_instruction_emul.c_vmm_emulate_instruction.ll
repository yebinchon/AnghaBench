; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_vmm_emulate_instruction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_vmm_emulate_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vm_guest_paging = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmm_emulate_instruction(i8* %0, i32 %1, i32 %2, %struct.vie* %3, %struct.vm_guest_paging* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vie*, align 8
  %14 = alloca %struct.vm_guest_paging*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.vie* %3, %struct.vie** %13, align 8
  store %struct.vm_guest_paging* %4, %struct.vm_guest_paging** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load %struct.vie*, %struct.vie** %13, align 8
  %20 = getelementptr inbounds %struct.vie, %struct.vie* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %9, align 4
  br label %174

25:                                               ; preds = %8
  %26 = load %struct.vie*, %struct.vie** %13, align 8
  %27 = getelementptr inbounds %struct.vie, %struct.vie* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %170 [
    i32 139, label %30
    i32 133, label %40
    i32 132, label %50
    i32 140, label %60
    i32 138, label %69
    i32 136, label %78
    i32 135, label %78
    i32 137, label %87
    i32 131, label %97
    i32 142, label %107
    i32 134, label %116
    i32 130, label %125
    i32 141, label %134
    i32 128, label %143
    i32 143, label %152
    i32 129, label %161
  ]

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.vie*, %struct.vie** %13, align 8
  %35 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i8*, i8** %17, align 8
  %39 = call i32 @emulate_group1(i8* %31, i32 %32, i32 %33, %struct.vie* %34, %struct.vm_guest_paging* %35, i32 %36, i32 %37, i8* %38)
  store i32 %39, i32* %18, align 4
  br label %172

40:                                               ; preds = %25
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vie*, %struct.vie** %13, align 8
  %45 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @emulate_pop(i8* %41, i32 %42, i32 %43, %struct.vie* %44, %struct.vm_guest_paging* %45, i32 %46, i32 %47, i8* %48)
  store i32 %49, i32* %18, align 4
  br label %172

50:                                               ; preds = %25
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.vie*, %struct.vie** %13, align 8
  %55 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @emulate_push(i8* %51, i32 %52, i32 %53, %struct.vie* %54, %struct.vm_guest_paging* %55, i32 %56, i32 %57, i8* %58)
  store i32 %59, i32* %18, align 4
  br label %172

60:                                               ; preds = %25
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.vie*, %struct.vie** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 @emulate_cmp(i8* %61, i32 %62, i32 %63, %struct.vie* %64, i32 %65, i32 %66, i8* %67)
  store i32 %68, i32* %18, align 4
  br label %172

69:                                               ; preds = %25
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.vie*, %struct.vie** %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 @emulate_mov(i8* %70, i32 %71, i32 %72, %struct.vie* %73, i32 %74, i32 %75, i8* %76)
  store i32 %77, i32* %18, align 4
  br label %172

78:                                               ; preds = %25, %25
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.vie*, %struct.vie** %13, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @emulate_movx(i8* %79, i32 %80, i32 %81, %struct.vie* %82, i32 %83, i32 %84, i8* %85)
  store i32 %86, i32* %18, align 4
  br label %172

87:                                               ; preds = %25
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.vie*, %struct.vie** %13, align 8
  %92 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @emulate_movs(i8* %88, i32 %89, i32 %90, %struct.vie* %91, %struct.vm_guest_paging* %92, i32 %93, i32 %94, i8* %95)
  store i32 %96, i32* %18, align 4
  br label %172

97:                                               ; preds = %25
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.vie*, %struct.vie** %13, align 8
  %102 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @emulate_stos(i8* %98, i32 %99, i32 %100, %struct.vie* %101, %struct.vm_guest_paging* %102, i32 %103, i32 %104, i8* %105)
  store i32 %106, i32* %18, align 4
  br label %172

107:                                              ; preds = %25
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.vie*, %struct.vie** %13, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i8*, i8** %17, align 8
  %115 = call i32 @emulate_and(i8* %108, i32 %109, i32 %110, %struct.vie* %111, i32 %112, i32 %113, i8* %114)
  store i32 %115, i32* %18, align 4
  br label %172

116:                                              ; preds = %25
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.vie*, %struct.vie** %13, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @emulate_or(i8* %117, i32 %118, i32 %119, %struct.vie* %120, i32 %121, i32 %122, i8* %123)
  store i32 %124, i32* %18, align 4
  br label %172

125:                                              ; preds = %25
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.vie*, %struct.vie** %13, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i8*, i8** %17, align 8
  %133 = call i32 @emulate_sub(i8* %126, i32 %127, i32 %128, %struct.vie* %129, i32 %130, i32 %131, i8* %132)
  store i32 %133, i32* %18, align 4
  br label %172

134:                                              ; preds = %25
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.vie*, %struct.vie** %13, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i8*, i8** %17, align 8
  %142 = call i32 @emulate_bittest(i8* %135, i32 %136, i32 %137, %struct.vie* %138, i32 %139, i32 %140, i8* %141)
  store i32 %142, i32* %18, align 4
  br label %172

143:                                              ; preds = %25
  %144 = load i8*, i8** %10, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.vie*, %struct.vie** %13, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i8*, i8** %17, align 8
  %151 = call i32 @emulate_twob_group15(i8* %144, i32 %145, i32 %146, %struct.vie* %147, i32 %148, i32 %149, i8* %150)
  store i32 %151, i32* %18, align 4
  br label %172

152:                                              ; preds = %25
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.vie*, %struct.vie** %13, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @emulate_add(i8* %153, i32 %154, i32 %155, %struct.vie* %156, i32 %157, i32 %158, i8* %159)
  store i32 %160, i32* %18, align 4
  br label %172

161:                                              ; preds = %25
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.vie*, %struct.vie** %13, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i8*, i8** %17, align 8
  %169 = call i32 @emulate_test(i8* %162, i32 %163, i32 %164, %struct.vie* %165, i32 %166, i32 %167, i8* %168)
  store i32 %169, i32* %18, align 4
  br label %172

170:                                              ; preds = %25
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %170, %161, %152, %143, %134, %125, %116, %107, %97, %87, %78, %69, %60, %50, %40, %30
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %23
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local i32 @emulate_group1(i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*) #1

declare dso_local i32 @emulate_pop(i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*) #1

declare dso_local i32 @emulate_push(i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*) #1

declare dso_local i32 @emulate_cmp(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_mov(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_movx(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_movs(i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*) #1

declare dso_local i32 @emulate_stos(i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*) #1

declare dso_local i32 @emulate_and(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_or(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_sub(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_bittest(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_twob_group15(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_add(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

declare dso_local i32 @emulate_test(i8*, i32, i32, %struct.vie*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
