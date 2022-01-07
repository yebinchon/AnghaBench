; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_ofwfdt.c_add_node_to_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_ofwfdt.c_add_node_to_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Cannot allocate memory for prop %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error %d adding property %s to node %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Error %d adding node %s (%s), skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @add_node_to_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_node_to_fdt(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [255 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %11, align 8
  br label %15

15:                                               ; preds = %63, %3
  %16 = load i64, i64* %5, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %19 = call i64 @OF_nextprop(i64 %16, i8* %17, i8* %18)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %24 = call i32 @OF_getproplen(i64 %22, i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 1024
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1024, i32* %14, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %14, align 4
  %34 = call i8* @malloc(i32 %33)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %112

40:                                               ; preds = %32
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @OF_getprop(i64 %41, i8* %42, i8* %43, i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %49 = load i8*, i8** %13, align 8
  %50 = bitcast i8* %49 to i64*
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @fdt_setprop(i8* %46, i32 %47, i8* %48, i64* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @free(i8* %53)
  %55 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  store i8* %55, i8** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %40
  br label %15

64:                                               ; preds = %15
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @OF_hasprop(i64 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @OF_hasprop(i64 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @OF_hasprop(i64 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @fdt_setprop(i8* %77, i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %5, i32 8)
  br label %80

80:                                               ; preds = %76, %72, %68, %64
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @OF_child(i64 %81)
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %109, %80
  %84 = load i64, i64* %5, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %89 = call i32 @OF_package_to_path(i64 %87, i8* %88, i32 255)
  %90 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %91 = call i8* @strrchr(i8* %90, i8 signext 47)
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @fdt_add_subnode(i8* %94, i32 %95, i8* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %86
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %101, i8* %102, i8* %103)
  br label %109

105:                                              ; preds = %86
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i32, i32* %8, align 4
  call void @add_node_to_fdt(i8* %106, i64 %107, i32 %108)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @OF_peer(i64 %110)
  store i64 %111, i64* %5, align 8
  br label %83

112:                                              ; preds = %37, %83
  ret void
}

declare dso_local i64 @OF_nextprop(i64, i8*, i8*) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i32 @fdt_setprop(i8*, i32, i8*, i64*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_package_to_path(i64, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fdt_add_subnode(i8*, i32, i8*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
