; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_ro.c_fdt_getprop_by_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_ro.c_fdt_getprop_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_getprop_by_offset(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fdt_property*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = call %struct.fdt_property* @fdt_get_property_by_offset_(i8* %11, i32 %12, i32* %13)
  store %struct.fdt_property* %14, %struct.fdt_property** %10, align 8
  %15 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %16 = icmp ne %struct.fdt_property* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %54

18:                                               ; preds = %4
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %24 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fdt32_to_cpu(i32 %25)
  %27 = call i8* @fdt_string(i8* %22, i32 %26)
  %28 = load i8**, i8*** %8, align 8
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @fdt_version(i8* %30)
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 16
  %37 = urem i64 %36, 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %41 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @fdt32_to_cpu(i32 %42)
  %44 = icmp sge i32 %43, 8
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %47 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr i8, i8* %48, i64 4
  store i8* %49, i8** %5, align 8
  br label %54

50:                                               ; preds = %39, %33, %29
  %51 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %52 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %50, %45, %17
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

declare dso_local %struct.fdt_property* @fdt_get_property_by_offset_(i8*, i32, i32*) #1

declare dso_local i8* @fdt_string(i8*, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @fdt_version(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
