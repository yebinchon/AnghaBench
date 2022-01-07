; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_msr_bitmap_change_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_msr_bitmap_change_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@MSR_BITMAP_ACCESS_READ = common dso_local global i32 0, align 4
@MSR_BITMAP_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msr_bitmap_change_access(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 8191
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %8, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp uge i32 %16, -1073741824
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp ule i32 %19, -1073733633
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %22, -1073741824
  %24 = udiv i32 %23, 8
  %25 = add i32 1024, %24
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %18, %15
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %90

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MSR_BITMAP_ACCESS_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, %39
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  br label %59

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 1, %49
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = or i32 %56, %50
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

59:                                               ; preds = %48, %36
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 2048
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MSR_BITMAP_ACCESS_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = and i32 %75, %69
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  br label %89

78:                                               ; preds = %59
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 1, %79
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = or i32 %86, %80
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %84, align 1
  br label %89

89:                                               ; preds = %78, %66
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %26
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
