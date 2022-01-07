; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_ofwfdt.c_ofwfdt_fixups.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_ofwfdt.c_ofwfdt_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/rtas\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rtas-size\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"instantiate-rtas\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"linux,rtas-entry\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"linux,rtas-base\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"/memory@0\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ofwfdt_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofwfdt_fixups(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [255 x i8], align 16
  %12 = alloca [5 x i8*], align 16
  %13 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @fdt_path_offset(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %22 = call i32 @OF_package_to_path(i32 %20, i8* %21, i32 255)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @OF_getprop(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32 4)
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @OF_claim(i32 0, i32 %25, i32 4096)
  store i8* %26, i8** %10, align 8
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %28 = call i64 @OF_open(i8* %27)
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @OF_call_method(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %29, i32 1, i32 1, i32 %31, i32* %9)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @cpu_to_fdt32(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @fdt_setprop(i8* %35, i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %9, i32 4)
  %38 = load i8*, i8** %10, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = call i32 @cpu_to_fdt32(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @fdt_path_offset(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %3, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @fdt_setprop(i8* %43, i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %9, i32 4)
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @fdt_add_mem_rsv(i8* %46, i32 %47, i32 %48)
  br label %60

50:                                               ; preds = %1
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @fdt_path_offset(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @fdt_delprop(i8* %56, i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %18
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @fdt_path_offset(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %136

65:                                               ; preds = %60
  %66 = bitcast [5 x i8*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %66, i8 0, i64 40, i1 false)
  %67 = bitcast i8* %66 to [5 x i8*]*
  %68 = getelementptr inbounds [5 x i8*], [5 x i8*]* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8** %68, align 16
  %69 = getelementptr inbounds [5 x i8*], [5 x i8*]* %67, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8** %69, align 8
  %70 = getelementptr inbounds [5 x i8*], [5 x i8*]* %67, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8** %70, align 16
  %71 = getelementptr inbounds [5 x i8*], [5 x i8*]* %67, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8** %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %132, %65
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %135

78:                                               ; preds = %72
  %79 = load i8*, i8** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32* @fdt_getprop(i8* %79, i32 %80, i8* %84, i32* %4)
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %129

88:                                               ; preds = %78
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %129

92:                                               ; preds = %88
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fdt32_to_cpu(i32 %94)
  %96 = call i32 @OF_instance_to_package(i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @OF_hasprop(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @OF_getprop(i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %6, i32 4)
  br label %119

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @OF_hasprop(i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @OF_getprop(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32* %6, i32 4)
  br label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  %112 = call i64 @OF_hasprop(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @OF_getprop(i32 %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32* %6, i32 4)
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %107
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @cpu_to_fdt32(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i8*, i8** %2, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @fdt_setprop(i8* %122, i32 %123, i8* %127, i32* %6, i32 4)
  br label %129

129:                                              ; preds = %119, %88, %78
  %130 = load i8*, i8** %2, align 8
  %131 = call i32 @fdt_path_offset(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %72

135:                                              ; preds = %72
  br label %136

136:                                              ; preds = %135, %60
  ret void
}

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_package_to_path(i32, i8*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @OF_claim(i32, i32, i32) #1

declare dso_local i64 @OF_open(i8*) #1

declare dso_local i32 @OF_call_method(i8*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @fdt_setprop(i8*, i32, i8*, i32*, i32) #1

declare dso_local i32 @fdt_add_mem_rsv(i8*, i32, i32) #1

declare dso_local i32 @fdt_delprop(i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @OF_instance_to_package(i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
