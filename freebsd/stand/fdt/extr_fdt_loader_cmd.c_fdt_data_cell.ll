; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_data_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_data_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%08x%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @fdt_data_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_data_cell(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %21, 1
  %23 = mul nsw i32 %22, 1
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %27, 2
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 3
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %87

42:                                               ; preds = %26
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  br label %87

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %77, %48
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %10, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fdt32_to_cpu(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 4
  %70 = icmp slt i32 %67, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %72)
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @strcat(i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 4
  store i32 %79, i32* %12, align 4
  br label %53

80:                                               ; preds = %53
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strcat(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8*, i8** %8, align 8
  %84 = load i8**, i8*** %7, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @free(i8* %85)
  store i32 0, i32* %4, align 4
  br label %88

87:                                               ; preds = %45, %41
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %80
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
