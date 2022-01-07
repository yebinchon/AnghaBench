; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_data_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_data_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @fdt_data_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_data_bytes(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = mul nsw i32 %19, 1
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 3
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @malloc(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %82

39:                                               ; preds = %23
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  br label %82

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %72, %45
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 signext %61, i8* %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strcat(i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strcat(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i8*, i8** %8, align 8
  %79 = load i8**, i8*** %7, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @free(i8* %80)
  store i32 0, i32* %4, align 4
  br label %83

82:                                               ; preds = %42, %38
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
