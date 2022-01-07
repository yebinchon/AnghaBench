; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_data_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_data_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\22%s\22%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8**)* @fdt_data_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_data_str(i8* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %13, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %19, %4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %84

42:                                               ; preds = %28
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  br label %84

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %75, %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @strcat(i8* %69, i8* %70)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %51
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %51, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %10, align 8
  %81 = load i8**, i8*** %9, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @free(i8* %82)
  store i32 0, i32* %5, align 4
  br label %85

84:                                               ; preds = %45, %41
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
