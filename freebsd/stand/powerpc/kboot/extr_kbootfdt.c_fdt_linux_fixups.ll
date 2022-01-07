; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_kbootfdt.c_fdt_linux_fixups.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_kbootfdt.c_fdt_linux_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/memory@0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/ibm,opal\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"opal-base-address\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"opal-runtime-size\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/rtas\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"linux,rtas-base\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"rtas-size\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"linux,stdout-package\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fdt_linux_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdt_linux_fixups(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @fdt_path_offset(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @fdt_delprop(i8* %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @fdt_path_offset(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i8* @fdt_getprop(i8* %24, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @fdt_getprop(i8* %28, i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %2, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fdt64_to_cpu(i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fdt64_to_cpu(i32 %43)
  %45 = call i32 @fdt_add_mem_rsv(i8* %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %34, %23
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @fdt_path_offset(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i8* @fdt_getprop(i8* %53, i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %4)
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %8, align 8
  %57 = load i8*, i8** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i8* @fdt_getprop(i8* %57, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %4)
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %52
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i8*, i8** %2, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fdt32_to_cpu(i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fdt32_to_cpu(i32 %72)
  %74 = call i32 @fdt_add_mem_rsv(i8* %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %63, %52
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @fdt_path_offset(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %76
  %82 = load i8*, i8** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @fdt_delprop(i8* %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @fdt_path_offset(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %86, i32* %3, align 4
  %87 = load i8*, i8** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i8* @fdt_getprop(i8* %87, i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* %4)
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %81
  %93 = load i8*, i8** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @fdt_setprop(i8* %93, i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load i8*, i8** %2, align 8
  %99 = call i32 @fdt_path_offset(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %99, i32* %3, align 4
  %100 = load i8*, i8** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @fdt_setprop(i8* %100, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %102, i32 %103)
  br label %105

105:                                              ; preds = %92, %81
  br label %106

106:                                              ; preds = %105, %76
  ret void
}

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @fdt_delprop(i8*, i32, i8*) #1

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @fdt_add_mem_rsv(i8*, i32, i32) #1

declare dso_local i32 @fdt64_to_cpu(i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @fdt_setprop(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
