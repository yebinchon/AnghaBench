; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_guid_tbl_compile.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_guid_tbl_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@efi_guid_tbl_compile.done = internal global i32 0, align 4
@guid_tbl = common dso_local global %struct.TYPE_3__* null, align 8
@uuid_s_ok = common dso_local global i64 0, align 8
@uuid_s_bad_version = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't convert %s to a uuid for %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @efi_guid_tbl_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_guid_tbl_compile() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @efi_guid_tbl_compile.done, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %50

6:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %46, %6
  %8 = load i64, i64* %1, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %10 = call i64 @nitems(%struct.TYPE_3__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = call i32 @uuid_from_string(i8* %17, i32* %21, i64* %2)
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @uuid_s_ok, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %12
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @uuid_s_bad_version, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid_tbl, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %2, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %30, %26, %12
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %1, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %1, align 8
  br label %7

49:                                               ; preds = %7
  store i32 1, i32* @efi_guid_tbl_compile.done, align 4
  br label %50

50:                                               ; preds = %49, %5
  ret void
}

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @uuid_from_string(i8*, i32*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
