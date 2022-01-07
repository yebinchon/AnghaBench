; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_movx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_instruction_emul.c_emulate_movx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@gpr_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, i32 (i8*, i32, i32, i32*, i32, i8*)*, i32, i8*)* @emulate_movx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_movx(i8* %0, i32 %1, i32 %2, %struct.vie* %3, i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 %5, i8* %6) #0 {
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
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.vie* %3, %struct.vie** %12, align 8
  store i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %20 = load %struct.vie*, %struct.vie** %12, align 8
  %21 = getelementptr inbounds %struct.vie, %struct.vie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.vie*, %struct.vie** %12, align 8
  %25 = getelementptr inbounds %struct.vie, %struct.vie* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %101 [
    i32 182, label %28
    i32 183, label %52
    i32 190, label %77
  ]

28:                                               ; preds = %7
  %29 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 %29(i8* %30, i32 %31, i32 %32, i32* %19, i32 1, i8* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %102

38:                                               ; preds = %28
  %39 = load i32*, i32** @gpr_map, align 8
  %40 = load %struct.vie*, %struct.vie** %12, align 8
  %41 = getelementptr inbounds %struct.vie, %struct.vie* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %19, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @vie_update_register(i8* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  br label %102

52:                                               ; preds = %7
  %53 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 %53(i8* %54, i32 %55, i32 %56, i32* %19, i32 2, i8* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %8, align 4
  br label %104

63:                                               ; preds = %52
  %64 = load i32*, i32** @gpr_map, align 8
  %65 = load %struct.vie*, %struct.vie** %12, align 8
  %66 = getelementptr inbounds %struct.vie, %struct.vie* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %19, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @vie_update_register(i8* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %16, align 4
  br label %102

77:                                               ; preds = %7
  %78 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %13, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 %78(i8* %79, i32 %80, i32 %81, i32* %19, i32 1, i8* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %102

87:                                               ; preds = %77
  %88 = load i32*, i32** @gpr_map, align 8
  %89 = load %struct.vie*, %struct.vie** %12, align 8
  %90 = getelementptr inbounds %struct.vie, %struct.vie* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  store i32 %94, i32* %19, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @vie_update_register(i8* %95, i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %16, align 4
  br label %102

101:                                              ; preds = %7
  br label %102

102:                                              ; preds = %101, %87, %86, %63, %38, %37
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %61
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @vie_update_register(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
