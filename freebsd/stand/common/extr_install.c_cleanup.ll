; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst_kernel = common dso_local global i32****** null, align 8
@inst_modules = common dso_local global i32****** null, align 8
@inst_rootfs = common dso_local global i32****** null, align 8
@inst_loader_rc = common dso_local global i32****** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = alloca i64, align 8
  %2 = load i32******, i32******* @inst_kernel, align 8
  %3 = icmp ne i32****** %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32******, i32******* @inst_kernel, align 8
  %6 = call i32 @free(i32****** %5)
  store i32****** null, i32******* @inst_kernel, align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32******, i32******* @inst_modules, align 8
  %9 = icmp ne i32****** %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  store i64 0, i64* %1, align 8
  br label %11

11:                                               ; preds = %17, %10
  %12 = load i32******, i32******* @inst_modules, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i32*****, i32****** %12, i64 %13
  %15 = load i32*****, i32****** %14, align 8
  %16 = icmp ne i32***** %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32******, i32******* @inst_modules, align 8
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %1, align 8
  %21 = getelementptr inbounds i32*****, i32****** %18, i64 %19
  %22 = load i32*****, i32****** %21, align 8
  %23 = bitcast i32***** %22 to i32******
  %24 = call i32 @free(i32****** %23)
  br label %11

25:                                               ; preds = %11
  %26 = load i32******, i32******* @inst_modules, align 8
  %27 = call i32 @free(i32****** %26)
  store i32****** null, i32******* @inst_modules, align 8
  br label %28

28:                                               ; preds = %25, %7
  %29 = load i32******, i32******* @inst_rootfs, align 8
  %30 = icmp ne i32****** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32******, i32******* @inst_rootfs, align 8
  %33 = call i32 @free(i32****** %32)
  store i32****** null, i32******* @inst_rootfs, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32******, i32******* @inst_loader_rc, align 8
  %36 = icmp ne i32****** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32******, i32******* @inst_loader_rc, align 8
  %39 = call i32 @free(i32****** %38)
  store i32****** null, i32******* @inst_loader_rc, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 (...) @pkgfs_cleanup()
  ret void
}

declare dso_local i32 @free(i32******) #1

declare dso_local i32 @pkgfs_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
