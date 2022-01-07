; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_sun_floating_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_sun_floating_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }

@NF_COMPLEX = common dso_local global i32 0, align 4
@NF_COMPLEX16 = common dso_local global i32 0, align 4
@NF_COMPLEX32 = common dso_local global i32 0, align 4
@TYPE_CODE_COMPLEX = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8**, i32*, %struct.objfile*)* @read_sun_floating_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @read_sun_floating_type(i8** %0, i32* %1, %struct.objfile* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.type*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.objfile* %2, %struct.objfile** %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @read_huge_number(i8** %13, i8 signext 59, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  %19 = load %struct.objfile*, %struct.objfile** %7, align 8
  %20 = call %struct.type* @error_type(i8** %18, %struct.objfile* %19)
  store %struct.type* %20, %struct.type** %4, align 8
  br label %58

21:                                               ; preds = %3
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @read_huge_number(i8** %22, i8 signext 59, i32* %8)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load %struct.objfile*, %struct.objfile** %7, align 8
  %29 = call %struct.type* @error_type(i8** %27, %struct.objfile* %28)
  store %struct.type* %29, %struct.type** %4, align 8
  br label %58

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NF_COMPLEX, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NF_COMPLEX16, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NF_COMPLEX32, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* @TYPE_CODE_COMPLEX, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.objfile*, %struct.objfile** %7, align 8
  %46 = call %struct.type* @init_type(i32 %43, i32 %44, i32 0, i32* null, %struct.objfile* %45)
  store %struct.type* %46, %struct.type** %11, align 8
  %47 = load i32, i32* @TYPE_CODE_FLT, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.objfile*, %struct.objfile** %7, align 8
  %51 = call %struct.type* @init_type(i32 %47, i32 %49, i32 0, i32* null, %struct.objfile* %50)
  store %struct.type* %51, %struct.type** %12, align 8
  %52 = load %struct.type*, %struct.type** %12, align 8
  store %struct.type* %52, %struct.type** %4, align 8
  br label %58

53:                                               ; preds = %38
  %54 = load i32, i32* @TYPE_CODE_FLT, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.objfile*, %struct.objfile** %7, align 8
  %57 = call %struct.type* @init_type(i32 %54, i32 %55, i32 0, i32* null, %struct.objfile* %56)
  store %struct.type* %57, %struct.type** %4, align 8
  br label %58

58:                                               ; preds = %53, %42, %26, %17
  %59 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %59
}

declare dso_local i32 @read_huge_number(i8**, i8 signext, i32*) #1

declare dso_local %struct.type* @error_type(i8**, %struct.objfile*) #1

declare dso_local %struct.type* @init_type(i32, i32, i32, i32*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
