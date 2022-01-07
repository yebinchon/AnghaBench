; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_append_user_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_append_user_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdb_user_regs = type { %struct.user_reg** }
%struct.user_reg = type { i8*, %struct.user_reg*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdb_user_regs*, i8*, i32*, %struct.user_reg*)* @append_user_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_user_reg(%struct.gdb_user_regs* %0, i8* %1, i32* %2, %struct.user_reg* %3) #0 {
  %5 = alloca %struct.gdb_user_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.user_reg*, align 8
  store %struct.gdb_user_regs* %0, %struct.gdb_user_regs** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.user_reg* %3, %struct.user_reg** %8, align 8
  %9 = load %struct.user_reg*, %struct.user_reg** %8, align 8
  %10 = icmp ne %struct.user_reg* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.user_reg*, %struct.user_reg** %8, align 8
  %15 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.user_reg*, %struct.user_reg** %8, align 8
  %18 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.user_reg*, %struct.user_reg** %8, align 8
  %20 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %19, i32 0, i32 1
  store %struct.user_reg* null, %struct.user_reg** %20, align 8
  %21 = load %struct.user_reg*, %struct.user_reg** %8, align 8
  %22 = load %struct.gdb_user_regs*, %struct.gdb_user_regs** %5, align 8
  %23 = getelementptr inbounds %struct.gdb_user_regs, %struct.gdb_user_regs* %22, i32 0, i32 0
  %24 = load %struct.user_reg**, %struct.user_reg*** %23, align 8
  store %struct.user_reg* %21, %struct.user_reg** %24, align 8
  %25 = load %struct.gdb_user_regs*, %struct.gdb_user_regs** %5, align 8
  %26 = getelementptr inbounds %struct.gdb_user_regs, %struct.gdb_user_regs* %25, i32 0, i32 0
  %27 = load %struct.user_reg**, %struct.user_reg*** %26, align 8
  %28 = load %struct.user_reg*, %struct.user_reg** %27, align 8
  %29 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %28, i32 0, i32 1
  %30 = load %struct.gdb_user_regs*, %struct.gdb_user_regs** %5, align 8
  %31 = getelementptr inbounds %struct.gdb_user_regs, %struct.gdb_user_regs* %30, i32 0, i32 0
  store %struct.user_reg** %29, %struct.user_reg*** %31, align 8
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
