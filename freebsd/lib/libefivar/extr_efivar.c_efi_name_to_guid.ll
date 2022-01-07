; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_name_to_guid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_name_to_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@guid_tbl = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_name_to_guid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 (...) @efi_guid_tbl_compile()
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %11 = call i64 @nitems(%struct.TYPE_3__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i8* %14, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %37

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @efi_str_to_guid(i8* %34, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @efi_guid_tbl_compile(...) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @efi_str_to_guid(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
