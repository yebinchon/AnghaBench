; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba.c_dba_macro_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba.c_dba_macro_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba = type { i32, i32 }
%struct.macro_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dba_macro_new(%struct.dba* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.dba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.macro_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dba* %0, %struct.dba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  store i32* %12, i32** %10, align 8
  br label %13

13:                                               ; preds = %20, %4
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %10, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.dba*, %struct.dba** %5, align 8
  %25 = getelementptr inbounds %struct.dba, %struct.dba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dba_array_get(i32 %26, i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.macro_entry* @get_macro_entry(i32 %28, i8* %29, i32 %30)
  store %struct.macro_entry* %31, %struct.macro_entry** %9, align 8
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %10, align 8
  br label %33

33:                                               ; preds = %54, %23
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.macro_entry*, %struct.macro_entry** %9, align 8
  %39 = getelementptr inbounds %struct.macro_entry, %struct.macro_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dba*, %struct.dba** %5, align 8
  %42 = getelementptr inbounds %struct.dba, %struct.dba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32toh(i32 %45)
  %47 = sdiv i32 %46, 5
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = sub i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i32 @dba_array_get(i32 %43, i32 %51)
  %53 = call i32 @dba_array_add(i32 %40, i32 %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %10, align 8
  br label %33

57:                                               ; preds = %33
  ret void
}

declare dso_local %struct.macro_entry* @get_macro_entry(i32, i8*, i32) #1

declare dso_local i32 @dba_array_get(i32, i32) #1

declare dso_local i32 @dba_array_add(i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
