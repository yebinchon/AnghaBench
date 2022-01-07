; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_jblocks_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_jblocks_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jblocks = type { i64, i32, %struct.jextent* }
%struct.jextent = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jblocks*, i64, i32)* @jblocks_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jblocks_add(%struct.jblocks* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.jblocks*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jextent*, align 8
  %8 = alloca i32, align 4
  store %struct.jblocks* %0, %struct.jblocks** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %10 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %9, i32 0, i32 2
  %11 = load %struct.jextent*, %struct.jextent** %10, align 8
  %12 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %13 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.jextent, %struct.jextent* %11, i64 %14
  store %struct.jextent* %15, %struct.jextent** %7, align 8
  %16 = load %struct.jextent*, %struct.jextent** %7, align 8
  %17 = getelementptr inbounds %struct.jextent, %struct.jextent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.jextent*, %struct.jextent** %7, align 8
  %23 = getelementptr inbounds %struct.jextent, %struct.jextent* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.jextent*, %struct.jextent** %7, align 8
  %26 = getelementptr inbounds %struct.jextent, %struct.jextent* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %101

27:                                               ; preds = %3
  %28 = load %struct.jextent*, %struct.jextent** %7, align 8
  %29 = getelementptr inbounds %struct.jextent, %struct.jextent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.jextent*, %struct.jextent** %7, align 8
  %32 = getelementptr inbounds %struct.jextent, %struct.jextent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.jextent*, %struct.jextent** %7, align 8
  %41 = getelementptr inbounds %struct.jextent, %struct.jextent* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %101

44:                                               ; preds = %27
  %45 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %46 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %50 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %44
  %55 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %56 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %56, align 8
  %59 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %60 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 16, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.jextent* @errmalloc(i32 %65)
  store %struct.jextent* %66, %struct.jextent** %7, align 8
  %67 = load %struct.jextent*, %struct.jextent** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @bzero(%struct.jextent* %67, i32 %68)
  %70 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %71 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %70, i32 0, i32 2
  %72 = load %struct.jextent*, %struct.jextent** %71, align 8
  %73 = load %struct.jextent*, %struct.jextent** %7, align 8
  %74 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %75 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 16, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @bcopy(%struct.jextent* %72, %struct.jextent* %73, i32 %78)
  %80 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %81 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %80, i32 0, i32 2
  %82 = load %struct.jextent*, %struct.jextent** %81, align 8
  %83 = call i32 @free(%struct.jextent* %82)
  %84 = load %struct.jextent*, %struct.jextent** %7, align 8
  %85 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %86 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %85, i32 0, i32 2
  store %struct.jextent* %84, %struct.jextent** %86, align 8
  br label %87

87:                                               ; preds = %54, %44
  %88 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %89 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %88, i32 0, i32 2
  %90 = load %struct.jextent*, %struct.jextent** %89, align 8
  %91 = load %struct.jblocks*, %struct.jblocks** %4, align 8
  %92 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.jextent, %struct.jextent* %90, i64 %93
  store %struct.jextent* %94, %struct.jextent** %7, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.jextent*, %struct.jextent** %7, align 8
  %97 = getelementptr inbounds %struct.jextent, %struct.jextent* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.jextent*, %struct.jextent** %7, align 8
  %100 = getelementptr inbounds %struct.jextent, %struct.jextent* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %87, %38, %20
  ret void
}

declare dso_local %struct.jextent* @errmalloc(i32) #1

declare dso_local i32 @bzero(%struct.jextent*, i32) #1

declare dso_local i32 @bcopy(%struct.jextent*, %struct.jextent*, i32) #1

declare dso_local i32 @free(%struct.jextent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
