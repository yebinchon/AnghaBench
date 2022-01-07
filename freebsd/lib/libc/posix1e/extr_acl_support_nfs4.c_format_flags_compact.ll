; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_format_flags_compact.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_format_flags_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flagnames_struct = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, %struct.flagnames_struct*)* @format_flags_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_flags_compact(i8* %0, i64 %1, i32 %2, %struct.flagnames_struct* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flagnames_struct*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.flagnames_struct* %3, %struct.flagnames_struct** %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %46, %4
  %11 = load %struct.flagnames_struct*, %struct.flagnames_struct** %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %11, i64 %12
  %14 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.flagnames_struct*, %struct.flagnames_struct** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %24, i64 %25
  %27 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 45, i8* %35, align 1
  br label %45

36:                                               ; preds = %18
  %37 = load %struct.flagnames_struct*, %struct.flagnames_struct** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %37, i64 %38
  %40 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %36, %32
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %10

49:                                               ; preds = %10
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
