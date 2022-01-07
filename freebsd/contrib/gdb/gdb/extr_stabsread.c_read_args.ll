; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { %struct.type* }
%struct.type = type { i32 }
%struct.objfile = type { i32 }

@TYPE_CODE_VOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field* (i8**, i32, %struct.objfile*, i32*, i32*)* @read_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field* @read_args(i8** %0, i32 %1, %struct.objfile* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.field*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1024 x %struct.type*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.field*, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.objfile* %2, %struct.objfile** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %30, %5
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 44
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.field* inttoptr (i64 -1 to %struct.field*), %struct.field** %6, align 8
  br label %96

30:                                               ; preds = %23
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load i8**, i8*** %7, align 8
  %35 = load %struct.objfile*, %struct.objfile** %9, align 8
  %36 = call i32 @STABS_CONTINUE(i8** %34, %struct.objfile* %35)
  %37 = load i8**, i8*** %7, align 8
  %38 = load %struct.objfile*, %struct.objfile** %9, align 8
  %39 = call %struct.type* @read_type(i8** %37, %struct.objfile* %38)
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [1024 x %struct.type*], [1024 x %struct.type*]* %12, i64 0, i64 %42
  store %struct.type* %39, %struct.type** %43, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %45, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1024 x %struct.type*], [1024 x %struct.type*]* %12, i64 0, i64 %50
  %52 = load %struct.type*, %struct.type** %51, align 8
  %53 = call i64 @TYPE_CODE(%struct.type* %52)
  %54 = load i64, i64* @TYPE_CODE_VOID, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32*, i32** %11, align 8
  store i32 1, i32* %57, align 4
  br label %62

58:                                               ; preds = %44
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %13, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %56
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @xmalloc(i32 %66)
  %68 = inttoptr i64 %67 to %struct.field*
  store %struct.field* %68, %struct.field** %15, align 8
  %69 = load %struct.field*, %struct.field** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(%struct.field* %69, i32 0, i32 %73)
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %89, %62
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [1024 x %struct.type*], [1024 x %struct.type*]* %12, i64 0, i64 %81
  %83 = load %struct.type*, %struct.type** %82, align 8
  %84 = load %struct.field*, %struct.field** %15, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.field, %struct.field* %84, i64 %86
  %88 = getelementptr inbounds %struct.field, %struct.field* %87, i32 0, i32 0
  store %struct.type* %83, %struct.type** %88, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %75

92:                                               ; preds = %75
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.field*, %struct.field** %15, align 8
  store %struct.field* %95, %struct.field** %6, align 8
  br label %96

96:                                               ; preds = %92, %29
  %97 = load %struct.field*, %struct.field** %6, align 8
  ret %struct.field* %97
}

declare dso_local i32 @STABS_CONTINUE(i8**, %struct.objfile*) #1

declare dso_local %struct.type* @read_type(i8**, %struct.objfile*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.field*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
