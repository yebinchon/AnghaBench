; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_format_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_format_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flagnames_struct = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.flagnames_struct*)* @format_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_flag(i32* %0, %struct.flagnames_struct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.flagnames_struct*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.flagnames_struct* %1, %struct.flagnames_struct** %5, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.flagnames_struct*, %struct.flagnames_struct** %5, align 8
  %8 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = load %struct.flagnames_struct*, %struct.flagnames_struct** %5, align 8
  %13 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.flagnames_struct*, %struct.flagnames_struct** %5, align 8
  %22 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = xor i32 %23, -1
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load %struct.flagnames_struct*, %struct.flagnames_struct** %5, align 8
  %29 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.flagnames_struct*, %struct.flagnames_struct** %5, align 8
  %33 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %32, i32 1
  store %struct.flagnames_struct* %33, %struct.flagnames_struct** %5, align 8
  br label %6

34:                                               ; preds = %6
  store i8* null, i8** %3, align 8
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
