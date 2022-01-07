; ModuleID = '/home/carl/AnghaBench/freebsd/lib/csu/i386/extr_reloc.c_crt1_handle_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/csu/i386/extr_reloc.c_crt1_handle_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @crt1_handle_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crt1_handle_rel(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = call i32 asm sideeffect "\09pushfl\0A\09popl\09%eax\0A\09movl    %eax,%ecx\0A\09xorl    $$0x200000,%eax\0A\09pushl\09%eax\0A\09popfl\0A\09pushfl\0A\09popl    %eax\0A\09xorl    %eax,%ecx\0A\09je\091f\0A\09movl\09$$1,$0\0A\09jmp\092f\0A1:\09movl\09$$0,$0\0A2:\0A", "=r,~{eax},~{ecx},~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %16 = call i32 @do_cpuid(i32 1, i32* %15)
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call i32 @do_cpuid(i32 0, i32* %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp sge i32 %24, 7
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %28 = call i32 @cpuid_count(i32 7, i32 0, i32* %27)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  br label %34

33:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %26
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ELF_R_TYPE(i32 %39)
  switch i32 %40, label %57 [
    i32 128, label %41
  ]

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %3, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32 (i32, i32, i32, i32)*
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 %49(i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** %3, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %36, %41
  ret void
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

declare dso_local i32 @ELF_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 682, i32 700, i32 721, i32 751, i32 785, i32 807, i32 823, i32 840, i32 864, i32 894, i32 910, i32 931, i32 948, i32 971}
