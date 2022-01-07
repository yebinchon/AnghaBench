; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/cgd/extr_t_cgd_aes.c_write_testvec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/cgd/extr_t_cgd_aes.c_write_testvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testvec = type { i32, i32 }

@SECSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.testvec*)* @write_testvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_testvec(i32 %0, %struct.testvec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.testvec*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.testvec* %1, %struct.testvec** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.testvec*, %struct.testvec** %5, align 8
  %9 = getelementptr inbounds %struct.testvec, %struct.testvec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SECSIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i64 @rump_sys_lseek(i32 %7, i32 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.testvec*, %struct.testvec** %5, align 8
  %20 = getelementptr inbounds %struct.testvec, %struct.testvec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SECSIZE, align 4
  %23 = call i32 @rump_sys_write(i32 %18, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SECSIZE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EDOM, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %26, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @rump_sys_lseek(i32, i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
