; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_bios_smap_xattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_bios_smap_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_smap_xattr = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"S_bios_smap_xattr %zu is not a multiple of %zu\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\0ASMAP type=%02x, xattr=%02x, base=%016jx, len=%016jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @S_bios_smap_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @S_bios_smap_xattr(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bios_smap_xattr*, align 8
  %7 = alloca %struct.bios_smap_xattr*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = urem i64 %8, 24
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %12, i32 24)
  store i32 1, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = bitcast i8* %17 to %struct.bios_smap_xattr*
  store %struct.bios_smap_xattr* %18, %struct.bios_smap_xattr** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.bios_smap_xattr*
  store %struct.bios_smap_xattr* %20, %struct.bios_smap_xattr** %6, align 8
  br label %21

21:                                               ; preds = %41, %14
  %22 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %6, align 8
  %23 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %7, align 8
  %24 = icmp ult %struct.bios_smap_xattr* %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %6, align 8
  %27 = getelementptr inbounds %struct.bios_smap_xattr, %struct.bios_smap_xattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %6, align 8
  %30 = getelementptr inbounds %struct.bios_smap_xattr, %struct.bios_smap_xattr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %6, align 8
  %33 = getelementptr inbounds %struct.bios_smap_xattr, %struct.bios_smap_xattr* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %6, align 8
  %37 = getelementptr inbounds %struct.bios_smap_xattr, %struct.bios_smap_xattr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %25
  %42 = load %struct.bios_smap_xattr*, %struct.bios_smap_xattr** %6, align 8
  %43 = getelementptr inbounds %struct.bios_smap_xattr, %struct.bios_smap_xattr* %42, i32 1
  store %struct.bios_smap_xattr* %43, %struct.bios_smap_xattr** %6, align 8
  br label %21

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @warnx(i8*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
